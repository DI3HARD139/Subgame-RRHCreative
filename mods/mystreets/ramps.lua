local slope_cbox = {
	type = "fixed",
	fixed = {
		{-0.5,  -0.5,  -0.5, 0.5, -0.25, 0.5},
		{-0.5, -0.25, -0.25, 0.5,     0, 0.5},
		{-0.5,     0,     0, 0.5,  0.25, 0.5},
		{-0.5,  0.25,  0.25, 0.5,   0.5, 0.5}
	}
}

local slope_cbox_long = {
	type = "fixed",
	fixed = {
		{-0.5, -0.5,   -1.5,  0.5, -0.375, 0.5},  --  NodeBox1
		{-0.5, -0.375, -1.25, 0.5, -0.25,  0.5},  --  NodeBox2
		{-0.5, -0.25,  -1,    0.5, -0.125, 0.5},  --  NodeBox3
		{-0.5, -0.125, -0.75, 0.5,  0,     0.5},  --  NodeBox4
		{-0.5,  0,     -0.5,  0.5,  0.125, 0.5},  --  NodeBox5
		{-0.5,  0.125, -0.25, 0.5,  0.25,  0.5},  --  NodeBox6
		{-0.5,  0.25,   0,    0.5,  0.375, 0.5},  --  NodeBox7
		{-0.5,  0.375,  0.25, 0.5,  0.5,   0.5},  --  NodeBox8
	}
}

--Sidewalk Ramp
minetest.register_node("mystreets:ramp_sidewalk", {
	description = "Sidewalk Ramp",
	drawtype = "mesh",
	mesh = "slope_test_slope.obj",
	tiles = {"mystreets_sidewalk_mesh.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 1},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = slope_cbox,
	selection_box = slope_cbox
})
--Craft
minetest.register_craft({
	output = "mystreets:ramp_sidewalk 2",
	recipe = {
		{"", "",""},
		{"", "","mystreets:sidewalk"},
		{"", "mystreets:sidewalk","mystreets:sidewalk"},
	}
})
minetest.register_node("mystreets:ramp_sidewalk_long", {
	description = "Sidewalk Ramp Long",
	drawtype = "mesh",
	mesh = "slope_test_slope_long.obj",
	tiles = {"mystreets_sidewalk_long_mesh.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 1},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = slope_cbox_long,
	selection_box = slope_cbox_long
})
--Craft
minetest.register_craft({
	output = "mystreets:ramp_sidewalk_long 2",
	recipe = {
		{"", "",""},
		{"", "","mystreets:sidewalk"},
		{"mystreets:sidewalk", "mystreets:sidewalk","mystreets:sidewalk"},
	}
})

--Concrete Ramp
minetest.register_node("mystreets:ramp_concrete", {
	description = "Concrete Ramp",
	drawtype = "mesh",
	mesh = "slope_test_slope.obj",
	tiles = {"mystreets_concrete_mesh.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 1},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = slope_cbox,
	selection_box = slope_cbox
})
--Craft
minetest.register_craft({
	output = "mystreets:ramp_concrete 2",
	recipe = {
		{"", "",""},
		{"", "","mystreets:concrete"},
		{"", "mystreets:concrete","mystreets:concrete"},
	}
})
minetest.register_node("mystreets:ramp_concrete_long", {
	description = "concrete Ramp Long",
	drawtype = "mesh",
	mesh = "slope_test_slope_long.obj",
	tiles = {"mystreets_concrete_mesh.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 1},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = slope_cbox_long,
	selection_box = slope_cbox_long
})
--Craft
minetest.register_craft({
	output = "mystreets:ramp_concrete_long 2",
	recipe = {
		{"", "",""},
		{"", "","mystreets:concrete"},
		{"mystreets:concrete", "mystreets:concrete","mystreets:concrete"},
	}
})

--Asphalt Ramp
minetest.register_node("mystreets:ramp_asphalt", {
	description = "Asphalt Ramp",
	drawtype = "mesh",
	mesh = "slope_test_slope.obj",
	tiles = {"mystreets_asphalt_long_mesh.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 1},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = slope_cbox,
	selection_box = slope_cbox
})
--Craft
minetest.register_craft({
	output = "mystreets:ramp_asphalt 2",
	recipe = {
		{"", "",""},
		{"", "","mystreets:asphalt"},
		{"", "mystreets:asphalt","mystreets:asphalt"},
	}
})
minetest.register_node("mystreets:ramp_asphalt_long", {
	description = "Asphalt Ramp Long",
	drawtype = "mesh",
	mesh = "slope_test_slope_long.obj",
	tiles = {"mystreets_asphalt_long_mesh.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 1},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = slope_cbox_long,
	selection_box = slope_cbox_long
})
--Craft
minetest.register_craft({
	output = "mystreets:ramp_asphalt_long 2",
	recipe = {
		{"", "",""},
		{"", "","mystreets:asphalt"},
		{"mystreets:asphalt", "mystreets:asphalt","mystreets:asphalt"},
	}
})

--Asphalt Center Dashed Ramp
minetest.register_node("mystreets:ramp_asphalt_center_dashed", {
	description = "Asphalt Center Dashed Ramp",
	drawtype = "mesh",
	mesh = "slope_test_slope.obj",
	tiles = {"mystreets_asphalt_center_dashed_mesh.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 1},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = slope_cbox,
	selection_box = slope_cbox
})
--Craft
minetest.register_craft({
	output = "mystreets:ramp_asphalt_center_dashed 2",
	recipe = {
		{"", "",""},
		{"", "","mystreets:asphalt_center_dashed"},
		{"", "mystreets:asphalt_center_dashed","mystreets:asphalt_center_dashed"},
	}
})
minetest.register_node("mystreets:ramp_asphalt_center_dashed_long", {
	description = "Asphalt Center Dashed Ramp Long",
	drawtype = "mesh",
	mesh = "slope_test_slope_long.obj",
	tiles = {"mystreets_asphalt_center_dashed_long_mesh.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 1},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = slope_cbox_long,
	selection_box = slope_cbox_long
})
--Craft
minetest.register_craft({
	output = "mystreets:ramp_asphalt_center_dashed_long 2",
	recipe = {
		{"", "",""},
		{"", "","mystreets:asphalt_center_dashed"},
		{"mystreets:asphalt_center_dashed", "mystreets:asphalt_center_dashed","mystreets:asphalt_center_dashed"},
	}
})

--Asphalt Side Solid left Ramp
minetest.register_node("mystreets:ramp_asphalt_side_solid_left", {
	description = "Asphalt Side Solid Ramp Left",
	drawtype = "mesh",
	mesh = "slope_test_slope.obj",
	tiles = {"mystreets_asphalt_side_solid_left_mesh.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 1},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = slope_cbox,
	selection_box = slope_cbox
})
--Craft
minetest.register_craft({
	output = "mystreets:ramp_asphalt_side_solid_left 2",
	recipe = {
		{"", "",""},
		{"mystreets:asphalt_side_solid", "",""},
		{"mystreets:asphalt_side_solid", "mystreets:asphalt_side_solid",""},
	}
})
minetest.register_node("mystreets:ramp_asphalt_side_solid_left_long", {
	description = "Asphalt Side Solid Ramp Left Long",
	drawtype = "mesh",
	mesh = "slope_test_slope_long.obj",
	tiles = {"mystreets_asphalt_side_solid_left_long_mesh.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 1},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = slope_cbox_long,
	selection_box = slope_cbox_long
})
--Craft
minetest.register_craft({
	output = "mystreets:ramp_asphalt_side_solid_left_long 2",
	recipe = {
		{"", "",""},
		{"mystreets:asphalt_side_solid", "",""},
		{"mystreets:asphalt_side_solid", "mystreets:asphalt_side_solid","mystreets:asphalt_side_solid"},
	}
})


--Asphalt Side Solid Ramp Right
minetest.register_node("mystreets:ramp_asphalt_side_solid_right", {
	description = "Asphalt Side Solid Ramp Right",
	drawtype = "mesh",
	mesh = "slope_test_slope.obj",
	tiles = {"mystreets_asphalt_side_solid_right_mesh.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 1},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = slope_cbox,
	selection_box = slope_cbox
})
--Craft
minetest.register_craft({
	output = "mystreets:ramp_asphalt_side_solid_right 2",
	recipe = {
		{"", "",""},
		{"", "","mystreets:asphalt_side_solid"},
		{"", "mystreets:asphalt_side_solid","mystreets:asphalt_side_solid"},
	}
})
minetest.register_node("mystreets:ramp_asphalt_side_solid_right_long", {
	description = "Asphalt Side Solid Ramp Right Long",
	drawtype = "mesh",
	mesh = "slope_test_slope_long.obj",
	tiles = {"mystreets_asphalt_side_solid_right_long_mesh.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 1},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = slope_cbox_long,
	selection_box = slope_cbox_long
})
--Craft
minetest.register_craft({
	output = "mystreets:ramp_asphalt_side_solid_right_long 2",
	recipe = {
		{"", "",""},
		{"", "","mystreets:asphalt_side_solid"},
		{"mystreets:asphalt_side_solid", "mystreets:asphalt_side_solid","mystreets:asphalt_side_solid"},
	}
})

--Asphalt Center Solid Ramp 
minetest.register_node("mystreets:ramp_asphalt_center_solid", {
	description = "Asphalt Center Solid Ramp",
	drawtype = "mesh",
	mesh = "slope_test_slope.obj",
	tiles = {"mystreets_asphalt_center_solid_mesh.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 1},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = slope_cbox,
	selection_box = slope_cbox
})
--Craft
minetest.register_craft({
	output = "mystreets:ramp_asphalt_center_solid 2",
	recipe = {
		{"", "",""},
		{"", "","mystreets:asphalt_center_solid"},
		{"", "mystreets:asphalt_center_solid","mystreets:asphalt_center_solid"},
	}
})
minetest.register_node("mystreets:ramp_asphalt_center_solid_long", {
	description = "Asphalt Center Solid Ramp Long",
	drawtype = "mesh",
	mesh = "slope_test_slope_long.obj",
	tiles = {"mystreets_asphalt_center_solid_long_mesh.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 1},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = slope_cbox_long,
	selection_box = slope_cbox_long
})
--Craft
minetest.register_craft({
	output = "mystreets:ramp_asphalt_center_solid_long 2",
	recipe = {
		{"", "",""},
		{"", "","mystreets:asphalt_center_solid"},
		{"mystreets:asphalt_center_solid", "mystreets:asphalt_center_solid","mystreets:asphalt_center_solid"},
	}
})

--Asphalt Center Solid and Dashed Ramp
minetest.register_node("mystreets:ramp_asphalt_center_solid_dashed", {
	description = "Asphalt Center Solid Dashed Ramp",
	drawtype = "mesh",
	mesh = "slope_test_slope.obj",
	tiles = {"mystreets_asphalt_center_solid_dashed_mesh.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 1},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = slope_cbox,
	selection_box = slope_cbox
})
--Craft
minetest.register_craft({
	output = "mystreets:ramp_asphalt_center_solid_dashed 2",
	recipe = {
		{"", "",""},
		{"", "","mystreets:asphalt_center_solid_dashed"},
		{"", "mystreets:asphalt_center_solid_dashed","mystreets:asphalt_center_solid_dashed"},
	}
}) 
minetest.register_node("mystreets:ramp_asphalt_center_solid_dashed_long", {
	description = "Asphalt Center Solid Dashed Ramp Long",
	drawtype = "mesh",
	mesh = "slope_test_slope_long.obj",
	tiles = {"mystreets_asphalt_center_solid_dashed_long_mesh.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 1},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = slope_cbox_long,
	selection_box = slope_cbox_long
})
--Craft
minetest.register_craft({
	output = "mystreets:ramp_asphalt_center_solid_dashed_long 2",
	recipe = {
		{"", "",""},
		{"", "","mystreets:asphalt_center_solid_dashed"},
		{"mystreets:asphalt_center_solid_dashed", "mystreets:asphalt_center_solid_dashed","mystreets:asphalt_center_solid_dashed"},
	}
})
--Asphalt Center Double Solid Ramp 
minetest.register_node("mystreets:ramp_asphalt_center_double_solid", {
	description = "Asphalt Center Double Solid Ramp",
	drawtype = "mesh",
	mesh = "slope_test_slope.obj",
	tiles = {"mystreets_asphalt_center_double_solid_mesh.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 1},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = slope_cbox,
	selection_box = slope_cbox
})
--Craft
minetest.register_craft({
	output = "mystreets:ramp_asphalt_center_double_solid 2",
	recipe = {
		{"", "",""},
		{"", "","mystreets:asphalt_center_solid_double"},
		{"", "mystreets:asphalt_center_solid_double","mystreets:asphalt_center_solid_double"},
	}
})
minetest.register_node("mystreets:ramp_asphalt_center_double_solid_long", {
	description = "Asphalt Center Double Solid Ramp Long",
	drawtype = "mesh",
	mesh = "slope_test_slope_long.obj",
	tiles = {"mystreets_asphalt_center_double_solid_long_mesh.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 1},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = slope_cbox_long,
	selection_box = slope_cbox_long
})
--Craft
minetest.register_craft({
	output = "mystreets:ramp_asphalt_center_double_solid_long 2",
	recipe = {
		{"", "",""},
		{"", "","mystreets:asphalt_center_solid_double"},
		{"mystreets:asphalt_center_solid_double", "mystreets:asphalt_center_solid_double","mystreets:asphalt_center_solid_double"},
	}
})
