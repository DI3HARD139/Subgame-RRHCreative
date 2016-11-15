minetest.register_node("trongrid:tronblock_center_red" , {
	description = "Red Tronblock Center Stone",
	drawtype = "glasslike",
	paramtype = "light",
	light_source = 15,
	is_ground_content = false,
	sunlight_propagates = true,
	iventory_image = "trongrid_tronblock_center_red.png",
	tiles = {"trongrid_tronblock_center_red.png"},
	groups = {cracky = 3},
})

minetest.register_node("trongrid:tronblock_horizontal_red" , {
	description = "Red Tronblock horizontal Stone",
	drawtype = "glasslike",
	paramtype = "light",
	light_source = 10,
	is_ground_content = false,
	sunlight_propagates = true,
	iventory_image = "trongrid_tronblock_horizontal_red.png",
	tiles = {
		"trongrid_tronblock_horizontal_red.png",
		"trongrid_tronblock_horizontal_red.png",
		"trongrid_tronblock_horizontal_red.png",
		"trongrid_tronblock_horizontal_red.png",
		"trongrid_tronblock_horizontal_red.png",
		"trongrid_tronblock_horizontal_red.png",
	},
	groups = {cracky = 3},
})

minetest.register_node("trongrid:tronblock_vertical_red" , {
	description = "Red Tronblock vertical Stone",
	drawtype = "glasslike",
	paramtype = "light",
	light_source = 10,
	is_ground_content = false,
	sunlight_propagates = true,
	iventory_image = "trongrid_tronblock_vertical_red.png",
	tiles = {"trongrid_tronblock_vertical_red.png"},
	groups = {cracky = 3},
})

minetest.register_node("trongrid:tronblock_glass_red" , {
	description = "Red Tronblock Glass Stone",
	drawtype = "glasslike",
	paramtype = "light",
	light_source = 15,
	is_ground_content = false,
	sunlight_propagates = true,
	iventory_image = "trongrid_tronblock_transparent_red.png",
	tiles = {"trongrid_tronblock_transparent_red.png"},
	groups = {fleshy = 3},
})

-- Register recipes

minetest.register_craft({
	output = "trongrid:tronblock_center_red 1",
	recipe = {
		{"", "",""},
		{"", "dye:red", ""},
		{"", "trongrid:tronblock_center",""},
	}
})

minetest.register_craft({
	output = "trongrid:tronblock_horizontal_red 1",
	recipe = {
		{"", "",""},
		{"", "dye:red", ""},
		{"", "trongrid:tronblock_horizontal",""},
	}
})

minetest.register_craft({
	output = "trongrid:tronblock_vertical_red 1",
	recipe = {
		{"", "",""},
		{"", "dye:red", ""},
		{"", "trongrid:tronblock_vertical",""},
	}
})

minetest.register_craft({
	output = "trongrid:tronblock_glass_red 1",
	recipe = {
		{"", "",""},
		{"", "dye:red", ""},
		{"", "trongrid:tronblock_glass",""},
	}
})


