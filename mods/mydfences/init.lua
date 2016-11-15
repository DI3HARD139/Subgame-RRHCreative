local sticks = {
--		{"default:wood","default:stick"},
		{"default:jungle_wood","mydfences:jungle_stick","Jungle","^[colorize:#2A0A0A:200","jungle"},
		{"default:pine_wood","mydfences:pine_stick","Pine","^[colorize:#F5DA81:200","pine"},
		{"default:acacia_wood","mydfences:acacia_stick","Acacia","^[colorize:red:100","acacia"},
		}
for i in ipairs (sticks) do
local wo = sticks[i][1]
local st = sticks[i][2]
local des = sticks[i][3]
local col = sticks[i][4]
local nam = sticks[i][5]

local fence_texture = "default_fence_overlay.png^default_wood.png^default_fence_overlay.png^[makealpha:255,126,126"
minetest.register_node("mydfences:fence_wood_"..nam, {
	description = des.."Wooden Fence",
	drawtype = "fencelike",
	tiles = {"default_wood.png"..col},
	inventory_image = fence_texture..col,
	wield_image = fence_texture,
	paramtype = "light",
	is_ground_content = false,
	selection_box = {
		type = "fixed",
		fixed = {-1/7, -1/2, -1/7, 1/7, 1/2, 1/7},
	},
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=2},
	sounds = default.node_sound_wood_defaults(),
})
minetest.register_craft({
	output = 'default:fence_wood 2',
	recipe = {
		{'default:stick', 'default:stick', 'default:stick'},
		{'default:stick', 'default:stick', 'default:stick'},
	}
})
minetest.register_craft({
	output = 'mydfences:fence_wood_'..nam..' 2',
	recipe = {
		{st, st, st},
		{st, st, st},
	}
})
minetest.register_craft({
	output = st..' 4',
	recipe = {
		{wo},
	}
})
minetest.register_craftitem(st, {
	description = des.." Stick",
	inventory_image = "default_stick.png"..col,
	groups = {stick=1},
})
end
