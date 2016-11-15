-- Galvanized steel block
	minetest.register_node("mystreets:galvanized_steel", {
		description = "Galvanized steel",
		tile_images = {"mystreets_galvanized_steel.png"},
		drawtype = "normal",
		paramtype = "light",
		groups = {cracky = 2},
		sounds = default.node_sound_stone_defaults(),
	})
--Craft
minetest.register_craft({
	type = "cooking",
	output = "mystreets:galvanized_steel 1",
	recipe = "default:steel_ingot",
	cooktime = 2
})

-- Galvanized steel fence
	minetest.register_node("mystreets:fence_galvanized_steel", {
		description = "Galvanized steel fence",
		drawtype = "fencelike",
		tiles = {"mystreets_galvanized_steel.png"},
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
	output = "mystreets:fence_galvanized_steel 6",
	recipe = {
		{'mystreets:galvanized_steel', 'mystreets:galvanized_steel', 'mystreets:galvanized_steel'},
		{'mystreets:galvanized_steel', 'mystreets:galvanized_steel', 'mystreets:galvanized_steel'}
	}
})

-- Truss
	minetest.register_node("mystreets:truss", {
		description = "Truss",
		tile_images = {"mystreets_truss.png"},
		drawtype = "nodebox",
		paramtype = "light",
		groups = {cracky = 2},
		node_box = {
			type = "fixed",
			fixed = {
				{1/2, -1/2, -1/2, 1/2, 1/2, 1/2},
				{-1/2, 1/2, -1/2, 1/2, 1/2, 1/2},
				{-1/2, -1/2, 1/2, 1/2, 1/2, 1/2},
				{-1/2, -1/2, -1/2, -1/2, 1/2, 1/2},
				{-1/2, -1/2, -1/2, 1/2, -1/2, 1/2},
				{-1/2, -1/2, -1/2, 1/2, 1/2, -1/2}
			}
		},
		selection_box = {
			type = "fixed",
			fixed = {-1/2, -1/2, -1/2, 1/2, 1/2, 1/2}
		}
	})
--Craft
minetest.register_craft({
	output = "mystreets:truss 5",
	recipe = {
		{'default:steel_ingot', '', 'default:steel_ingot'},
		{'', 'default:steel_ingot', ''},
		{'default:steel_ingot', '', 'default:steel_ingot'}
	}
})
