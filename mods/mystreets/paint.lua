
local dye_colour = {
--	{"Black","black"},
	{"Blue","blue"},
--	{"Brown","brown"},
--	{"Cyan","cyan"},
--	{"Dark Green","dark_green"},
--	{"Dark Grey","dark_grey"},
--	{"Green","green"},
--	{"Grey","grey"},
--	{"Magenta","magenta"},
--	{"Orange","orange"},
--	{"Pink","pink"},
	{"Red","red"},
--	{"Violet","violet"},
	{"White","white"},
	{"Yellow","yellow"},
}


for i in ipairs(dye_colour) do
	local pcolour = dye_colour[i][1]
	local colour = dye_colour[i][2]

--Paint Brush
minetest.register_craftitem("mystreets:paint_brush", {
	description = "Paint Brush",
	inventory_image = "mystreets_paint_brush.png",

})

--Craft
minetest.register_craft({
	output = "mystreets:paint_brush 9",
	recipe = {
		{"wool:white"},
		{"default:steel_ingot"},
		{"default:stick"},
	}
})

--Paint Brush colored
minetest.register_craftitem("mystreets:paint_brush_"..colour.."", {
	description = "Paint Brush "..pcolour,
	inventory_image = "mystreets_paint_brush_"..colour..".png",

})
--Craft
minetest.register_craft({
	output = "mystreets:paint_brush_"..colour.." 9",
	recipe = {
		{"mystreets:paint_brush", "mystreets:paint_"..colour..""}
	}
})

--Paint White

minetest.register_craftitem("mystreets:paint_"..colour.."", {
	description = "Paint "..pcolour,
	inventory_image = "mystreets_paint_can_"..colour..".png",

})
--[[
minetest.register_node("mystreets:paint_"..colour.."", {
	description = " Paint Can",
	drawtype = "mesh",
	mesh = "slope_test_cylinder.obj",
	tiles = {"mystreets_oil_barrel_mesh.png"},
	paramtype = "light",
--	paramtype2 = "facedir",
	visual_scale = 0.5,
	groups = {choppy=2, oddly_breakable_by_hand=2},
	sounds = default.node_sound_wood_defaults(),
--	on_place = minetest.rotate_node,
})
--]]
--Craft
minetest.register_craft({
	output = "mystreets:paint_"..colour.." 9",
	recipe = {
		{"mystreets:bucket_oil", "dye:"..colour..""}
	}
})

end

