--Asphalt
minetest.register_craft({
	output = "mystreets:asphalt 2",
	recipe = {
		{"default:gravel", "mystreets:tar"},
	}
})
--Asphalt Center Dashed
minetest.register_craft({
	output = "mystreets:asphalt_center_dashed 9",
	recipe = {
		{"mystreets:asphalt", "mypaint:paint_brush_yellow","mystreets:asphalt"},
		{"mystreets:asphalt", "mystreets:asphalt","mystreets:asphalt"},
		{"mystreets:asphalt", "mypaint:paint_brush_yellow","mystreets:asphalt"},
	}
})
--Asphalt Center Solid
minetest.register_craft({
	output = "mystreets:asphalt_center_solid 9",
	recipe = {
		{"mystreets:asphalt", "mypaint:paint_brush_yellow","mystreets:asphalt"},
		{"mystreets:asphalt", "mypaint:paint_brush_yellow","mystreets:asphalt"},
		{"mystreets:asphalt", "mypaint:paint_brush_yellow","mystreets:asphalt"},
	}
})
--Asphalt Center Solid Dashed
minetest.register_craft({
	output = "mystreets:asphalt_center_solid_dashed 9",
	recipe = {
		{"mystreets:asphalt", "mypaint:paint_brush_yellow","mypaint:paint_brush_yellow"},
		{"mystreets:asphalt", "mypaint:paint_brush_yellow","mystreets:asphalt"},
		{"mystreets:asphalt", "mypaint:paint_brush_yellow","mypaint:paint_brush_yellow"},
	}
})
--Asphalt Center Solid Double
minetest.register_craft({
	output = "mystreets:asphalt_center_solid_double 9",
	recipe = {
		{"mystreets:asphalt", "mypaint:paint_brush_yellow","mypaint:paint_brush_yellow"},
		{"mystreets:asphalt", "mypaint:paint_brush_yellow","mypaint:paint_brush_yellow"},
		{"mystreets:asphalt", "mypaint:paint_brush_yellow","mypaint:paint_brush_yellow"},
	}
})
--Asphalt Center Single Corner
minetest.register_craft({
	output = "mystreets:asphalt_center_corner_single 9",
	recipe = {
		{"mystreets:asphalt", "mystreets:asphalt","mystreets:asphalt"},
		{"mystreets:asphalt", "mypaint:paint_brush_yellow","mypaint:paint_brush_yellow"},
		{"mystreets:asphalt", "mypaint:paint_brush_yellow","mystreets:asphalt"},
	}
})
--Asphalt Center Double Corner
minetest.register_craft({
	output = "mystreets:asphalt_center_corner_double 9",
	recipe = {
		{"mystreets:asphalt", "mystreets:asphalt","mystreets:asphalt"},
		{"mystreets:asphalt", "mypaint:paint_brush_yellow","mypaint:paint_brush_yellow"},
		{"mystreets:asphalt", "mypaint:paint_brush_yellow","mypaint:paint_brush_yellow"},
	}
})
--Asphalt Side Dashed
minetest.register_craft({
	output = "mystreets:asphalt_side_dashed 9",
	recipe = {
		{"mystreets:asphalt", "mystreets:asphalt","mypaint:paint_brush_white"},
		{"mystreets:asphalt", "mystreets:asphalt","mystreets:asphalt"},
		{"mystreets:asphalt", "mystreets:asphalt","mypaint:paint_brush_white"},
	}
})
--Asphalt Side Solid
minetest.register_craft({
	output = "mystreets:asphalt_side_solid 9",
	recipe = {
		{"mystreets:asphalt", "mystreets:asphalt","mypaint:paint_brush_white"},
		{"mystreets:asphalt", "mystreets:asphalt","mypaint:paint_brush_white"},
		{"mystreets:asphalt", "mystreets:asphalt","mypaint:paint_brush_white"},
	}
})
--Asphalt Outside Corner
minetest.register_craft({
	output = "mystreets:asphalt_ocorner 9",
	recipe = {
		{"mypaint:paint_brush_white", "mypaint:paint_brush_white","mypaint:paint_brush_white"},
		{"mystreets:asphalt", "mystreets:asphalt","mypaint:paint_brush_white"},
		{"mystreets:asphalt", "mystreets:asphalt","mypaint:paint_brush_white"},
	}
})
--Asphalt Inside Corner
minetest.register_craft({
	output = "mystreets:asphalt_icorner 9",
	recipe = {
		{"mystreets:asphalt", "mystreets:asphalt","mypaint:paint_brush_white"},
		{"mystreets:asphalt", "mystreets:asphalt","mystreets:asphalt"},
		{"mystreets:asphalt", "mystreets:asphalt","mystreets:asphalt"},
	}
})
--Handicap Top Left
minetest.register_craft({
	output = "mystreets:asphalt_hc_tl 4",
	recipe = {
		{"mypaint:paint_brush_blue", "mypaint:paint_brush_white",""},
		{"mypaint:paint_brush_blue", "mystreets:asphalt",""},
		{"", "",""},
	}
})
--Handicap Top Right
minetest.register_craft({
	output = "mystreets:asphalt_hc_tr 4",
	recipe = {
		{"mypaint:paint_brush_blue", "mypaint:paint_brush_blue",""},
		{"mystreets:asphalt", "mypaint:paint_brush_white",""},
		{"", "",""},
	}
})
--Handicap Bottom Right
minetest.register_craft({
	output = "mystreets:asphalt_hc_br 4",
	recipe = {
		{"mystreets:asphalt", "mypaint:paint_brush_blue",""},
		{"mypaint:paint_brush_white", "mypaint:paint_brush_blue",""},
		{"", "",""},
	}
})
--Handicap Bottom Left
minetest.register_craft({
	output = "mystreets:asphalt_hc_bl 4",
	recipe = {
		{"mypaint:paint_brush_white", "mystreets:asphalt",""},
		{"mypaint:paint_brush_blue", "mypaint:paint_brush_blue",""},
		{"", "",""},
	}
})
