
--street light
minetest.register_node("mystreets:street_light", {
	description = "Street Light",
	tiles = {
		"mystreets_post_vert.png",
		"mystreets_streetlight_bottom.png",
		"mystreets_streetlight_side.png",
		"mystreets_streetlight_side.png",
		"mystreets_streetlight_side.png",
		"mystreets_streetlight_side.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	light_source = 14,
	paramtype2 = "facedir",
	groups = {cracky = 2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.0625, -0.125, 0.125, 0.0625, 0.125, 0.5}, 
			{-0.125, -0.0625, 0.125, 0.125, 0.0625, 0.5}, 
			{-0.25, -0.125, -0.4375, 0.25, 0.125, 0.0625}, 
			{-0.1875, -0.125, -0.5, 0.1875, 0.125, 0.125}, 
			{-0.1875, -0.1875, -0.4375, 0.1875, 0.1875, 0.0625}, 
			{-0.125, -0.25, -0.375, 0.125, 0.1875, 0}, 
		}
	},

})
--Craft
minetest.register_craft({
	output = "mystreets:street_light 2",
	recipe = {
		{"","mystreets:hardened_steel","mystreets:hardened_steel"},
		{"mystreets:hardened_steel","default:torch","mystreets:hardened_steel"},
		{"","default:glass",""},
	}
})

--dome street light
minetest.register_node("mystreets:street_dome_light", {
	description = "Dome Street Light",
	tiles = {
		"mystreets_post_hor.png",
		"mystreets_streetlight_dome_bottom.png",
		"mystreets_streetlight_dome_side.png",
		"mystreets_streetlight_dome_side.png",
		"mystreets_streetlight_dome_side.png",
		"mystreets_streetlight_dome_side.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	light_source = 14,
	paramtype2 = "facedir",
	groups = {cracky = 2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.1875, -0.5, -0.25, 0.1875, 0.1875, 0.25}, 
			{-0.25, -0.5, -0.1875, 0.25, 0.1875, 0.1875}, 
			{-0.3125, -0.4375, -0.25, 0.3125, 0.1875, 0.25}, 
			{-0.25, -0.4375, -0.3125, 0.25, 0.1875, 0.3125}, 
			{-0.375, -0.25, -0.4375, 0.375, -0.0625, 0.4375}, 
			{-0.4375, -0.25, -0.375, 0.4375, -0.0625, 0.375}, 
			{-0.3125, -0.1875, -0.375, 0.3125, 0.0625, 0.375}, 
			{-0.375, -0.125, -0.3125, 0.375, 0.0625, 0.3125}, 
			{-0.1875, 0.0625, -0.1875, 0.1875, 0.375, 0.1875}, 
			{-0.125, -0.5, -0.0625, 0.125, 0.5, 0.0625}, 
			{-0.0625, -0.5, -0.125, 0.0625, 0.5, 0.125}, 
		}
	},

})
--Craft
minetest.register_craft({
	output = "mystreets:street_dome_light 2",
	recipe = {
		{"","mystreets:hardened_steel",""},
		{"mystreets:hardened_steel","default:torch","mystreets:hardened_steel"},
		{"mystreets:hardened_steel","default:glass","mystreets:hardened_steel"},
	}
})


