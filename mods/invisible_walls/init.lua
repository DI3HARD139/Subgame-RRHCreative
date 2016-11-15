minetest.register_node("invisible_walls:air", {
    drawtype = "airlike",
	description = "Invisi-Wall",
	tile_images = {"clouds.png"},
	groups={crumbly = 1},
})
minetest.register_abm(
	{nodenames = {"cloud"},
	interval = 30,
	chance = 1,
	action = function(pos)
		minetest.env:add_node(pos, {name="default:invisible_walls:air"})
	end,
	use_texture_alpha = true
})