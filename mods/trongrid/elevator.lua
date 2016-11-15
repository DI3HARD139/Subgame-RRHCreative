minetest.register_node("trongrid:tron_elevator" , {
	description = "Tron Elevator",
	drawtype = "glasslike_framed",
	paramtype = "light",
	walkable = false,
	climbable = true, 
	light_source = 15,
	is_ground_content = false,
	sunlight_propagates = true,
	iventory_image = "trongrid_tron_elevator.png",
	tiles = {
		"trongrid_tron_elevator.png",
		"trongrid_tron_elevator.png",
		"trongrid_tron_elevator_top.png",
		"trongrid_tron_elevator_top.png",
		"trongrid_tron_elevator.png",
		"trongrid_tron_elevator.png",
	
	},
	groups = {cracky = 3},
})

minetest.register_node("trongrid:tron_elevator_red" , {
	description = "Tron Red Elevator",
	drawtype = "glasslike_framed",
	paramtype = "light",
	walkable = false,
	climbable = true, 
	light_source = 15,
	is_ground_content = false,
	sunlight_propagates = true,
	iventory_image = "trongrid_tron_elevator_red.png",
	tiles = {
		"trongrid_tron_elevator_red.png",
		"trongrid_tron_elevator_red.png",
		"trongrid_tron_elevator_top_red.png",
		"trongrid_tron_elevator_top_red.png",
		"trongrid_tron_elevator_red.png",
		"trongrid_tron_elevator_red.png",
	
	},
	groups = {cracky = 3},
})

minetest.register_node("trongrid:tron_elevator_green" , {
	description = "Tron Green Elevator",
	drawtype = "glasslike_framed",
	paramtype = "light",
	walkable = false,
	climbable = true, 
	light_source = 15,
	is_ground_content = false,
	sunlight_propagates = true,
	iventory_image = "trongrid_tron_elevator_green.png",
	tiles = {
		"trongrid_tron_elevator_green.png",
		"trongrid_tron_elevator_green.png",
		"trongrid_tron_elevator_top_green.png",
		"trongrid_tron_elevator_top_green.png",
		"trongrid_tron_elevator_green.png",
		"trongrid_tron_elevator_green.png",
	
	},
	groups = {cracky = 3},
})

-- recipes:
minetest.register_craft({
	output = "trongrid:tron_elevator 1",
	recipe = {
		{"", "",""},
		{"", "default:ladder", ""},
		{"", "trongrid:tronblock_vertical",""},
	}
})

minetest.register_craft({
	output = "trongrid:tron_elevator_red 1",
	recipe = {
		{"", "",""},
		{"", "default:ladder", ""},
		{"", "trongrid:tronblock_vertical_red",""},
	}
})

minetest.register_craft({
	output = "trongrid:tron_elevator_green 1",
	recipe = {
		{"", "",""},
		{"", "default:ladder", ""},
		{"", "trongrid:tronblock_vertical_green",""},
	}
})
