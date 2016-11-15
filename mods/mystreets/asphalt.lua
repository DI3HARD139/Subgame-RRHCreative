-- Asphalt block
	minetest.register_node("mystreets:asphalt", {
		description = "Asphalt",
		tile_images = {"mystreets_asphalt.png"},
		drawtype = "normal",
		groups = {cracky = 1},
		sounds = default.node_sound_stone_defaults(),
	})
minetest.register_alias("asphalt", "mystreets:asphalt")

-- Asphalt block with center dashed line
	minetest.register_node("mystreets:asphalt_center_dashed", {
		description = "Asphalt with center dashed line",
		tile_images = {
			"mystreets_asphalt_center_dashed.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt_center_dashed.png",
			"mystreets_asphalt_center_dashed.png"
		},
		drawtype = "normal",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 1},
		sounds = default.node_sound_stone_defaults(),
	})

-- Asphalt block with center solid line
	minetest.register_node("mystreets:asphalt_center_solid", {
	description = "Asphalt with center solid line",
	tile_images = {
			"mystreets_asphalt_center_solid.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt_center_solid.png",
			"mystreets_asphalt_center_solid.png"
	},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 1},
	sounds = default.node_sound_stone_defaults(),
	})

-- Asphalt block with center solid dashed line
	minetest.register_node("mystreets:asphalt_center_solid_dashed", {
	description = "Asphalt with center solid dashed line",
	tile_images = {
			"mystreets_asphalt_center_solid_dashed.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt_center_solid_dashed.png^[transformR180",
			"mystreets_asphalt_center_solid_dashed.png"
	},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 1},
	sounds = default.node_sound_stone_defaults(),
	})

-- Asphalt block with center solid double line
	minetest.register_node("mystreets:asphalt_center_solid_double", {
	description = "Asphalt with center solid double line",
	tile_images = {
			"mystreets_asphalt_center_solid_double.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt_center_solid_double.png",
			"mystreets_asphalt_center_solid_double.png",
	},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 1},
	sounds = default.node_sound_stone_defaults(),
	})

-- Asphalt block with center corner single line
	minetest.register_node("mystreets:asphalt_center_corner_single", {
	description = "Asphalt with center corner single line",
	tile_images = {
			"mystreets_asphalt_center_corner_single.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt_center_solid.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt_center_solid.png"
	},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 1},
	sounds = default.node_sound_stone_defaults(),
	})

-- Asphalt block with center corner double line
	minetest.register_node("mystreets:asphalt_center_corner_double", {
	description = "Asphalt with center corner double line",
	tile_images = {
			"mystreets_asphalt_center_corner_double.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt_center_solid_double.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt_center_solid_double.png"
	},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 1},
	sounds = default.node_sound_stone_defaults(),
	})

-- Asphalt block with side dashed line
	minetest.register_node("mystreets:asphalt_side_dashed", {
	description = "Asphalt with side dashed line",
	tile_images = {
			"mystreets_asphalt_side_dashed.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt_side_dashed_inversed.png",
			"mystreets_asphalt_side_dashed.png"
	},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 1},
	sounds = default.node_sound_stone_defaults(),
	})

-- Asphalt block with side solid line
	minetest.register_node("mystreets:asphalt_side_solid", {
	description = "Asphalt with side solid line",
	tile_images = {
			"mystreets_asphalt_side_solid.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt_side_solid_inversed.png",
			"mystreets_asphalt_side_solid.png"
	},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 1},
	sounds = default.node_sound_stone_defaults(),
	})

-- Asphalt Outside Corner
	minetest.register_node("mystreets:asphalt_ocorner", {
	description = "Asphalt Outside Corner",
	tile_images = {
			"mystreets_asphalt_ocorner.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt_side_solid_inversed.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt_side_solid.png"
	},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 1},
	sounds = default.node_sound_stone_defaults(),
	})

-- Asphalt block Inside Corner
	minetest.register_node("mystreets:asphalt_icorner", {
	description = "Asphalt Inside Corner",
	tile_images = {
			"mystreets_asphalt_icorner.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt_side_solid_inversed.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt_side_solid.png"
	},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 1},
	sounds = default.node_sound_stone_defaults(),
	})

-- HandiCap Parking Top Right
	minetest.register_node("mystreets:asphalt_hc_tr", {
		description = "HandiCap Parking Top Right",
		tile_images = {
			"mystreets_hc_tr.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt.png"
		},
		drawtype = "normal",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 1},
		sounds = default.node_sound_stone_defaults(),
	})

-- HandiCap Parking Bottom Left
	minetest.register_node("mystreets:asphalt_hc_bl", {
		description = "HandiCap Parking Bottom Left",
		tile_images = {
			"mystreets_hc_bl.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt.png"
		},
		drawtype = "normal",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 1},
		sounds = default.node_sound_stone_defaults(),
	})

-- HandiCap Parking Bottom Right
	minetest.register_node("mystreets:asphalt_hc_br", {
		description = "HandiCap Parking Bottom Right",
		tile_images = {
			"mystreets_hc_br.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt.png"
		},
		drawtype = "normal",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 1},
		sounds = default.node_sound_stone_defaults(),
	})

-- HandiCap Parking Top Left
	minetest.register_node("mystreets:asphalt_hc_tl", {
		description = "HandiCap Parking Top Left",
		tile_images = {
			"mystreets_hc_tl.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt.png"
		},
		drawtype = "normal",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 1},
		sounds = default.node_sound_stone_defaults(),
	})
