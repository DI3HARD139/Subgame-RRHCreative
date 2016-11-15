minetest.register_node("mystreets:stop_sign", {
	description = "Stop Sign",
	tiles = {
		"mystreets_stop_tnb.png",
		"mystreets_stop_tnb.png",
		"mystreets_stop_right.png",
		"mystreets_stop_left.png",
		"mystreets_stop_back.png",
		"mystreets_stop_front.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.0625, -0.5, -0.125, 0.0625, 0.5, 0.125}, 
			{-0.25, -0.5, -0.1875, 0.25, 0.5, -0.125}, 
			{-0.5, -0.25, -0.1875, 0.5, 0.25, -0.125}, 
			{-0.4375, -0.3125, -0.1875, 0.4375, 0.3125, -0.125}, 
			{-0.375, -0.375, -0.1875, 0.375, 0.375, -0.125}, 
			{-0.3125, -0.4375, -0.1875, 0.3125, 0.4375, -0.125}, 
			{-0.125, -0.5, -0.0625, 0.125, 0.5, 0.0625}, 
			{-0.125, -0.5, -0.125,0.125,0.5,0},
		}
	},

})
--Craft
minetest.register_craft({
	output = "mystreets:stop_sign 2",
	recipe = {
		{"mystreets:paint_brush_red", "group:wood","mystreets:lightpost"},
		{"mystreets:paint_brush_white", "group:wood","mystreets:lightpost"},
		{"mystreets:paint_brush_red", "group:wood","mystreets:lightpost"},
	}
})

minetest.register_node("mystreets:yeild_sign", {
	description = "Yeild Sign",
	tiles = {
		"mystreets_stop_tnb.png",
		"mystreets_stop_tnb.png",
		"mystreets_stop_right.png",
		"mystreets_stop_left.png",
		"mystreets_yeild_back.png",
		"mystreets_yeild_front.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.0625, -0.5, -0.125, 0.0625, 0.5, 0.125}, -- NodeBox29
			{-0.25, -0.1875, -0.1875, 0.25, 0.5, -0.125}, -- NodeBox39
			{-0.5, 0.3125, -0.1875, 0.5, 0.4375, -0.125}, -- NodeBox40
			{-0.4375, 0.1875, -0.1875, 0.4375, 0.5, -0.125}, -- NodeBox41
			{-0.375, 0.0625, -0.1875, 0.375, 0.375, -0.125}, -- NodeBox42
			{-0.3125, -0.0625, -0.1875, 0.3125, 0.4375, -0.125}, -- NodeBox43
			{-0.125, -0.5, -0.0625, 0.125, 0.5, 0.0625}, -- NodeBox44
			{-0.1875, -0.3125, -0.1875, 0.1875, 0.5, -0.125}, -- NodeBox45
			{-0.125, -0.375, -0.1875, 0.125, 0.5, -0.125}, -- NodeBox46
		}
	},

})
--Craft
minetest.register_craft({
	output = "mystreets:yeild_sign 2",
	recipe = {
		{"mystreets:paint_brush_white", "group:wood","mystreets:lightpost"},
		{"mystreets:paint_brush_red", "group:wood","mystreets:lightpost"},
		{"mystreets:paint_brush_white", "group:wood","mystreets:lightpost"},
	}
})
