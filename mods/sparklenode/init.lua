minetest.register_node("sparklenode:sparkle_block", {
	description = "SparkleNode Block",
	tile_images = {"sparkle_block.png"},
	groups={choppy = 3},})
minetest.register_craft({
	output = '"sparklenode:sparkle_block" 1',
	recipe = {
		{'default:stone', 'default:copper_lump', 'default:stone'},
		{'default:copper_lump', 'default:mese_block', 'default:copper_lump'},
		{'default:stone', 'default:copper_lump', 'default:stone'},
	}
})
minetest.register_abm(
	{nodenames = {"sparkle_block"},
	interval = 30,
	chance = 1,
	action = function(pos)
		minetest.env:add_node(pos, {name="default:sparklenode:sparkle_block"})
	end,
})
minetest.register_tool("sparklenode:sparkle_pickaxe", {
	description = "SparkleNode Pickaxe",
	inventory_image = "sparkle_pickaxe.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=2,
		groupcaps={
	        cracky = {times={[1]=4.00, [2]=1.60, [3]=0.80}, uses=20, maxlevel=2},
		},
        damage_groups = {fleshy=4},
    },
})
minetest.register_craft({
	output = 'sparklenode:sparkle_pickaxe',
	recipe = {
		{'sparklenode:sparkle_block', 'sparklenode:sparkle_block', 'sparklenode:sparkle_block'},
		{'', 'default:stick', ''},
		{'', 'default:stick', ''},
	}
})
minetest.add_node({x=1,y=1,z=1},{name="sparklenode:sparkle_block"})