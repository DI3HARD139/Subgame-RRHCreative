minetest.register_node("skyscraper_material:dark_steel", {
	description = "Bolted Steel",
	inventory = {"dark_steel"},
	groups = {melty=3, crumbly=3, stone=1},
	tile_images = {"dark_steel.png"},
})
	
minetest.register_node("skyscraper_material:tinted_glass", {
	description = "Black Tinted Glass",
	inventory = {"black tinted glass"},
	paramtype = "light",
	drawtype = "glasslike",
	use_texture_alpha = true,
	groups = {cracky=3, oddly_breakable_by_hand=1},
	tiles = {"black_tinted_glass.png"},
	is_ground_content = false,
	sunlight_propagates = true,
	inventory_image = minetest.inventorycube("black_tinted_glass.png"),
})

minetest.register_craft({
	output = "skyscraper_material:dark_steel",
	recipe = {
			{"default:steelblock", "skyscraper_material:bolts", ""},
			{"", "", ""},
			{"", "", ""}
	}
})

minetest.register_craftitem("skyscraper_material:bolts", {
	description = "Bolts",
	inventory_image = "bolts.png"
})

minetest.register_node("skyscraper_material:plain_black_steel", {
	description = "Plain Black Steel",
	inventory = {"plain black steel"},
	groups = {melty=3, crumbly=3, stone=1},
	tile_images = {"plain_black_steel.png"},
})

minetest.register_node("skyscraper_material:concrete_support", {
	description = "SkyScraper Concrete",
	inventory = {"skyscraper concrete"},
	groups = {cracky=3, explody=3},
	tile_images = {"skyscraper_concrete.png"},
})

minetest.register_node("skyscraper_material:aircraft_warning_light", {
	description = "Aircraft Warning Light",
	inventory = {"aircraft warning light"},
	groups = {crumbly=3, oddly_breakable_by_hand=1},
	light_source = "14",
	tiles = {"aircraft_warning_on.png"}
})

minetest.register_node("skyscraper_material:normal_steel", {
	description = "Normal Steel",
	inventory = {"normal steel"},
	groups = {melty=3, crumbly=3, stone=1},
	tile_images = {"normal_steel.png"},
})