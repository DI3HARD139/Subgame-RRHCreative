-----------------------------------------------------------------------------
--Oil
-----------------------------------------------------------------------------
minetest.register_node("mystreets:oil_flowing", {
	description = "Flowing Oil",
	inventory_image = minetest.inventorycube("mystreets_oil.png"),
	drawtype = "flowingliquid",
	tiles = {"mystreets_oil.png"},
	special_tiles = {
		{
			image="mystreets_oil_flowing_animated.png",
			backface_culling=false,
			animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=4.0}
		},

	},
	alpha = 250, 
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "mystreets:oil_flowing",
	liquid_alternative_source = "mystreets:oil_source",
	liquid_viscosity = 3,
	liquid_renewable = true,
	liquid_range = 3,
	damage_per_second = 1, 
	post_effect_color = {a=250, r=0, g=0, b=0},
	groups = {liquid=2, not_in_creative_inventory=1},
})

minetest.register_node("mystreets:oil_source", {
	description = "Oil Source",
	inventory_image = minetest.inventorycube("mystreets_oil_inv.png"),
	drawtype = "liquid",
	light_source = 14,
	tiles = {
		{name="mystreets_oil_source_animated.png", 
		animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=2.0}}
	},

	alpha = 250,
	paramtype = "light",
	walkable = false,
	pointable = true,
	diggable = true,
	buildable_to = true,
	drop = "mystreets:oil_source",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "mystreets:oil_flowing",
	liquid_alternative_source = "mystreets:oil_source",
	liquid_viscosity = 3,
	liquid_renewable = false,
	liquid_range = 2,
	damage_per_second = 1, 
	post_effect_color = {a=250, r=0, g=0, b=0},
	groups = {liquid=2},
})
--------------------------------------------------------------------------------
--Oil Barrel
--------------------------------------------------------------------------------

minetest.register_node("mystreets:oil_barrel", {
	description = "Oil Barrel",
	drawtype = "mesh",
	mesh = "slope_test_cylinder.obj",
	tiles = {"mystreets_oil_barrel_mesh.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {oddly_breakable_by_hand=2},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
})
--Craft
minetest.register_craft({
		output = "mystreets:oil_barrel 1",
		recipe = {
			{"mystreets:bucket_oil","mystreets:bucket_oil","mystreets:bucket_oil"},
			{"mystreets:bucket_oil","mystreets:bucket_oil","mystreets:bucket_oil"},
			{"mystreets:bucket_oil","mystreets:bucket_oil","mystreets:bucket_oil"},
			}
	})
--------------------------------------------------------------------------------
--Tar
--------------------------------------------------------------------------------

minetest.register_node("mystreets:tar", {
	description = "Tar",
	tiles = {"mystreets_tar.png"},
	drawtype = "normal",
	paramtype = "light",
	groups = {crumbly = 2},
})
--Craft
minetest.register_craft({
		type = "cooking",
		output = "mystreets:tar 10",
		recipe = "mystreets:oil_barrel",
		cooktime = 5
	})
--Craft
minetest.register_craft({
		type = "cooking",
		output = "mystreets:tar 1",
		recipe = "mystreets:bucket_oil",
		cooktime = 5,
		replacements = {{"mystreets:bucket_oil", "bucket:bucket_empty"}},
	})

minetest.register_node("mystreets:tar_barrel", {
	description = "Tar Barrel",
	drawtype = "mesh",
	mesh = "slope_test_cylinder.obj",
	tiles = {"mystreets_tar_barrel_mesh.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {oddly_breakable_by_hand=2},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
})
--Craft
minetest.register_craft({
		output = "mystreets:tar_barrel 1",
		recipe = {
			{"mystreets:tar","mystreets:tar","mystreets:tar"},
			{"mystreets:tar","mystreets:tar","mystreets:tar"},
			{"mystreets:tar","mystreets:tar","mystreets:tar"},
			}
	})
---------------------------------------------------------------------------
--Oil Bucket
---------------------------------------------------------------------------
bucket.register_liquid(
	"mystreets:oil_source",
	"mystreets:oil_flowing",
	"mystreets:bucket_oil",
	"mystreets_bucket_oil.png",
	"Oil Bucket"
)
---------------------------------------------------------------------------
--Fuel Sources
---------------------------------------------------------------------------

minetest.register_craft({
	type = "fuel",
	recipe = "mystreets:bucket_oil",
	burntime = 60,
	replacements = {{"mystreets:bucket_oil", "bucket:bucket_empty"}},
})
minetest.register_craft({
	type = "fuel",
	recipe = "mystreets:oil_barrel",
	burntime = 600,
})
minetest.register_craft({
	type = "fuel",
	recipe = "mystreets:tar",
	burntime = 90,
})
minetest.register_craft({
	type = "fuel",
	recipe = "mystreets:tar_barrel",
	burntime = 900,
})

----------------------------------------------------------------------------
--Turn Oil to Tar when near lava
----------------------------------------------------------------------------
default.cool_lava_source = function(pos)
	minetest.set_node(pos, {name="mystreets:tar"})
	minetest.sound_play("default_cool_lava", {pos = pos,  gain = 0.25})
end

default.cool_lava_flowing = function(pos)
	minetest.set_node(pos, {name="mystreets:tar"})
	minetest.sound_play("default_cool_lava", {pos = pos,  gain = 0.25})
end
minetest.register_abm({
	nodenames = {"mystreets:oil_flowing"},
	neighbors = {"default:lava_source"},
	interval = 1,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
		default.cool_lava_flowing(pos, node, active_object_count, active_object_count_wider)
	end,
})

minetest.register_abm({
	nodenames = {"mystreets:oil_flowing"},
	neighbors = {"default:lava_flowing"},
	interval = 1,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
		default.cool_lava_source(pos, node, active_object_count, active_object_count_wider)
	end,
})
minetest.register_abm({
	nodenames = {"mystreets:oil_source"},
	neighbors = {"default:lava_source"},
	interval = 1,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
		default.cool_lava_flowing(pos, node, active_object_count, active_object_count_wider)
	end,
})

minetest.register_abm({
	nodenames = {"mystreets:oil_source"},
	neighbors = {"default:lava_flowing"},
	interval = 1,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
		default.cool_lava_source(pos, node, active_object_count, active_object_count_wider)
	end,
})
