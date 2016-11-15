minetest.register_node("slimenodes:slime_liquid_cyan", {
	description = "cyan liquid slime",
	inventory_image = minetest.inventorycube("slimenodes_liquidslime_cyan.png"),
	drawtype = "liquid",
	tiles = { "slimenodes_liquidslime_cyan.png" },
	special_tiles = { { name = "slimenodes_liquidslime_cyan.png", backface_culling = false } },
	alpha = 120,
	sunlight_propagates = true,
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = true,
	buildable_to = false,
	drop = "slimenodes:slime_liquid_cyan",
	liquidtype = "source",
	liquid_alternative_flowing = "slimenodes:slime_liquid_cyan",
	liquid_alternative_source = "slimenodes:slime_liquid_cyan",
	liquid_viscosity = 1,
	liquid_range = 0,
	liquid_renewable = false,
	liquids_pointable = true,
	drowning = 0,
	post_effect_color = {a=16, r=0, g=255, b=255},
	groups = {liquid=3, slimey=3, oddly_breakable_by_hand=1},
	sounds = {
		dig = {name="slimenodes_dig", gain=0.3},
		dug = {name="slimenodes_dug", gain=0.6},
		place = {name="slimenodes_place", gain=0.6},
	}
})

minetest.register_node("slimenodes:slime_liquid_green", {
	description = "green liquid slime",
	inventory_image = minetest.inventorycube("slimenodes_liquidslime_green.png"),
	drawtype = "liquid",
	tiles = { "slimenodes_liquidslime_green.png" },
	special_tiles = { { name = "slimenodes_liquidslime_green.png", backface_culling = false } },
	alpha = 170,
	sunlight_propagates = false,
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = true,
	buildable_to = false,
	drop = "slimenodes:slime_liquid_green",
	liquidtype = "source",
	liquid_alternative_flowing = "slimenodes:slime_liquid_green",
	liquid_alternative_source = "slimenodes:slime_liquid_green",
	liquid_viscosity = 2,
	liquid_range = 0,
	liquid_renewable = false,
	liquids_pointable = true,
	drowning = 0,
	post_effect_color = {a=64, r=100, g=200, b=100},
	groups = {liquid=3, slimey=3, level=1},
	sounds = {
		dig = {name="slimenodes_dig", gain=0.3},
		dug = {name="slimenodes_dug", gain=0.6},
		place = {name="slimenodes_place", gain=0.6},
	}
})

minetest.register_node("slimenodes:slime_liquid_orange", {
	description = "orange liquid slime",
	inventory_image = minetest.inventorycube("slimenodes_liquidslime_orange.png"),
	drawtype = "liquid",
	tiles = { "slimenodes_liquidslime_orange.png" },
	special_tiles = { { name = "slimenodes_liquidslime_orange.png", backface_culling = false } },
	alpha = 200,
	sunlight_propagates = false,
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = true,
	buildable_to = false,
	drop = "slimenodes:slime_liquid_orange",
	liquidtype = "source",
	liquid_alternative_flowing = "slimenodes:slime_liquid_orange",
	liquid_alternative_source = "slimenodes:slime_liquid_orange",
	liquid_viscosity = 4,
	liquid_range = 0,
	liquid_renewable = false,
	liquids_pointable = true,
	drowning = 0,
	post_effect_color = {a=96, r=200, g=100, b=0},
	groups = {liquid=3, slimey=3, level=2, flammable=1},
	sounds = {
		dig = {name="slimenodes_dig", gain=0.3},
		dug = {name="slimenodes_dug", gain=0.6},
		place = {name="slimenodes_place", gain=0.6},
	}
})

minetest.register_node("slimenodes:slime_liquid_violet", {
	description = "violet liquid slime",
	inventory_image = minetest.inventorycube("slimenodes_liquidslime_violet.png"),
	drawtype = "liquid",
	tiles = { "slimenodes_liquidslime_violet.png" },
	special_tiles = { { name = "slimenodes_liquidslime_violet.png", backface_culling = false } },
	alpha = 220,
	sunlight_propagates = false,
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = true,
	buildable_to = false,
	drop = "slimenodes:slime_liquid_violet",
	liquidtype = "source",
	liquid_alternative_flowing = "slimenodes:slime_liquid_violet",
	liquid_alternative_source = "slimenodes:slime_liquid_violet",
	liquid_viscosity = 6,
	liquid_range = 0,
	liquid_renewable = false,
	liquids_pointable = true,
	drowning = 0,
	post_effect_color = {a=128, r=50, g=0, b=200},
	groups = {liquid=3, slimey=3, level=3},
	sounds = {
		dig = {name="slimenodes_dig", gain=0.3},
		dug = {name="slimenodes_dug", gain=0.6},
		place = {name="slimenodes_place", gain=0.6},
	}
})


minetest.register_node("slimenodes:slime_solid_cyan", {
	description = "cyan solid slime",
	tiles = { "slimenodes_solidslime_cyan.png" },
	walkable = true,
	groups = {slimey=3, level=1},
	sounds = {
		dig = {name="slimenodes_dig", gain=0.3},
		dug = {name="slimenodes_dug", gain=0.6},
		place = {name="slimenodes_place", gain=0.6},
		footstep = {name="slimenodes_step", gain=0.2},
	}
})

minetest.register_node("slimenodes:slime_solid_green", {
	description = "green solid slime",
	tiles = { "slimenodes_solidslime_green.png" },
	walkable = true,
	groups = {slimey=3, fall_damage_add_percent=-10, level=2},
	sounds = {
		dig = {name="slimenodes_dig", gain=0.3},
		dug = {name="slimenodes_dug", gain=0.6},
		place = {name="slimenodes_place", gain=0.6},
		footstep = {name="slimenodes_step", gain=0.3},
	}
})

minetest.register_node("slimenodes:slime_solid_orange", {
	description = "orange solid slime",
	tiles = { "slimenodes_solidslime_orange.png" },
	walkable = true,
	groups = {slimey=3, fall_damage_add_percent=-20, level=2, flammable=1},
	sounds = {
		dig = {name="slimenodes_dig", gain=0.3},
		dug = {name="slimenodes_dug", gain=0.6},
		place = {name="slimenodes_place", gain=0.6},
		footstep = {name="slimenodes_step", gain=0.35},
	}
})

minetest.register_node("slimenodes:slime_solid_violet", {
	description = "violet solid slime",
	tiles = { "slimenodes_solidslime_violet.png" },
	walkable = true,
	groups = {slimey=3, fall_damage_add_percent=-30, disable_jump=1, level=3},
	sounds = {
		dig = {name="slimenodes_dig", gain=0.3},
		dug = {name="slimenodes_dug", gain=0.6},
		place = {name="slimenodes_place", gain=0.6},
		footstep = {name="slimenodes_step", gain=0.4},
	}
})


minetest.register_tool("slimenodes:collector_lvl1", {
	description = "slime collector level 1",
	inventory_image = "slimenodes_collector_lvl1.png",
	liquids_pointable = true,
	tool_capabilities = {
		full_punch_interval = 1,
		groupcaps = {
			slimey = { times = { [3] = 2 }, uses = 0, maxlevel = 1 }
		}
	}
})

minetest.register_tool("slimenodes:collector_lvl2", {
	description = "slime collector level 2",
	inventory_image = "slimenodes_collector_lvl2.png",
	liquids_pointable = true,
	tool_capabilities = {
		full_punch_interval = 1,
		groupcaps = {
			slimey = { times = { [2] = 3, [3] = 1.5 }, uses = 0, maxlevel = 2 }
		}
	}
})

minetest.register_tool("slimenodes:collector_lvl3", {
	description = "slime collector level 3",
	inventory_image = "slimenodes_collector_lvl3.png",
	liquids_pointable = true,
	tool_capabilities = {
		full_punch_interval = 1,
		groupcaps = {
			slimey = { times = { [1] = 4, [2] = 1.5, [3] = 0.75 }, uses = 0, maxlevel = 3 }
		}
	}
})

minetest.register_tool("slimenodes:collector_lvl4", {
	description = "slime collector level 4",
	inventory_image = "slimenodes_collector_lvl4.png",
	liquids_pointable = true,
	tool_capabilities = {
		full_punch_interval = 0.9,
		groupcaps = {
			slimey = { times = { [1] = 1, [2] = 0.5, [3] = 0.1 }, uses = 0, maxlevel = 4 }
		}
	}
})
