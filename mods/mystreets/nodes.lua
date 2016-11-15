-- Displacement
function displacement(pos, placer)
	local displaced_node = minetest.env:get_node(pos)
	local fdir = minetest.dir_to_facedir(placer:get_look_dir())
	pos.y = pos.y - 1
	local node = minetest.env:get_node(pos)
		if ((string.find(node.name, "_three_quarter") ~= nil) or (string.find(node.name, "_displacement_1") ~= nil)) then
		pos.y = pos.y + 1
		minetest.env:add_node(pos, {name = displaced_node.name.."_displacement_1", param2 = fdir})
	elseif (((string.find(node.name, "slab_") ~= nil) and (string.find(node.name, "_quarter") == nil)) or (string.find(node.name, "_displacement_2") ~= nil)) then
		pos.y = pos.y + 1
		minetest.env:add_node(pos, {name = displaced_node.name.."_displacement_2", param2 = fdir})
	elseif (((string.find(node.name, "_quarter") ~= nil) and (string.find(node.name, "_three_quarter") == nil)) or (string.find(node.name, "_displacement_3") ~= nil)) then
		pos.y = pos.y + 1
		minetest.env:add_node(pos, {name = displaced_node.name.."_displacement_3", param2 = fdir})
	end
end

-- Manhole cover
	local on_manhole_cover_punched = function(pos, node, puncher)
		if string.find(node.name, "misc:manhole_cover") ~= nil then
			local name = node.name
			local state = node.param2
			if name == "misc:manhole_cover_opened" then
				node.name = "misc:manhole_cover_closed"
				node.param2 = state
			else
				node.name = "misc:manhole_cover_opened"
				node.param2 = state
			end
			minetest.env:add_node(pos, {
				name = node.name,
				param2 = node.param2
			})
		end

	end

-- Asphalt block
	minetest.register_node("misc:asphalt", {
		description = "Asphalt",
		tile_images = {"misc_asphalt.png"},
		drawtype = "normal",
		groups = {cracky = 1},
		sounds = default.node_sound_stone_defaults(),
	})
minetest.register_alias("asphalt", "misc:asphalt")

-- Light Asphalt block
	minetest.register_node("misc:light_asphalt", {
		description = "Grey Asphalt",
		tile_images = {"misc_light_asphalt.png"},
		drawtype = "normal",
		groups = {cracky = 1},
		sounds = default.node_sound_stone_defaults(),
	})
minetest.register_alias("grey_asphalt", "misc:light_asphalt")

-- Concrete block
	minetest.register_node("misc:concrete", {
		description = "Concrete",
		tile_images = {"misc_concrete.png"},
		drawtype = "normal",
		paramtype = "light",
		groups = {cracky = 2},
		sounds = default.node_sound_stone_defaults(),
	})
	minetest.register_node("misc:concrete_tile", {
		description = "Concrete Tile",
		tile_images = {"misc_concrete_tile.png"},
		drawtype = "normal",
		paramtype = "light",
		groups = {cracky = 2},
		sounds = default.node_sound_stone_defaults(),
	})
	minetest.register_node("misc:concrete_splitstone", {
		description = "Concrete Splitstone",
		tile_images = {"misc_concrete_splitstone.png"},
		drawtype = "normal",
		paramtype = "light",
		groups = {cracky = 2},
		sounds = default.node_sound_stone_defaults(),
	})

-- Concrete fence
	minetest.register_node("misc:fence_concrete", {
		description = "Concrete fence",
		drawtype = "fencelike",
		tiles = {"misc_concrete.png"},
		paramtype = "light",
		is_ground_content = true,
		selection_box = {
			type = "fixed",
			fixed = {-1/8, -1/2, -1/8, 1/8, 1/2, 1/8},
		},
		groups = {cracky = 2},
		sounds = default.node_sound_stone_defaults(),
	})

-- Galvanized steel block
	minetest.register_node("misc:galvanized_steel", {
		description = "Galvanized steel",
		tile_images = {"misc_galvanized_steel.png"},
		drawtype = "normal",
		paramtype = "light",
		groups = {cracky = 2},
		sounds = default.node_sound_stone_defaults(),
	})
	minetest.register_node("misc:galvanized_steel_tile", {
		description = "Galvanized steel tile",
		tile_images = {"misc_galvanized_steel_tile.png"},
		drawtype = "normal",
		paramtype = "light",
		groups = {cracky = 2},
		sounds = default.node_sound_stone_defaults(),
	})
	minetest.register_node("misc:galvanized_steel_splitstone", {
		description = "Galvanized steel splitstone",
		tile_images = {"misc_galvanized_steel_splitstone.png"},
		drawtype = "normal",
		paramtype = "light",
		groups = {cracky = 2},
		sounds = default.node_sound_stone_defaults(),
	})

-- Galvanized steel fence
	minetest.register_node("misc:fence_galvanized_steel", {
		description = "Galvanized steel fence",
		drawtype = "fencelike",
		tiles = {"misc_galvanized_steel.png"},
		paramtype = "light",
		is_ground_content = true,
		selection_box = {
			type = "fixed",
			fixed = {-1/8, -1/2, -1/8, 1/8, 1/2, 1/8},
		},
		groups = {cracky = 2},
		sounds = default.node_sound_stone_defaults(),
	})

-- Asphalt block with center dashed line
	minetest.register_node("misc:asphalt_center_dashed", {
		description = "Asphalt with center dashed line",
		tile_images = {
			"misc_asphalt_center_dashed.png",
			"misc_asphalt.png",
			"misc_asphalt.png",
			"misc_asphalt.png",
			"misc_asphalt_center_dashed.png",
			"misc_asphalt_center_dashed.png"
		},
		drawtype = "normal",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 1},
		sounds = default.node_sound_stone_defaults(),
	})

-- Asphalt block with center solid line
	minetest.register_node("misc:asphalt_center_solid", {
	description = "Asphalt with center solid line",
	tile_images = {
			"misc_asphalt_center_solid.png",
			"misc_asphalt.png",
			"misc_asphalt.png",
			"misc_asphalt.png",
			"misc_asphalt_center_solid.png",
			"misc_asphalt_center_solid.png"
	},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 1},
	sounds = default.node_sound_stone_defaults(),
	})

-- Asphalt block with center solid dashed line
	minetest.register_node("misc:asphalt_center_solid_dashed", {
	description = "Asphalt with center solid dashed line",
	tile_images = {
			"misc_asphalt_center_solid_dashed.png",
			"misc_asphalt.png",
			"misc_asphalt.png",
			"misc_asphalt.png",
			"misc_asphalt_center_solid_dashed.png^[transformR180",
			"misc_asphalt_center_solid_dashed.png"
	},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 1},
	sounds = default.node_sound_stone_defaults(),
	})

-- Asphalt block with center solid double line
	minetest.register_node("misc:asphalt_center_solid_double", {
	description = "Asphalt with center solid double line",
	tile_images = {
			"misc_asphalt_center_solid_double.png",
			"misc_asphalt.png",
			"misc_asphalt.png",
			"misc_asphalt.png",
			"misc_asphalt_center_solid_double.png",
			"misc_asphalt_center_solid_double.png",
	},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 1},
	sounds = default.node_sound_stone_defaults(),
	})

-- Asphalt block with center corner single line
	minetest.register_node("misc:asphalt_center_corner_single", {
	description = "Asphalt with center corner single line",
	tile_images = {
			"misc_asphalt_center_corner_single.png",
			"misc_asphalt.png",
			"misc_asphalt_center_solid.png",
			"misc_asphalt.png",
			"misc_asphalt.png",
			"misc_asphalt_center_solid.png"
	},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 1},
	sounds = default.node_sound_stone_defaults(),
	})

-- Asphalt block with center corner double line
	minetest.register_node("misc:asphalt_center_corner_double", {
	description = "Asphalt with center corner double line",
	tile_images = {
			"misc_asphalt_center_corner_double.png",
			"misc_asphalt.png",
			"misc_asphalt_center_solid_double.png",
			"misc_asphalt.png",
			"misc_asphalt.png",
			"misc_asphalt_center_solid_double.png"
	},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 1},
	sounds = default.node_sound_stone_defaults(),
	})

-- Asphalt block with side dashed line
	minetest.register_node("misc:asphalt_side_dashed", {
	description = "Asphalt with side dashed line",
	tile_images = {
			"misc_asphalt_side_dashed.png",
			"misc_asphalt.png",
			"misc_asphalt.png",
			"misc_asphalt.png",
			"misc_asphalt_side_dashed_inversed.png",
			"misc_asphalt_side_dashed.png"
	},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 1},
	sounds = default.node_sound_stone_defaults(),
	})

-- Asphalt block with side solid line
	minetest.register_node("misc:asphalt_side_solid", {
	description = "Asphalt with side solid line",
	tile_images = {
			"misc_asphalt_side_solid.png",
			"misc_asphalt.png",
			"misc_asphalt.png",
			"misc_asphalt.png",
			"misc_asphalt_side_solid_inversed.png",
			"misc_asphalt_side_solid.png"
	},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 1},
	sounds = default.node_sound_stone_defaults(),
	})

-- Asphalt block with lines for inner edge
	minetest.register_node("misc:asphalt_inner_edge", {
	description = "Asphalt with solid line for inner edge",
	tile_images = {
			"misc_asphalt_inner_edge.png",
			"misc_asphalt.png",
			"misc_asphalt_side_solid_inversed.png",
			"misc_asphalt.png",
			"misc_asphalt.png",
			"misc_asphalt_side_solid.png"
	},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 1},
	sounds = default.node_sound_stone_defaults(),
	})

-- Asphalt block with lines for outer edge
	minetest.register_node("misc:asphalt_outer_edge", {
	description = "Asphalt with solid line for outer edge",
	tile_images = {
			"misc_asphalt_outer_edge.png",
			"misc_asphalt.png",
			"misc_asphalt.png",
			"misc_asphalt_side_solid_inversed.png",
			"misc_asphalt.png",
			"misc_asphalt_side_solid.png"
	},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 1},
	sounds = default.node_sound_stone_defaults(),
	})

-- Concrete seperating wall
	minetest.register_node("misc:precast_concrete_seperating_wall", {
		description = "Precast concrete seperating wall",
		tile_images = {"misc_concrete.png"},
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

-- Concrete cylinder
	minetest.register_node("misc:precast_concrete_cylinder", {
		description = "Precast concrete cylinder",
		tile_images = {"misc_concrete.png"},
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

-- Truss
	minetest.register_node("misc:truss", {
		description = "Truss",
		tile_images = {"misc_truss.png"},
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

-- Wire rope safety barrier
	minetest.register_node("misc:wire_rope_safety_barrier", {
		description = "Wire rope safety barrier",
		tile_images = {
			"misc_galvanized_steel.png",
			"misc_galvanized_steel.png",
			"misc_galvanized_steel.png",
			"misc_galvanized_steel.png",
			"misc_wire_rope_safety_barrier_back.png",
			"misc_wire_rope_safety_barrier_front.png"
		},
		drawtype = "nodebox",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 2},
		light_source = 1,
		node_box = {
			type = "fixed",
			fixed = {
				{-1/8, -1/2, -1/16, 1/8, -1/4, 1/16},
				{-1/8, -1/2, -1/16, -1/16, -3/16, 1/16},
				{1/16, -1/2, -1/16, 1/8, 1/16, 1/16},
				{-1/8, -1/8, -1/16, 1/8, 0, 1/16},
				{-1/8, -1/8, -1/16, -1/16, 1/2, 1/16},
				{-1/8, 1/8, -1/16, 1/8, 1/4, 1/16},
				{1/16, 1/8, -1/16, 1/8, 1/2, 1/16},

				{-1/32, 1/4, -1/2, 1/32, 5/16, 1/2},
				{-1/32, 0, -1/2, 1/32, 1/16, 1/2},
				{-1/32, -1/4, -1/2, 1/32, -3/16, 1/2}
			}
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-1/8, -1/2, -1/16, 1/8, 1/2, 1/16},

				{-1/32, 1/4, -1/2, 1/32, 5/16, 1/2},
				{-1/32, 0, -1/2, 1/32, 1/16, 1/2},
				{-1/32, -1/4, -1/2, 1/32, -3/16, 1/2}
			}
		},

		after_place_node = function(pos, placer)
			displacement(pos, placer)
		end
	})

	for i = 1, 3 do
		minetest.register_node("misc:wire_rope_safety_barrier_displacement_"..tostring(i), {
			tile_images = {
				"misc_galvanized_steel.png",
				"misc_galvanized_steel.png",
				"[combine:32x32:0,"..tostring(i * 8).."=misc_galvanized_steel.png:0,"..tostring(i * 8 - 32).."=misc_galvanized_steel.png",
				"[combine:32x32:0,"..tostring(i * 8).."=misc_galvanized_steel.png:0,"..tostring(i * 8 - 32).."=misc_galvanized_steel.png",
				"[combine:32x32:0,"..tostring(i * 8).."=misc_wire_rope_safety_barrier_back.png:0,"..tostring(i * 8 - 32).."=misc_wire_rope_safety_barrier_back.png",
				"[combine:32x32:0,"..tostring(i * 8).."=misc_wire_rope_safety_barrier_front.png:0,"..tostring(i * 8 - 32).."=misc_wire_rope_safety_barrier_front.png"
			},
			drawtype = "nodebox",
			paramtype = "light",
			paramtype2 = "facedir",
			groups = {cracky = 2, not_in_creative_inventory = 1},
			light_source = 1,
			drop = "misc:wire_rope_safety_barrier",
			node_box = {
				type = "fixed",
				fixed = {
					{-1/8, -1/2 - i/4, -1/16, 1/8, -1/4 - i/4, 1/16},
					{-1/8, -1/2 - i/4, -1/16, -1/16, -3/16 - i/4, 1/16},
					{1/16, -1/2 - i/4, -1/16, 1/8, 1/16 - i/4, 1/16},
					{-1/8, -1/8 - i/4, -1/16, 1/8, 0 - i/4, 1/16},
					{-1/8, -1/8 - i/4, -1/16, -1/16, 1/2 - i/4, 1/16},
					{-1/8, 1/8 - i/4, -1/16, 1/8, 1/4 - i/4, 1/16},
					{1/16, 1/8 - i/4, -1/16, 1/8, 1/2 - i/4, 1/16},

					{-1/32, 1/4 - i/4, -1/2, 1/32, 5/16 - i/4, 1/2},
					{-1/32, 0 - i/4, -1/2, 1/32, 1/16 - i/4, 1/2},
					{-1/32, -1/4 - i/4, -1/2, 1/32, -3/16 - i/4, 1/2}
				}
			},
			selection_box = {
				type = "fixed",
				fixed = {
					{-1/8, -1/2 - i/4, -1/16, 1/8, 1/2 - i/4, 1/16},

					{-1/32, 1/4 - i/4, -1/2, 1/32, 5/16 - i/4, 1/2},
					{-1/32, 0 - i/4, -1/2, 1/32, 1/16 - i/4, 1/2},
					{-1/32, -1/4 - i/4, -1/2, 1/32, -3/16 - i/4, 1/2}
				}
			}
		})
	end

-- Cable barrier terminal
	minetest.register_node("misc:cable_barrier_terminal", {
		description = "Cable barrier terminal",
		tile_images = {
			"misc_galvanized_steel.png",
			"misc_galvanized_steel.png",
			"misc_galvanized_steel.png",
			"misc_galvanized_steel.png",
			"misc_cable_barrier_terminal_back.png",
			"misc_cable_barrier_terminal_front.png"
		},
		drawtype = "nodebox",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 2},
		light_source = 1,
		node_box = {
			type = "fixed",
			fixed = {
				{-1/4, -1/2, -1/2, 1/4, -3/8, 1/2},
				{-1/4, -3/8, -1/4, 1/4, 1/2, -1/8},
				{-1/4, -3/8, -1/8, -3/16, 0, 1/8},
				{3/16, -3/8, -1/8, 1/4, 0, 1/8},

				{-1/16, 7/32, -3/8, 1/16, 11/32, 1/4},
				{-1/16, -1/32, -3/8, 1/16, 3/32, 1/4},
				{-1/16, -9/32, -3/8, 1/16, -5/32, 1/4},

				{-1/32, 1/4, 0, 1/32, 5/16, 1/2},
				{-1/32, 0, 0, 1/32, 1/16, 1/2},
				{-1/32, -1/4, 0, 1/32, -3/16, 1/2}
			}
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-1/4, -1/2, -1/2, 1/4, -3/8, 1/2},
				{-1/4, -3/8, -1/4, 1/4, 1/2, -1/8},
				{-1/4, -3/8, -1/8, -3/16, 0, 1/8},
				{3/16, -3/8, -1/8, 1/4, 0, 1/8},

				{-1/16, 7/32, -3/8, 1/16, 11/32, 1/4},
				{-1/16, -1/32, -3/8, 1/16, 3/32, 1/4},
				{-1/16, -9/32, -3/8, 1/16, -5/32, 1/4},

				{-1/32, 1/4, 0, 1/32, 5/16, 1/2},
				{-1/32, 0, 0, 1/32, 1/16, 1/2},
				{-1/32, -1/4, 0, 1/32, -3/16, 1/2}
			}
		},

		after_place_node = function(pos, placer)
			displacement(pos, placer)
		end
	})

	for i = 1, 3 do
		minetest.register_node("misc:cable_barrier_terminal_displacement_"..tostring(i), {
			tile_images = {
				"misc_galvanized_steel.png",
				"misc_galvanized_steel.png",
				"[combine:32x32:0,"..tostring(i * 8).."=misc_galvanized_steel.png:0,"..tostring(i * 8 - 32).."=misc_galvanized_steel.png",
				"[combine:32x32:0,"..tostring(i * 8).."=misc_galvanized_steel.png:0,"..tostring(i * 8 - 32).."=misc_galvanized_steel.png",
				"[combine:32x32:0,"..tostring(i * 8).."=misc_cable_barrier_terminal_back.png:0,"..tostring(i * 8 - 32).."=misc_cable_barrier_terminal_back.png",
				"[combine:32x32:0,"..tostring(i * 8).."=misc_cable_barrier_terminal_front.png:0,"..tostring(i * 8 - 32).."=misc_cable_barrier_terminal_front.png"
			},
			drawtype = "nodebox",
			paramtype = "light",
			paramtype2 = "facedir",
			groups = {cracky = 2, not_in_creative_inventory = 1},
			light_source = 1,
			drop = "misc:cable_barrier_terminal",
			node_box = {
				type = "fixed",
				fixed = {
					{-1/4, -1/2 - i/4, -1/2, 1/4, -3/8 - i/4, 1/2},
					{-1/4, -3/8 - i/4, -1/4, 1/4, 1/2 - i/4, -1/8},
					{-1/4, -3/8 - i/4, -1/8, -3/16, 0 - i/4, 1/8},
					{3/16, -3/8 - i/4, -1/8, 1/4, 0 - i/4, 1/8},

					{-1/16, 7/32 - i/4, -3/8, 1/16, 11/32 - i/4, 1/4},
					{-1/16, -1/32 - i/4, -3/8, 1/16, 3/32 - i/4, 1/4},
					{-1/16, -9/32 - i/4, -3/8, 1/16, -5/32 - i/4, 1/4},

					{-1/32, 1/4 - i/4, 0, 1/32, 5/16 - i/4, 1/2},
					{-1/32, 0 - i/4, 0, 1/32, 1/16 - i/4, 1/2},
					{-1/32, -1/4 - i/4, 0, 1/32, -3/16 - i/4, 1/2}
				}
			},
			selection_box = {
				type = "fixed",
				fixed = {
					{-1/4, -1/2 - i/4, -1/2, 1/4, -3/8 - i/4, 1/2},
					{-1/4, -3/8 - i/4, -1/4, 1/4, 1/2 - i/4, -1/8},
					{-1/4, -3/8 - i/4, -1/8, -3/16, 0 - i/4, 1/8},
					{3/16, -3/8 - i/4, -1/8, 1/4, 0 - i/4, 1/8},

					{-1/16, 7/32 - i/4, -3/8, 1/16, 11/32 - i/4, 1/4},
					{-1/16, -1/32 - i/4, -3/8, 1/16, 3/32 - i/4, 1/4},
					{-1/16, -9/32 - i/4, -3/8, 1/16, -5/32 - i/4, 1/4},

					{-1/32, 1/4 - i/4, 0, 1/32, 5/16 - i/4, 1/2},
					{-1/32, 0 - i/4, 0, 1/32, 1/16 - i/4, 1/2},
					{-1/32, -1/4 - i/4, 0, 1/32, -3/16 - i/4, 1/2}
				}
			}
		})
	end

-- Drainage channel grating
	minetest.register_node("misc:drainage_channel_grating", {
		description = "Sewer drain",
		tile_images = {
			"misc_drainage_channel_grating.png",
			"misc_drainage_channel_grating.png",
			"misc_galvanized_steel.png",
			"misc_galvanized_steel.png",
			"misc_galvanized_steel.png",
			"misc_galvanized_steel.png"
		},
		drawtype = "nodebox",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 2},
		node_box = {
			type = "fixed",
			fixed = {-1/2, -1/2, -1/2, 0, -3/8, 1/2}
		},
		selection_box = {
			type = "fixed",
			fixed = {-1/2, -1/2, -1/2, 0, -3/8, 1/2}
		}
	})

-- Corrugated guide rail
	minetest.register_node("misc:corrugated_guide_rail", {
		description = "Corrugated guide rail",
		tile_images = {
			"misc_galvanized_steel.png",
			"misc_galvanized_steel.png",
			"misc_corrugated_guide_rail_side.png",
			"misc_corrugated_guide_rail_side.png",
			"misc_corrugated_guide_rail_back.png",
			"misc_corrugated_guide_rail_front.png"
		},
		drawtype = "nodebox",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 2},
		light_source = 1,
		node_box = {
			type = "fixed",
			fixed = {
				{-1/8, -1/2, -1/8, 1/8, 1/2, -1/16},
				{-1/16, -1/2, -1/16, 1/16, 1/2, 1/16},
				{-1/8, -1/2, 1/16, 1/8, 1/2, 1/8},

				{-1/2, 1/4, -1/4, 1/2, 3/8, -1/8},
				{-1/2, 1/8, -3/8, 1/2, 1/4, -1/4},
				{-1/2, 0, -1/4, 1/2, 1/8, -1/8},
				{-1/2, -1/8, -3/8, 1/2, 0, -1/4},
				{-1/2, -1/4, -1/4, 1/2, -1/8, -1/8}
			}
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-1/8, -1/2, -1/8, 1/8, 1/2, 1/8},

				{-1/2, 1/4, -1/4, 1/2, 3/8, -1/8},
				{-1/2, 1/8, -3/8, 1/2, 1/4, -1/4},
				{-1/2, 0, -1/4, 1/2, 1/8, -1/8},
				{-1/2, -1/8, -3/8, 1/2, 0, -1/4},
				{-1/2, -1/4, -1/4, 1/2, -1/8, -1/8}
			}
		},

		after_place_node = function(pos, placer)
			displacement(pos, placer)
		end
	})

	for i = 1, 3 do
		minetest.register_node("misc:corrugated_guide_rail_displacement_"..tostring(i), {
			tile_images = {
				"misc_galvanized_steel.png",
				"misc_galvanized_steel.png",
				"[combine:32x32:0,"..tostring(i * 8).."=misc_corrugated_guide_rail_side.png:0,"..tostring(i * 8 - 32).."=misc_corrugated_guide_rail_side.png",
				"[combine:32x32:0,"..tostring(i * 8).."=misc_corrugated_guide_rail_side.png:0,"..tostring(i * 8 - 32).."=misc_corrugated_guide_rail_side.png",
				"[combine:32x32:0,"..tostring(i * 8).."=misc_corrugated_guide_rail_back.png:0,"..tostring(i * 8 - 32).."=misc_corrugated_guide_rail_back.png",
				"[combine:32x32:0,"..tostring(i * 8).."=misc_corrugated_guide_rail_front.png:0,"..tostring(i * 8 - 32).."=misc_corrugated_guide_rail_front.png"
			},
			drawtype = "nodebox",
			paramtype = "light",
			paramtype2 = "facedir",
			groups = {cracky = 2, not_in_creative_inventory = 1},
			light_source = 1,
			drop = "misc:corrugated_guide_rail",
			node_box = {
				type = "fixed",
				fixed = {
					{-1/8, -1/2 - i/4, -1/8, 1/8, 1/2 - i/4, -1/16},
					{-1/16, -1/2 - i/4, -1/16, 1/16, 1/2 - i/4, 1/16},
					{-1/8, -1/2 - i/4, 1/16, 1/8, 1/2 - i/4, 1/8},

					{-1/2, 1/4 - i/4, -1/4, 1/2, 3/8 - i/4, -1/8},
					{-1/2, 1/8 - i/4, -3/8, 1/2, 1/4 - i/4, -1/4},
					{-1/2, 0 - i/4, -1/4, 1/2, 1/8 - i/4, -1/8},
					{-1/2, -1/8 - i/4, -3/8, 1/2, 0 - i/4, -1/4},
					{-1/2, -1/4 - i/4, -1/4, 1/2, -1/8 - i/4, -1/8}
				}
			},
			selection_box = {
				type = "fixed",
				fixed = {
					{-1/8, -1/2 - i/4, -1/8, 1/8, 1/2 - i/4, 1/8},

					{-1/2, 1/4 - i/4, -1/4, 1/2, 3/8 - i/4, -1/8},
					{-1/2, 1/8 - i/4, -3/8, 1/2, 1/4 - i/4, -1/4},
					{-1/2, 0 - i/4, -1/4, 1/2, 1/8 - i/4, -1/8},
					{-1/2, -1/8 - i/4, -3/8, 1/2, 0 - i/4, -1/4},
					{-1/2, -1/4 - i/4, -1/4, 1/2, -1/8 - i/4, -1/8}
				}
			}
		})
	end

minetest.register_node("misc:manhole_cover_closed", {
		description = "Manhole cover",
		tile_images = {
			"misc_manhole_cover_top_bottom.png",
			"misc_manhole_cover_top_bottom.png",
			"misc_manhole_cover_side.png",
			"misc_manhole_cover_side.png",
			"misc_manhole_cover_side.png",
			"misc_manhole_cover_side.png"
		},
		drawtype = "nodebox",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky=2},
		sounds = default.node_sound_stone_defaults(),
		node_box = {
			type = "fixed",
			fixed = {
				{-1/2, -1/2, -1/2, -5/16, -3/8, 1/2},
				{-3/16, -1/2, -1/2, -1/16, -3/8, 1/2},
				{1/16, -1/2, -1/2, 3/16, -3/8, 1/2},
				{5/16, -1/2, -1/2, 1/2, -3/8, 1/2},
				{-1/2, -1/2, -1/2, 1/2, -3/8, -3/8},
				{-1/2, -1/2, 3/8, 1/2, -3/8, 1/2},
				{-1/2, -1/2, -1/2, -1/16, -3/8, -5/16},
				{1/16, -1/2, -1/2, 1/2, -3/8, -5/16},
				{-1/2, -1/2, 5/16, -1/16, -3/8, 1/2},
				{1/16, -1/2, 5/16, 1/2, -3/8, 1/2}
			}
		},
		selection_box = {
			type = "fixed",
			fixed = {-1/2, -1/2, -1/2, 1/2, -3/8, 1/2}
		},

		on_punch = on_manhole_cover_punched
	})

	minetest.register_node("misc:manhole_cover_opened", {
		tile_images = {
			"misc_manhole_cover_side.png",
			"misc_manhole_cover_side.png",
			"misc_manhole_cover_side.png",
			"misc_manhole_cover_side.png",
			"misc_manhole_cover_top_bottom.png",
			"misc_manhole_cover_top_bottom.png"
		},
		drawtype = "nodebox",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky=2},
		drop = "misc:manhole_cover_closed",
		node_box = {
			type = "fixed",
			fixed = {
				{-1/2, -1/2, 1/2, -5/16, 1/2, 5/8},
				{-3/16, -1/2, 1/2, -1/16, 1/2, 5/8},
				{1/16, -1/2, 1/2, 3/16, 1/2, 5/8},
				{5/16, -1/2, 1/2, 1/2, 1/2, 5/8},
				{-1/2, -1/2, 1/2, 1/2, -3/8, 5/8},
				{-1/2, 3/8, 1/2, 1/2, 1/2, 5/8},
				{-1/2, -1/2, 1/2, -1/8, -5/16, 5/8},
				{1/16, -1/2, 1/2, 1/2, -5/16, 5/8},
				{-1/2, 5/16, 1/2, -1/16, 1/2, 5/8},
				{1/16, 5/16, 1/2, 1/2, 1/2, 5/8}
			}
		},
		selection_box = {
			type = "fixed",
			fixed = {-1/2, -1/2, 1/2, 1/2, 1/2, 5/8}
		},

		on_punch = on_manhole_cover_punched
	})

-- Mossy bricks
	minetest.register_node("misc:mossy_brick", {
		description = "Moss covered bricks",
		tile_images = {"misc_mossy_brick.png"},
		drawtype = "normal",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 2},
		sounds = default.node_sound_stone_defaults(),
	})
	minetest.register_node("misc:mossy_stone", {
		description = "Moss covered stone",
		tile_images = {"misc_mossy_stone.png"},
		drawtype = "normal",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 2},
		sounds = default.node_sound_stone_defaults(),
	})
	minetest.register_node("misc:mossy_stone_tile", {
		description = "Moss covered stone tile",
		tile_images = {"misc_mossy_stone_tile.png"},
		drawtype = "normal",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 2},
		sounds = default.node_sound_stone_defaults(),
	})
	minetest.register_node("misc:mossy_stone_splitstone", {
		description = "Moss Covered Splitstone",
		tile_images = {"misc_mossy_stone_splitstone.png"},
		drawtype = "normal",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 2},
		sounds = default.node_sound_stone_defaults(),
	})

-- Pink Leaves
	minetest.register_node("misc:pink_leaves", {
		description = "Pink Leaves",
		drawtype = "allfaces_optional",
		visual_scale = 1.3,
		tiles = {"misc_pink_leaves.png"},
		paramtype = "light",
		groups = {snappy=3, leafdecay=3, flammable=2, leaves=1},
		sounds = default.node_sound_leaves_defaults(),
	})
	
-- Astro Turf
	minetest.register_node("misc:astro_turf", {
		description = "Astro Turf",
		tiles = {"misc_grass.png"},
		is_ground_content = true,
		groups = {crumbly=3},
		drop = 'misc:astro_turf',
		sounds = default.node_sound_dirt_defaults({
		footstep = {name="default_grass_footstep", gain=0.25},
		}),
	})


minetest.register_node(":default:ladder", {
        description = "Ladder",
        drawtype = "nodebox",
        tiles = {"default_ladder_top.png",
                "default_ladder_bottom.png",
                "default_ladder_right.png",
                "default_ladder_left.png",
                "default_ladder_back.png",
                "default_ladder.png"},
        inventory_image = "default_ladder.png",
        wield_image = "default_ladder.png",
        paramtype = "light",
        paramtype2 = "facedir",
		  sunlight_propagates = true,
        walkable = true,
        climbable = true,
        node_box = {
                type = "fixed",
                fixed = {
                        {-0.375000,-0.500000,0.375000,-0.250000,0.500000,0.500000}, --NodeBox 1
                        {0.250000,-0.500000,0.375000,0.375000,0.500000,0.500000}, --NodeBox 2
                        {-0.250000,0.437500,0.375000,0.250000,0.312500,0.500000}, --NodeBox 3
                        {-0.250000,0.062500,0.375000,0.250000,0.187500,0.500000}, --NodeBox 4
                        {-0.250000,-0.187500,0.375000,0.250000,-0.062500,0.500000}, --NodeBox 5
                        {-0.250000,-0.437500,0.375000,0.250000,-0.312500,0.500000}, --NodeBox 6
                },
        },
        selection_box = {
                type = "fixed",
                fixed = {
                {-0.375,-0.5,0.375,0.375,0.5,0.5},
        },
        },
        groups = {choppy=2,oddly_breakable_by_hand=3,flammable=2},
        legacy_wallmounted = true,
        sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("misc:ladder_tin", {
        description = "Tin Ladder",
        drawtype = "nodebox",
        tiles = {"misc_ladder_tin_top.png",
                "misc_ladder_tin_bottom.png",
                "misc_ladder_tin_right.png",
                "misc_ladder_tin_left.png",
                "misc_ladder_tin_back.png",
                "misc_ladder_tin.png"},
        inventory_image = "misc_ladder_tin.png",
        wield_image = "misc_ladder_tin.png",
        paramtype = "light",
        paramtype2 = "facedir",
		  sunlight_propagates = true,
        walkable = true,
        climbable = true,
        node_box = {
                type = "fixed",
                fixed = {
                        {-0.375000,-0.500000,0.375000,-0.250000,0.500000,0.500000}, --NodeBox 1
                        {0.250000,-0.500000,0.375000,0.375000,0.500000,0.500000}, --NodeBox 2
                        {-0.250000,0.437500,0.375000,0.250000,0.312500,0.500000}, --NodeBox 3
                        {-0.250000,0.062500,0.375000,0.250000,0.187500,0.500000}, --NodeBox 4
                        {-0.250000,-0.187500,0.375000,0.250000,-0.062500,0.500000}, --NodeBox 5
                        {-0.250000,-0.437500,0.375000,0.250000,-0.312500,0.500000}, --NodeBox 6
                },
        },
        selection_box = {
                type = "fixed",
                fixed = {
                {-0.375,-0.5,0.375,0.375,0.5,0.5},
        },
        },
        groups = {cracky = 3},
        legacy_wallmounted = true,
        sounds = default.node_sound_wood_defaults(),
})

-- Tan Stone
	minetest.register_node("misc:tanstone", {
		description = "Tan Stone",
		tile_images = {"misc_tanstone.png"},
		drawtype = "normal",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 2},
		sounds = default.node_sound_stone_defaults(),
	})
	minetest.register_node("misc:tanstone_splittile", {
		description = "Split Tan Stone Tile",
		tile_images = {"misc_tanstone_splittile.png"},
		drawtype = "normal",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 2},
		sounds = default.node_sound_stone_defaults(),
	})
	minetest.register_node("misc:tanstone_tile", {
		description = "Tan Stone Tile",
		tile_images = {"misc_tanstone_tile.png"},
		drawtype = "normal",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 2},
		sounds = default.node_sound_stone_defaults(),
	})
	minetest.register_node("misc:tanstone_bricks", {
		description = "Tan Stone Bricks",
		tile_images = {"misc_tanstone_bricks.png"},
		drawtype = "normal",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 2},
		sounds = default.node_sound_stone_defaults(),
	})
	minetest.register_node("misc:tanstone_corner", {
	drawtype = "normal",
	paramtype = light,
	paramtype2 = "facedir",
	description = "Tan Stone Corner",
	tiles = {"misc_tanstone.png", 
	                  "castle_stonewall.png",
			"misc_tanstone_corner2.png", 
			"misc_tanstone.png", 
			"misc_tanstone.png", 
			"misc_tanstone_corner1.png"},
	groups = {cracky=3},
	})

	minetest.register_craft({
	output = "misc:tanstone_corner",
	recipe = {
		{"", "misc:tanstone"},
		{"misc:tanstone", "default:brick"},
	}
	})


--gray stone
	minetest.register_node("misc:gray_sandstone", {
		description = "Gray Sandstone",
		tile_images = {"misc_gray_sandstone.png"},
		drawtype = "normal",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 2},
		sounds = default.node_sound_stone_defaults(),
	})
	minetest.register_node("misc:gray_sandstone_tile", {
		description = "Gray Sandstone Tile",
		tile_images = {"misc_gray_sandstone_tile.png"},
		drawtype = "normal",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 2},
		sounds = default.node_sound_stone_defaults(),
	})
	minetest.register_node("misc:gray_sandstone_splitstone", {
		description = "Gray Sandstone Splitstone",
		tile_images = {"misc_gray_sandstone_splitstone.png"},
		drawtype = "normal",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 2},
		sounds = default.node_sound_stone_defaults(),
	})

--cleancopper roof

	minetest.register_node("misc:clean_copper", {
		description = "Clean Copper",
		tile_images = {"misc_cleancopper.png"},
		drawtype = "normal",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 2},
		sounds = default.node_sound_stone_defaults(),
	})



--greencopper roof

	minetest.register_node("misc:green_copper", {
		description = "Green Copper",
		tile_images = {"misc_greencopper.png"},
		drawtype = "normal",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 2},
		sounds = default.node_sound_stone_defaults(),
	})



minetest.register_node(":default:stone", {
	description = "Stone",
	tiles = {"default_stone.png"},
	is_ground_content = true,
	groups = {cracky=3, stone=1},
	drop = 'default:cobble',
	legacy_mineral = true,
	stack_max = 250,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node(":default:cobble", {
	description = "Cobblestone",
	tiles = {"misc_cobble.png"},
	is_ground_content = true,
	groups = {cracky=3, stone=2},
	stack_max = 250,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node(":default:desert_stone", {
	description = "Desert Stone",
	tiles = {"default_desert_stone.png"},
	is_ground_content = true,
	groups = {cracky=3, stone=1},
	drop = 'default:desert_cobble',
	legacy_mineral = true,
	stack_max = 250,
	sounds = default.node_sound_stone_defaults(),
})



minetest.register_node(":default:desert_cobble", {
	description = "Desert Cobblestone",
	tiles = {"misc_desert_cobble.png"},
	is_ground_content = true,
	groups = {cracky=3, stone=2},
	stack_max = 250,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("misc:desert_gravel", {
	description = "Desert Gravel",
	tiles = {"misc_desert_gravel.png"},
	is_ground_content = true,
	groups = {crumbly=2, falling_node=1},
	sounds = default.node_sound_dirt_defaults({
		footstep = {name="default_gravel_footstep", gain=0.5},
		dug = {name="default_gravel_footstep", gain=1.0},
	}),
})


minetest.register_node("misc:track", {
        description = "Track",
        drawtype = "nodebox",
        tiles = {"misc_track_top.png",
                "misc_track_bottom.png",
                "misc_track_side.png",
                "misc_track_side.png",
                "misc_track.png",
                "misc_track.png"},
        paramtype = "light",
        paramtype2 = "facedir",
		  sunlight_propagates = true,
        walkable = true,
        node_box = {
                type = "fixed",
                fixed = {
                        {-1.5, -0.5, -0.25, 1.5, -0.3125, 0.25},
			{-1.125, -0.3125, -0.5, -0.875, 0, 0.5},
			{0.875, -0.3125, -0.5, 1.125, 0, 0.5},
                },
        },
        selection_box = {
                type = "fixed",
                fixed = {
                	{-1.5, -0.5, -0.25, 1.5, -0.3125, 0.25},
			{-1.125, -0.3125, -0.5, -0.875, 0, 0.5},
			{0.875, -0.3125, -0.5, 1.125, 0, 0.5},
       		},
        },
        groups = {choppy=2,oddly_breakable_by_hand=3,flammable=2},
        legacy_wallmounted = true,
        sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("misc:track_crossing", {
        description = "Track Crossing",
        drawtype = "nodebox",
        tiles = {"misc_track_crossing.png",
                "default_wood.png",
                "default_wood.png",
                "default_wood.png",
                "default_wood.png",
                "default_wood.png"},
        paramtype = "light",
        paramtype2 = "facedir",
		  sunlight_propagates = true,
        walkable = true,
        node_box = {
                type = "fixed",
                fixed = {
                        {-0.5, -0.5, -0.5, 0.5, 0, 0.5},
                },
        },
        selection_box = {
                type = "fixed",
                fixed = {
                	{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
       		},
        },
        groups = {choppy=2,oddly_breakable_by_hand=3,flammable=2},
        legacy_wallmounted = true,
        sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("misc:powerline_with_support", {
        description = "Power Line With Support",
        drawtype = "nodebox",
        tiles = {"misc_powerline_with_support_top.png",
                "misc_powerline_with_support_bottom.png",
                "misc_powerline_with_support_side.png",
                "misc_powerline_with_support_side.png",
                "misc_powerline_with_support_sideb.png",
                "misc_powerline_with_support_sideb.png"},
        paramtype = "light",
        paramtype2 = "facedir",
		  sunlight_propagates = true,
        walkable = true,
        node_box = {
                type = "fixed",
                fixed = {
                        {-0.5, -0.3125, 0, 0.5, 0.1875, 0.5},
                        {-0.0625, 0.375, -0.5, 0.0625, 0.5, 0.5},
                        {-0.125, 0.1875, 0.1875, 0.125, 0.375, 0.3125},
                },
        },
        selection_box = {
                type = "fixed",
                fixed = {
                        {-0.5, -0.3125, 0, 0.5, 0.1875, 0.5},
                        {-0.0625, 0.375, -0.5, 0.0625, 0.5, 0.5},
                        {-0.125, 0.1875, 0.1875, 0.125, 0.375, 0.3125},
       		},
        },
        groups = {choppy=2,oddly_breakable_by_hand=3,flammable=2},
        legacy_wallmounted = true,
        sounds = default.node_sound_wood_defaults(),
})


minetest.register_node("misc:powerline_support", {
        description = "Power Line Support",
        drawtype = "nodebox",
        tiles = {"default_wood.png",
                "default_wood.png",
                "default_wood.png",
                "default_wood.png",
                "default_wood.png",
                "default_wood.png"},
        paramtype = "light",
        paramtype2 = "facedir",
		  sunlight_propagates = true,
        walkable = true,
        node_box = {
                type = "fixed",
                fixed = {
                        {-0.5, -0.3125, 0, 0.5, 0.1875, 0.5},
                },
        },
        selection_box = {
                type = "fixed",
                fixed = {
                        {-0.5, -0.3125, 0, 0.5, 0.1875, 0.5},
       		},
        },
        groups = {choppy=2,oddly_breakable_by_hand=3,flammable=2},
        legacy_wallmounted = true,
        sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("misc:powerline", {
        description = "Power Line",
        drawtype = "nodebox",
        tiles = {"misc_asphalt.png",
                "misc_asphalt.png",
                "misc_asphalt.png",
                "misc_asphalt.png",
                "misc_asphalt.png",
                "misc_asphalt.png"},
        paramtype = "light",
        paramtype2 = "facedir",
		  sunlight_propagates = true,
        walkable = true,
        node_box = {
                type = "fixed",
                fixed = {
                        {-0.0625, 0.375, -0.5, 0.0625, 0.5, 0.5},
                },
        },
        selection_box = {
                type = "fixed",
                fixed = {
                        {-0.0625, 0.375, -0.5, 0.0625, 0.5, 0.5},
       		},
        },
        groups = {choppy=2,oddly_breakable_by_hand=3,flammable=2},
        legacy_wallmounted = true,
        sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("misc:powerline_clean", {
        description = "Power Line",
        drawtype = "nodebox",
        tiles = {"misc_copper.png",
                "misc_copper.png",
                "misc_copper.png",
                "misc_copper.png",
                "misc_copper.png",
                "misc_copper.png"},
        paramtype = "light",
        paramtype2 = "facedir",
		  sunlight_propagates = true,
        walkable = true,
        node_box = {
                type = "fixed",
                fixed = {
                        {-0.0625, 0.375, -0.5, 0.0625, 0.5, 0.5},
                },
        },
        selection_box = {
                type = "fixed",
                fixed = {
                        {-0.0625, 0.375, -0.5, 0.0625, 0.5, 0.5},
       		},
        },
        groups = {choppy=2,oddly_breakable_by_hand=3,flammable=2},
        legacy_wallmounted = true,
        sounds = default.node_sound_wood_defaults(),
})






if minetest.get_modpath("noncubic") then


noncubic.register_stick(":noncubic", "truss","misc:truss",
{cracky=1,not_in_creative_inventory=1},
{"misc_truss.png"},
"Truss")

noncubic.register_elements(":noncubic", "truss","misc:slate",
{cracky=1,not_in_creative_inventory=1},
{"misc_truss.png"},
"Truss")

noncubic.register_all(":noncubic", "truss","misc:slate",
{cracky=1,not_in_creative_inventory=1},
{"misc_truss.png"},
"Truss")

noncubic.register_stick(":noncubic", "concrete_tile","misc:concrete_tile",
{cracky=1,not_in_creative_inventory=1},
{"misc_concrete_tile.png"},
"Concrete Tile")

noncubic.register_elements(":noncubic", "concrete_tile","misc:concrete_tile",
{cracky=1,not_in_creative_inventory=1},
{"misc_concrete_tile.png"},
"Concrete Tile")

noncubic.register_all(":noncubic", "concrete_tile","misc:concrete_tile",
{cracky=1,not_in_creative_inventory=1},
{"misc_concrete_tile.png"},
"Concrete Tile")

noncubic.register_stick(":noncubic", "concrete","misc:concrete",
{cracky=1,not_in_creative_inventory=1},
{"misc_concrete.png"},
"Concrete")

noncubic.register_elements(":noncubic", "concrete","misc:concrete",
{cracky=1,not_in_creative_inventory=1},
{"misc_concrete.png"},
"Concrete")

noncubic.register_all(":noncubic", "concrete","misc:concrete",
{cracky=1,not_in_creative_inventory=1},
{"misc_concrete.png"},
"Concrete")

noncubic.register_stick(":noncubic", "concrete_splitstone","misc:concrete_splitstone",
{cracky=1,not_in_creative_inventory=1},
{"misc_concrete_splitstone.png"},
"Concrete Splitstone")

noncubic.register_elements(":noncubic", "concrete_splitstone","misc:concrete_splitstone",
{cracky=1,not_in_creative_inventory=1},
{"misc_concrete_splitstone.png"},
"Concrete Splitstone")

noncubic.register_all(":noncubic", "concrete_splitstone","misc:concrete_splitstone",
{cracky=1,not_in_creative_inventory=1},
{"misc_concrete_splitstone.png"},
"Concrete Splitstone")

noncubic.register_stick(":noncubic", "tanstone","misc:tanstone",
{cracky=1,not_in_creative_inventory=1},
{"misc_tanstone.png"},
"Tan Stone")

noncubic.register_elements(":noncubic", "tanstone","misc:tanstone",
{cracky=1,not_in_creative_inventory=1},
{"misc_tanstone.png"},
"Tan Stone")

noncubic.register_all(":noncubic", "tanstone","misc:tanstone",
{cracky=1,not_in_creative_inventory=1},
{"misc_tanstone.png"},
"Tan Stone")

noncubic.register_stick(":noncubic", "tanstone_bricks","misc:tanstone_bricks",
{cracky=1,not_in_creative_inventory=1},
{"misc_tanstone_bricks.png"},
"Tan Stone Bricks")

noncubic.register_elements(":noncubic", "tanstone_bricks","misc:tanstone_bricks",
{cracky=1,not_in_creative_inventory=1},
{"misc_tanstone_bricks.png"},
"Tan Stone Bricks")

noncubic.register_all(":noncubic", "tanstone_bricks","misc:tanstone_bricks",
{cracky=1,not_in_creative_inventory=1},
{"misc_tanstone_bricks.png"},
"Tan Stone Bricks")

noncubic.register_stick(":noncubic", "tanstone_tile","misc:tanstone_tile",
{cracky=1,not_in_creative_inventory=1},
{"misc_tanstone_tile.png"},
"Tan Stone Tile")

noncubic.register_elements(":noncubic", "tanstone_tile","misc:tanstone_tile",
{cracky=1,not_in_creative_inventory=1},
{"misc_tanstone_tile.png"},
"Tan Stone Tile")

noncubic.register_all(":noncubic", "tanstone_tile","misc:tanstone_tile",
{cracky=1,not_in_creative_inventory=1},
{"misc_tanstone_tile.png"},
"Tan Stone Tile")

noncubic.register_stick(":noncubic", "mossy_stone","misc:mossy_stone",
{cracky=1,not_in_creative_inventory=1},
{"misc_mossy_stone.png"},
"Mossy Stone")

noncubic.register_elements(":noncubic", "mossy_stone","misc:mossy_stone",
{cracky=1,not_in_creative_inventory=1},
{"misc_mossy_stone.png"},
"Mossy Stone")

noncubic.register_all(":noncubic", "mossy_stone","misc:mossy_stone",
{cracky=1,not_in_creative_inventory=1},
{"misc_mossy_stone.png"},
"Mossy Stone")

noncubic.register_stick(":noncubic", "mossy_brick","misc:mossy_brick",
{cracky=1,not_in_creative_inventory=1},
{"misc_mossy_brick.png"},
"Mossy Brick")

noncubic.register_elements(":noncubic", "mossy_brick","misc:mossy_brick",
{cracky=1,not_in_creative_inventory=1},
{"misc_mossy_brick.png"},
"Mossy Brick")

noncubic.register_all(":noncubic", "mossy_brick","misc:mossy_brick",
{cracky=1,not_in_creative_inventory=1},
{"misc_mossy_brick.png"},
"Mossy Brick")

noncubic.register_stick(":noncubic", "mossy_stone_tile","misc:mossy_stone_tile",
{cracky=1,not_in_creative_inventory=1},
{"misc_mossy_stone_tile.png"},
"Mossy Stone Tile")

noncubic.register_elements(":noncubic", "mossy_stone_tile","misc:mossy_stone_tile",
{cracky=1,not_in_creative_inventory=1},
{"misc_mossy_stone_tile.png"},
"Mossy Stone Tile")

noncubic.register_all(":noncubic", "mossy_stone_tile","misc:mossy_stone_tile",
{cracky=1,not_in_creative_inventory=1},
{"misc_mossy_stone_tile.png"},
"Mossy Stone Tile")

noncubic.register_stick(":noncubic", "gray_sandstone","misc:gray_sandstone",
{cracky=1,not_in_creative_inventory=1},
{"misc_gray_sandstone.png"},
"Gray Sandstone")

noncubic.register_elements(":noncubic", "gray_sandstone","misc:gray_sandstone",
{cracky=1,not_in_creative_inventory=1},
{"misc_gray_sandstone.png"},
"Gray Sandstone")

noncubic.register_all(":noncubic", "gray_sandstone","misc:gray_sandstone",
{cracky=1,not_in_creative_inventory=1},
{"misc_gray_sandstone.png"},
"Gray Sandstone")

noncubic.register_stick(":noncubic", "clean_copper","misc:clean_copper",
{cracky=1,not_in_creative_inventory=1},
{"misc_cleancopper.png"},
"Clean Copper")

noncubic.register_elements(":noncubic", "clean_copper","misc:clean_copper",
{cracky=1,not_in_creative_inventory=1},
{"misc_cleancopper.png"},
"Clean Copper")

noncubic.register_all(":noncubic", "clean_copper","misc:clean_copper",
{cracky=1,not_in_creative_inventory=1},
{"misc_cleancopper.png"},
"Clean Copper")

noncubic.register_stick(":noncubic", "green_copper","misc:green_copper",
{cracky=1,not_in_creative_inventory=1},
{"misc_greencopper.png"},
"Green Copper")

noncubic.register_elements(":noncubic", "green_copper","misc:green_copper",
{cracky=1,not_in_creative_inventory=1},
{"misc_greencopper.png"},
"Green Copper")

noncubic.register_all(":noncubic", "green_copper","misc:green_copper",
{cracky=1,not_in_creative_inventory=1},
{"misc_greencopper.png"},
"Green Copper")

end



