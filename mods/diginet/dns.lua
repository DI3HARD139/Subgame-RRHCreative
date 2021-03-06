-- DNS server

diginet.aliases = {}

local formspec = function(entries)
   return "size[8,6.5]" ..
      "field[0.5,1.5;3,1;alias1;alias;" .. (entries.alias1 or "") .."]"..
      "field[4,1.5;3,1;pos1;position;" .. (entries.pos1 or "") .."]"..
      "field[0.5,2.5;3,1;alias2;alias;" .. (entries.alias2 or "")  .."]"..
      "field[4,2.5;3,1;pos2;position;" .. (entries.pos2 or "")  .."]"..
      "field[0.5,3.5;3,1;alias3;alias;" .. (entries.alias3 or "")  .."]"..
      "field[4,3.5;3,1;pos3;position;" .. (entries.pos3 or "")  .."]"..
      "field[0.5,4.5;3,1;alias4;alias;" .. (entries.alias4 or "")  .."]"..
      "field[4,4.5;3,1;pos4;position;" .. (entries.pos4 or "")  .."]" ..
      "button[0.5,5.5;3,1;save;save]"
end

local on_construct = function(pos)
   local meta = minetest.get_meta(pos)
   meta:set_string("formspec", formspec({}))
end

local on_receive_fields = function(pos, _formname, fields, player)
   if(fields.quit) then return end
   local meta = minetest.get_meta(pos)
   meta:set_string("formspec", formspec(fields))

   for k,v in pairs({alias1 = "pos1", alias2 = "pos2", alias3 = "pos3",
                     alias4 = "pos4"}) do
      if(fields[v] == "") then
         print("DNS: clearing " .. fields[k])
         diginet.aliases[fields[k]] = nil
      elseif(fields[v]) then
         print("DNS: setting " .. fields[k] .. " to " .. fields[v])
         diginet.aliases[fields[k]] = fields[v]
      end
   end
end

local set_hostname = function(pos, packet)
   diginet.aliases[packet.alias] = packet.position
end

local aliases_path = minetest.get_worldpath() .. "/diginet_aliases"

local save_aliases = function()
   local file = io.open(aliases_path, "w")
   file:write(minetest.serialize(diginet.aliases))
   file:close()
end

local load_aliases = function()
   print("Loading diginet aliases...")
   local file = io.open(aliases_path, "r")
   local contents = file and file:read("*all")
   if file then file:close() end
   if(file and contents ~= "") then
      for k,v in pairs(minetest.deserialize(contents)) do
         diginet.aliases[k] = v
      end
   else
      return {}
   end
end

minetest.register_node("diginet:dns", {
                          description = "DNS Server",
                          paramtype = "light",
                          paramtype2 = "facedir",
                          walkable = true,
                          tiles = {
                             "diginet_dns_side.png",
                             "diginet_dns_side.png",
                             "diginet_dns_side.png",
                             "diginet_dns_side.png",
                             "diginet_dns_side.png",
                             "diginet_dns_front.png"
                          },
                          diginet = { set_hostname = set_hostname,},
                          groups = { dig_immediate = 2 },
                          on_construct = on_construct,
                          on_receive_fields = on_receive_fields,
})

minetest.register_on_shutdown(save_aliases)
load_aliases()
