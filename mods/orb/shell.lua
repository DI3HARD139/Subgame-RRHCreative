-- shell

orb.shell = {
   new_env = function(user)
      local home = "/home/" .. user
      -- TODO: protected env: shouldn't be allowed to change USER
      return { PATH = "/bin:" .. home .. "/bin", PROMPT = "${CWD} $ ",
               SHELL = "/bin/smash", CWD = home, HOME = home, USER = user,
      }
   end,

   -- This function does too much: it turns a command string into a tokenized
   -- list of arguments, but it also searches the argument list for stdio
   -- redirects and sets up the environment's read/write appropriately.
   parse = function(f, env, command)
      local args = {}
      local tokens = orb.utils.split(command, " +")
      local executable_name = table.remove(tokens, 1)
      local t = table.remove(tokens, 1)
      while t do
         if(t == "<") then
            env.IN = orb.fs.normalize(tokens[1], env.CWD)
            break
         elseif(t == ">") then
            local target = table.remove(tokens, 1)
            target = orb.fs.normalize(target, env.CWD)
            local dir, base = orb.fs.dirname(target)
            if(type(f[dir][base]) == "string") then f[dir][base] = "" end
            env.OUT = target
            break
         elseif(t == ">>") then
            local target = table.remove(tokens, 1)
            env.OUT = orb.fs.normalize(target, env.CWD)
            break
         -- elseif(t == "|") then
         --    -- TODO: support pipelines of arbitrary length
         --    -- TODO: IN and OUT as buffer tables?
         --    local env2 = orb.utils.shallow_copy(env)
         --    local buffer = {}
         --    env2.read = function()
         --       while #buffer == 0 do coroutine.yield() end
         --       return table.remove(buffer, 1)
         --    end
         --    env.write = function(output)
         --       table.insert(buffer, output)
         --    end
         --    local co = orb.process.spawn(f, env, table.concat(tokens, " "))
         --    break
         else
            table.insert(args, t)
         end
         t = table.remove(tokens, 1)
      end
      return executable_name, args
   end,

   -- Execute a command directly in the current coroutine. This is a low-level
   -- call; usually you want orb.process.spawn which creates it as a proper
   -- process.
   exec = function(f, orig_env, command, extra_sandbox)
      local env = orb.utils.shallow_copy(orig_env)
      local executable_name, args = orb.shell.parse(f, env, command)

      local try_run = function(executable_path)
         if(type(f[executable_path]) == "string") then
            local chunk = assert(loadstring(f[executable_path]))
            setfenv(chunk, orb.shell.sandbox(f, env, extra_sandbox))
            chunk(f, env, args)
            return true
         end
      end

      if(executable_name:match("^/")) then
         if try_run(executable_name) then return end
      else
         for _, d in pairs(orb.utils.split(env.PATH, ":")) do
            local path = orb.fs.normalize(d .."/".. executable_name, env.CWD)
            if try_run(path) then return end
         end
      end
      error(executable_name .. " not found.")
   end,

   -- Like exec, but protected in a pcall.
   pexec = function(f, env, command, extra_sandbox)
      return pcall(function() orb.shell.exec(f, env, command, extra_sandbox) end)
   end,

   -- Set up the sandbox in which code runs. Need to avoid exposing anything
   -- that could allow security leaks.
   sandbox = function(f, env, extra_sandbox)
      local read = function() return orb.fs.read(f, env.IN) end
      local write = function(...) return orb.fs.write(f, env.OUT, ...) end

      local box = { orb = { utils = orb.utils,
                            dirname = orb.fs.dirname,
                            normalize = orb.fs.normalize,
                            mkdir = orb.fs.mkdir,
                            exec = orb.shell.exec,
                            pexec = orb.shell.pexec,
                            read = orb.utils.partial(orb.fs.read, f),
                            write = orb.utils.partial(orb.fs.write, f),
                            append = orb.fs.append,
                            reload = orb.fs.reloaders[f],
                            extra_sandbox = extra_sandbox, },
                    pairs = orb.utils.mtpairs,
                    ipairs = ipairs,
                    unpack = unpack,
                    print = function(...)
                       write(tostring(...)) write("\n") end,
                    coroutine = { yield = coroutine.yield,
                                  status = coroutine.status },
                    io = { write = write, read = read },
                    type = type,
                    table = { concat = table.concat,
                              remove = table.remove,
                              insert = table.insert,
                    },
                  }
      for k,v in pairs(extra_sandbox or {}) do box[k] = v end
      return box
   end,

   groups = function(f, user)
      local dir = f["/etc/groups"]
      local found = {}
      for group,members in orb.utils.mtpairs(dir) do
         if(type(members) == "table" and orb.utils.includes(members, user)) then
            table.insert(found, group)
         end
      end
      return found
   end,

   in_group = function(f, user, group)
      local group_dir = f.etc.groups[group]
      return group_dir and group_dir[user]
   end,

   login = function(f, user, _password)
      -- TODO: check password
      return f.etc.groups[user] and f.home[user]
   end,
}
