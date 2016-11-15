
	local on_manhole_cover_punched = function(pos, node, puncher)
		if string.find(node.name, "mystreets:manhole_cover") ~= nil then
			local name = node.name
			local state = node.param2
			if name == "mystreets:manhole_cover_opened" then
				node.name = "mystreets:manhole_cover_closed"
				node.param2 = state
			else
				node.name = "mystreets:manhole_cover_opened"
				node.param2 = state
			end
			minetest.env:add_node(pos, {
				name = node.name,
				param2 = node.param2
			})
		end

	end

minetest.register_node("mystreets:manhole_cover_closed", {
		description = "Manhole cover",
		tile_images = {
			"mystreets_manhole_cover_top_bottom.png",
			"mystreets_manhole_cover_top_bottom.png",
			"mystreets_manhole_cover_side.png",
			"mystreets_manhole_cover_side.png",
			"mystreets_manhole_cover_side.png",
			"mystreets_manhole_cover_side.png"
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

	minetest.register_node("mystreets:manhole_cover_opened", {
		tile_images = {
			"mystreets_manhole_cover_side.png",
			"mystreets_manhole_cover_side.png",
			"mystreets_manhole_cover_side.png",
			"mystreets_manhole_cover_side.png",
			"mystreets_manhole_cover_top_bottom.png",
			"mystreets_manhole_cover_top_bottom.png"
		},
		drawtype = "nodebox",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky=2},
		drop = "mystreets:manhole_cover_closed",
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
minetest.register_node("mystreets:grate", {
	description = "Grate",
	tile_images = {
			"mystreets_concrete.png",
			"mystreets_concrete.png",
			"mystreets_concrete.png",
			"mystreets_concrete.png",
			"mystreets_concrete.png",
			"mystreets_concrete.png"
		},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, -0.4375, -0.4375, 0.5},
			{0.4375, -0.5, -0.5, 0.5, -0.4375, 0.5}, 
			{-0.5, -0.5, 0.4375, 0.5, -0.4375, 0.5},
			{-0.5, -0.5, -0.5, 0.5, -0.4375, -0.4375}, 
			{-0.5, -0.5, -0.375, 0.5, -0.4375, -0.3125},
			{-0.5, -0.5, -0.25, 0.5, -0.4375, -0.1875}, 
			{-0.5, -0.5, -0.125, 0.5, -0.4375, -0.0625},
			{-0.5, -0.5, 0.3125, 0.5, -0.4375, 0.375}, 
			{-0.5, -0.5, 0.1875, 0.5, -0.4375, 0.25}, 
			{-0.5, -0.5, 0.0625, 0.5, -0.4375, 0.125}, 
			}
		},
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5}
		},

	})

minetest.register_node("mystreets:manhole", {
	description = "Manhole",
	tile_images = {
			"mystreets_manhole_top_closed.png",
			"mystreets_concrete.png",
			"mystreets_concrete.png",
			"mystreets_concrete.png",
			"mystreets_concrete.png",
			"mystreets_concrete.png"
		},
	drawtype = "nodebox",
	paramtype = "light",
--	paramtype2 = "facedir",
	walkable = true,
	climbable = false,
	groups = {cracky=2},
	node_box = {
		type = "fixed",
		fixed = {
			{0.4375, -0.5, -0.5, 0.5, 0.5, 0.5}, 
			{-0.5, -0.5, -0.5, -0.4375, 0.5, 0.5}, 
			{-0.5, -0.5, -0.5, 0.5, 0.5, -0.4375}, 
			{-0.5, -0.5, 0.4375, 0.5, 0.5, 0.5}, 
			{0.375, -0.5, -0.5, 0.5, 0.5, -0.1875}, 
			{0.1875, -0.5, -0.5, 0.5, 0.5, -0.375}, 
			{0.3125, -0.5, -0.5, 0.5, 0.5, -0.3125}, 
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.1875},
			{-0.5, -0.5, -0.5, -0.1875, 0.5, -0.375}, 
			{-0.5, -0.5, -0.5, -0.3125, 0.5, -0.3125},
			{-0.5, -0.5, 0.375, -0.1875, 0.5, 0.5}, 
			{-0.5, -0.5, 0.1875, -0.375, 0.5, 0.5}, 
			{-0.5, -0.5, 0.3125, -0.3125, 0.5, 0.5}, 
			{0.375, -0.5, 0.1875, 0.5, 0.5, 0.5}, 
			{0.1875, -0.5, 0.375, 0.5, 0.5, 0.5}, 
			{0.3125, -0.5, 0.3125, 0.5, 0.5, 0.5}, 
			{0.3125, 0.4375, -0.5, 0.5, 0.5, -0.125}, 
			{0.125, 0.4375, -0.5, 0.5, 0.5, -0.3125}, 
			{0.25, 0.4375, -0.5, 0.5, 0.5, -0.25}, 
			{-0.5, 0.4375, -0.5, -0.3125, 0.5, -0.125}, 
			{-0.5, 0.4375, -0.5, -0.1875, 0.5, -0.3125}, 
			{-0.5, 0.4375, -0.5, -0.25, 0.5, -0.25}, 
			{-0.5, 0.4375, 0.3125, -0.125, 0.5, 0.5}, 
			{-0.5, 0.4375, 0.125, -0.3125, 0.5, 0.5}, 
			{-0.5, 0.4375, 0.25, -0.25, 0.5, 0.5}, 
			{0.3125, 0.4375, 0.125, 0.5, 0.5, 0.5}, 
			{0.125, 0.4375, 0.3125, 0.5, 0.5, 0.5}, 
			{0.25, 0.4375, 0.25, 0.5, 0.5, 0.5}, 
			{0.375, 0.375, -0.5, 0.5, 0.5, 0.5},
			{-0.5, 0.4375, 0.375, 0.5, 0.5, 0.5},
			{-0.5, 0.4375, -0.5, -0.375, 0.5, 0.5},
			{-0.5, 0.4375, -0.5, 0.5, 0.5, -0.375}, 
			{-0.0625, 0.4375, -0.5, 0.0625, 0.5, 0.5},
			{0.125, 0.4375, -0.5, 0.1875, 0.5, 0.5}, 
			{0.25, 0.4375, -0.5, 0.3125, 0.5, 0.5}, 
			{-0.1875, 0.4375, -0.5, -0.125, 0.5, 0.5},
			{-0.3125, 0.4375, -0.5, -0.25, 0.5, 0.5},
			{0.25, 0.1875, -0.5, 0.3125, 0.25, 0.5}, 
			{0.25, -0.3125, -0.5, 0.3125, -0.25, 0.5},
			}
		},
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5}
		},
	on_punch = function(pos, node, puncher, pointed_thing)
		minetest.set_node(pos,{name = "mystreets:manhole_open", param2 = node.param2})
	end,
	})

--Manhole open
minetest.register_node("mystreets:manhole_open", {
	description = "Manhole Open",
	tile_images = {
			"mystreets_manhole_top_closed.png",
			"mystreets_concrete.png",
			"mystreets_concrete.png",
			"mystreets_concrete.png",
			"mystreets_concrete.png",
			"mystreets_concrete.png"
		},
	drawtype = "nodebox",
	paramtype = "light",
--	paramtype2 = "facedir",
	walkable = false,
	climbable = true,
	drop = "mystreets:manhole",
	groups = {cracky=2, not_in_creative_inventory = 1},
	node_box = {
		type = "fixed",
		fixed = {
			{0.4375, -0.5, -0.5, 0.5, 0.5, 0.5}, 
			{-0.5, -0.5, -0.5, -0.4375, 0.5, 0.5}, 
			{-0.5, -0.5, -0.5, 0.5, 0.5, -0.4375}, 
			{-0.5, -0.5, 0.4375, 0.5, 0.5, 0.5}, 
			{0.375, -0.5, -0.5, 0.5, 0.5, -0.1875}, 
			{0.1875, -0.5, -0.5, 0.5, 0.5, -0.375}, 
			{0.3125, -0.5, -0.5, 0.5, 0.5, -0.3125}, 
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.1875}, 
			{-0.5, -0.5, -0.5, -0.1875, 0.5, -0.375}, 
			{-0.5, -0.5, -0.5, -0.3125, 0.5, -0.3125}, 
			{-0.5, -0.5, 0.375, -0.1875, 0.5, 0.5}, 
			{-0.5, -0.5, 0.1875, -0.375, 0.5, 0.5}, 
			{-0.5, -0.5, 0.3125, -0.3125, 0.5, 0.5}, 
			{0.375, -0.5, 0.1875, 0.5, 0.5, 0.5}, 
			{0.1875, -0.5, 0.375, 0.5, 0.5, 0.5}, 
			{0.3125, -0.5, 0.3125, 0.5, 0.5, 0.5}, 
			{0.4375, 0.5, -0.1875, 0.5, 0.5625, 0.1875}, 
			{0.4375, 0.625, -0.375, 0.5, 0.6875, 0.375}, 
			{0.4375, 0.5625, 0.125, 0.5, 0.625, 0.3125}, 
			{0.4375, 0.5625, -0.3125, 0.5, 0.625, -0.125}, 
			{0.4375, 0.75, -0.4375, 0.5, 0.8125, 0.4375}, 
			{0.4375, 0.6875, -0.375, 0.5, 0.75, -0.3125}, 
			{0.4375, 0.6875, 0.3125, 0.5, 0.75, 0.375}, 
			{0.4375, 0.875, -0.4375, 0.5, 0.9375, 0.4375}, 
			{0.4375, 0.8125, 0.375, 0.5, 0.9375, 0.4375},
			{0.4375, 0.8125, -0.4375, 0.5, 0.875, -0.375},
			{-0.5, 0.5, -0.1875, -0.4375, 0.5625, 0.1875}, 
			{-0.5, 0.625, -0.375, -0.4375, 0.6875, 0.375},
			{-0.5, 0.5625, 0.125, -0.4375, 0.625, 0.3125},
			{-0.5, 0.5625, -0.3125, -0.4375, 0.625, -0.125},
			{-0.5, 0.75, -0.4375, -0.4375, 0.8125, 0.4375},
			{-0.5, 0.6875, -0.375, -0.4375, 0.75, -0.3125}, 
			{-0.5, 0.6875, 0.3125, -0.4375, 0.75, 0.375},
			{-0.5, 0.875, -0.4375, -0.4375, 0.9375, 0.4375},
			{-0.5, 0.8125, 0.375, -0.4375, 0.9375, 0.4375},
			{-0.5, 0.8125, -0.4375, -0.4375, 0.875, -0.375},
			{0.25, 0.1875, -0.5, 0.3125, 0.25, 0.5},
			{0.25, -0.3125, -0.5, 0.3125, -0.25, 0.5}, 
			}
		},
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5}
		},
	on_punch = function(pos, node, puncher, pointed_thing)
		minetest.set_node(pos,{name = "mystreets:manhole", param2 = node.param2})
	end,
	on_construct = function(pos)
		local timer = minetest.get_node_timer(pos)
		timer:start(10)
	end,
	on_timer = function(pos, elapsed)
		minetest.set_node(pos,{name = "mystreets:manhole"})
	end,
	})

--Manhole shaft
minetest.register_node("mystreets:manhole_shaft", {
	description = "Manhole Open",
	tile_images = {
			"mystreets_concrete.png",
			"mystreets_concrete.png",
			"mystreets_concrete.png",
			"mystreets_concrete.png",
			"mystreets_concrete.png",
			"mystreets_concrete.png"
		},
	drawtype = "nodebox",
	paramtype = "light",
--	paramtype2 = "facedir",
	walkable = false,
	climbable = true,
	groups = {cracky=2, not_in_creative_inventory = 0},
	node_box = {
		type = "fixed",
		fixed = {
			{0.4375, -0.5, -0.5, 0.5, 0.5, 0.5}, 
			{-0.5, -0.5, -0.5, -0.4375, 0.5, 0.5},
			{-0.5, -0.5, -0.5, 0.5, 0.5, -0.4375},
			{-0.5, -0.5, 0.4375, 0.5, 0.5, 0.5},
			{0.375, -0.5, -0.5, 0.5, 0.5, -0.1875},
			{0.1875, -0.5, -0.5, 0.5, 0.5, -0.375},
			{0.3125, -0.5, -0.5, 0.5, 0.5, -0.3125}, 
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.1875}, 
			{-0.5, -0.5, -0.5, -0.1875, 0.5, -0.375},
			{-0.5, -0.5, -0.5, -0.3125, 0.5, -0.3125}, 
			{-0.5, -0.5, 0.375, -0.1875, 0.5, 0.5},
			{-0.5, -0.5, 0.1875, -0.375, 0.5, 0.5}, 
			{-0.5, -0.5, 0.3125, -0.3125, 0.5, 0.5},
			{0.375, -0.5, 0.1875, 0.5, 0.5, 0.5}, 
			{0.1875, -0.5, 0.375, 0.5, 0.5, 0.5}, 
			{0.3125, -0.5, 0.3125, 0.5, 0.5, 0.5},
			{0.25, 0.1875, -0.5, 0.3125, 0.25, 0.5}, 
			{0.25, -0.3125, -0.5, 0.3125, -0.25, 0.5},
			}
		},
	selection_box = {
		type = "fixed",
		fixed = {
			{0.4375, -0.5, -0.5, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.4375, 0.5, 0.5}, 
			{-0.5, -0.5, -0.5, 0.5, 0.5, -0.4375},
			{-0.5, -0.5, 0.4375, 0.5, 0.5, 0.5}, 
			}
		},

	})
