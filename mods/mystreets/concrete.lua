--Sidewalk
minetest.register_node("mystreets:sidewalk", {
	description = "Sidewalk",
	drawtype = "normal",
	tiles = {"mystreets_sidewalk.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=1},
	stack_max = 250,
	sounds = default.node_sound_stone_defaults(),
})
--Craft
minetest.register_craft({
	output = "mystreets:sidewalk 2",
	recipe = {
		{"mystreets:concrete", "",""},
		{"mystreets:concrete", "",""},
		{"", "",""},
	}
})

--Concrete
minetest.register_node("mystreets:concrete", {
	description = "Concrete",
	drawtype = "normal",
	tiles = {"mystreets_concrete.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=1},
	stack_max = 250,
	sounds = default.node_sound_stone_defaults(),

})
--Craft
minetest.register_craft({
	output = "mystreets:concrete 4",
	recipe = {
		{"default:stone", "default:dirt",""},
		{"default:stone", "default:stone",""},
		{"", "",""},
	}
})

-- Concrete fence
	minetest.register_node("mystreets:fence_concrete", {
		description = "Concrete fence",
		drawtype = "fencelike",
		tiles = {"mystreets_concrete.png"},
		paramtype = "light",
		is_ground_content = true,
		selection_box = {
			type = "fixed",
			fixed = {-1/8, -1/2, -1/8, 1/8, 1/2, 1/8},
		},
		groups = {cracky = 2},
		sounds = default.node_sound_stone_defaults(),
})
--Craft
minetest.register_craft({
	output = "mystreets:fence_concrete 6",
	recipe = {
		{'mystreets:concrete', 'mystreets:concrete', 'mystreets:concrete'},
		{'mystreets:concrete', 'mystreets:concrete', 'mystreets:concrete'}
	}
})

-- Concrete seperating wall
	minetest.register_node("mystreets:precast_concrete_seperating_wall", {
		description = "Precast concrete seperating wall",
		tile_images = {"mystreets_concrete.png"},
		drawtype = "nodebox",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 2},
		sounds = default.node_sound_stone_defaults(),
		node_box = {
			type = "fixed",
			fixed = {
				{-5/16, -1/2, -7/16, 5/16, -1/4, 7/16},
				{-1/16, -1/4, -7/16, 1/16, 1/2, 7/16},
				{-3/16, -1/2, -5/16, 3/16, 0, -1/4},
				{-3/16, -1/2, 1/4, 3/16, 0, 5/16}
			}
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-5/16, -1/2, -7/16, 5/16, -1/4, 7/16},
				{-1/16, -1/4, -7/16, 1/16, 1/2, 7/16},
				{-3/16, -1/2, -5/16, 3/16, 0, -1/4},
				{-3/16, -1/2, 1/4, 3/16, 0, 5/16}
			}
		}
	})
--Craft
minetest.register_craft({
	output = "mystreets:precast_concrete_seperating_wall 5",
	recipe = {
		{'', 'mystreets:concrete', ''},
		{'', 'mystreets:concrete', ''},
		{'mystreets:concrete', 'mystreets:concrete', 'mystreets:concrete'}
	}
})
-- Concrete cylinder
	minetest.register_node("mystreets:precast_concrete_cylinder", {
		description = "Precast concrete cylinder",
		tile_images = {"mystreets_concrete.png"},
		drawtype = "nodebox",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 2},
		walkable = false,
		climbable = true,
		node_box = {
			type = "fixed",
			fixed = {
				{3/8, -1/2, -1/2, 1/2, 1/2, 1/2},
				{-1/2, -1/2, -1/2, -3/8, 1/2, 1/2},
				{-1/2, -1/2, 3/8, 1/2, 1/2, 1/2},
				{-1/2, -1/2, -1/2, 1/2, 1/2, -3/8}
			}
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{3/8, -1/2, -1/2, 1/2, 1/2, 1/2},
				{-1/2, -1/2, -1/2, -3/8, 1/2, 1/2},
				{-1/2, -1/2, 3/8, 1/2, 1/2, 1/2},
				{-1/2, -1/2, -1/2, 1/2, 1/2, -3/8}
			}
		}
	})
--Craft
minetest.register_craft({
	output = "mystreets:precast_concrete_cylinder 8",
	recipe = {
		{'mystreets:concrete', 'mystreets:concrete', 'mystreets:concrete'},
		{'mystreets:concrete', '', 'mystreets:concrete'},
		{'mystreets:concrete', 'mystreets:concrete', 'mystreets:concrete'}
	}
})
