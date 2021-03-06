
-- This file supplies saki cups

minetest.register_node("nightclub:saki_cup", {
	description = "Saki cup",
	drawtype = "nodebox",
	tiles = {
		'stein_top.png', -- top
		'back.png',  -- bottom
		'stein.png',  -- side
		'stein.png',  -- side
		'stein.png',  -- back
		'stein.png',  -- front
	},
	paramtype = "light",
	light_source = 4,
	paramtype2 = "facedir",
	buildable_to = true,
	walkable = false,
	sounds = default.node_sound_glass_defaults(),
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.09, -0.4, -0.09, 0.09, -0.3, 0.09},  -- upper
			{-0.1, -0.48, -0.1, 0.1, -0.4, 0.1},  -- body
			{-0.09, -0.5, -0.09, 0.09, -0.48, 0.09},  -- bottom
			},
		},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.3, -0.5, -0.3, 0.3, 0.3, 0.3},
			
			},
		},
})
