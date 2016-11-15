-- Register tronblocks
minetest.register_craftitem("trongrid:tron_crystal", {
	description = "Tron Crystal",
	inventory_image = "trongrid_troncrystal.png",
})

minetest.register_craftitem("trongrid:tron_stick", {
	description = "Tron Stick",
	inventory_image = "trongrid_tron_stick.png",
})

minetest.register_node("trongrid:tronblock_center" , {
	description = "Tronblock Center Stone",
	drawtype = "glasslike",
	paramtype = "light",
	light_source = 15,
	is_ground_content = false,
	sunlight_propagates = true,
	iventory_image = "trongrid_tronblock_center.png",
	tiles = {"trongrid_tronblock_center.png"},
	groups = {cracky = 3},
})

minetest.register_node("trongrid:tronblock_horizontal" , {
	description = "Tronblock horizontal Stone",
	drawtype = "glasslike",
	paramtype = "light",
	paramtype2 = "facedir",
	light_source = 10,
	is_ground_content = false,
	sunlight_propagates = true,
	iventory_image = "trongrid_tronblock_horizontal.png",
	tiles = {
		"trongrid_tronblock_horizontal.png",
		"trongrid_tronblock_horizontal.png",
		"trongrid_tronblock_horizontal.png",
		"trongrid_tronblock_horizontal.png",
		"trongrid_tronblock_horizontal.png",
		"trongrid_tronblock_horizontal.png",
	},
	groups = {cracky = 3},
})


minetest.register_node("trongrid:tronblock_vertical" , {
	description = "Tronblock vertical Stone",
	drawtype = "glasslike",
	paramtype = "light",
	light_source = 10,
	is_ground_content = false,
	sunlight_propagates = true,
	iventory_image = "trongrid_tronblock_vertical.png",
	tiles = {"trongrid_tronblock_vertical.png"},
	groups = {cracky = 3},
})

minetest.register_node("trongrid:tronblock_black" , {
	description = "Tronblock black Stone",
	drawtype = "glasslike",
	paramtype = "light",
	light_source = 0,
	is_ground_content = false,
	sunlight_propagates = true,
	iventory_image = "trongrid_tronblock_black.png",
	tiles = {"trongrid_tronblock_black.png"},
	groups = {cracky = 3},
})

minetest.register_node("trongrid:tronblock_glass" , {
	description = "Tronblock Glass Stone",
	drawtype = "glasslike",
	paramtype = "light",
	light_source = 15,
	is_ground_content = false,
	sunlight_propagates = true,
	iventory_image = "trongrid_tronblock_transparent.png",
	tiles = {"trongrid_tronblock_transparent.png"},
	groups = {fleshy = 3},
})

-- Register recipes

minetest.register_craft({
	output = "trongrid:tron_crystal 4",
	recipe = {
		{"", "default:torch",""},
		{"", "dye:blue",""},
		{"", "default:coal_lump",""},
	}
})

minetest.register_craft({
	output = "trongrid:tron_stick 9",
	recipe = {
		{"", "",""},
		{"", "trongrid:tron_crystal",""},
		{"", "",""},
	}
})

minetest.register_craft({
	output = "trongrid:tronblock_center 9",
	recipe = {
		{"trongrid:tron_crystal", "trongrid:tron_crystal","trongrid:tron_crystal"},
		{"trongrid:tron_crystal", "moreblocks:circle_stone_bricks", "trongrid:tron_crystal"},
		{"trongrid:tron_crystal", "trongrid:tron_crystal","trongrid:tron_crystal"},
	}
})

minetest.register_craft({
	output = "trongrid:tronblock_horizontal 3",
	recipe = {
		{"", "",""},
		{"trongrid:tron_crystal", "trongrid:tron_crystal", "trongrid:tron_crystal"},
		{"", "",""},
	}
})

minetest.register_craft({
	output = "trongrid:tronblock_vertical 3",
	recipe = {
		{"", "trongrid:tron_crystal",""},
		{"", "trongrid:tron_crystal", ""},
		{"", "trongrid:tron_crystal",""},
	}
})

minetest.register_craft({
	output = "trongrid:tronblock_glass 3",
	recipe = {
		{"", "trongrid:tron_crystal",""},
		{"", "default:glass", ""},
		{"", "trongrid:tron_crystal",""},
	}
})

minetest.register_craft({
	output = "trongrid:tronblock_black 3",
	recipe = {
		{"", "dye:black",""},
		{"", "trongrid:tron_crystal", ""},
		{"", "",""},
	}
})

dofile(minetest.get_modpath("trongrid").."/red.lua")
dofile(minetest.get_modpath("trongrid").."/green.lua")
dofile(minetest.get_modpath("trongrid").."/tools.lua")
dofile(minetest.get_modpath("trongrid").."/aliases.lua")
dofile(minetest.get_modpath("trongrid").."/elevator.lua")
