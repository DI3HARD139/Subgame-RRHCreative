-- Jail Mod
-- By kaeza and RAPHAEL (mostly kaeza)
-- license: whatever

minetest.register_privilege("jail", { description = "Allows one to send/release prisoners" })

local jailpos = { x = 2397.2, y = -10008.5, z = 2683.8}

local players_in_jail = { };

minetest.register_chatcommand("jail", {
    params = "<player>",
    description = "Sends a player to Jail",
	privs = {jail=true},
    func = function ( name, param )
        local player = minetest.env:get_player_by_name(param)
        if (player) then
            players_in_jail[param] = player;
            player:setpos(jailpos)
			minetest.chat_send_player(param, "You have been sent to jail")
			minetest.chat_send_all(""..param.." has been sent to jail by "..name.."")
        end
    end,
})


local releasepos = { x = 2390.0, y = -10008.5, z = 2673.4}
 
minetest.register_chatcommand("release", {
    params = "<player>",
    description = "Releases a player from Jail",
	privs = {jail=true},
    func = function ( name, param )
        if (param == "") then return end
        local player = minetest.env:get_player_by_name(param)
        players_in_jail[param] = nil;
        if (player) then
            player:setpos(releasepos)
			minetest.chat_send_player(param, "You have been released from jail")
			minetest.chat_send_all(""..param.." has been released from jail by "..name.."")
        end
    end,
})

local function do_teleport ( )
    for name, player in pairs(players_in_jail) do
            player:setpos(jailpos)
    end
    minetest.after(86400, do_teleport)
end
minetest.after(86400, do_teleport)

minetest.register_alias("wardenpick", "jail:pick_warden")

minetest.register_node("jail:jailwall", {
	description = "Unbreakable Jail Wall",
	tile_images = {"jail_wall.png"},
	is_ground_content = true,
	groups = {unbreakable=1},
--	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("jail:glass", {
	description = "Unbreakable Jail Glass",
	drawtype = "glasslike",
	tile_images = {"jail_glass.png"},
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = {unbreakable=1},
--	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("jail:ironbars", {
	drawtype = "fencelike",
	tiles = {"jail_ironbars.png"},
	inventory_image = "jail_ironbars.png",
	light_propagates = true,
	paramtype = "light",
	is_ground_content = true,
	selection_box = {
		type = "fixed",
		fixed = {-1/7, -1/2, -1/7, 1/7, 1/2, 1/7},
	},
	groups = {unbreakable=1},
--	sounds = default.node_sound_stone_defaults(),
})

minetest.register_tool("jail:pick_warden", {
	description = "Warden Pickaxe",
	inventory_image = "jail_wardenpick.png",
	tool_capabilities = {
		full_punch_interval = 0,
		max_drop_level=3,
		groupcaps={
			unbreakable={times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy = {times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy={times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			bendy={times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky={times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly={times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			snappy={times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
		}
	},
})
