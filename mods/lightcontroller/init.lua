local emit_signals = function(pos)
	local meta = minetest.get_meta(pos)
	if meta:get_string("locked")~="true" then
		meta:set_string("locked","true")
		digiline:receptor_send(pos, digiline.rules.default, "main", "RED")
		minetest.after(5,function(pos)
			digiline:receptor_send(pos, digiline.rules.default, "side", "GREEN")
			minetest.after(10,function(pos)
				digiline:receptor_send(pos, digiline.rules.default, "side", "RED")
				minetest.after(5,function(pos)
					digiline:receptor_send(pos, digiline.rules.default, "main", "GREEN")
					minetest.after(15,function(pos)
						local meta = minetest.get_meta(pos)
						meta:set_string("locked","false")
					end,pos)
				end,pos)
			end,pos)
		end,pos)
	end
end

local lc_scan = function(pos)
	local objs = minetest.get_objects_inside_radius(pos, 6)
	if objs then
		local _,obj
		for _,obj in ipairs(objs) do
			if obj:is_player() then
				emit_signals(pos)
				return
			end
		end
	end
end

local lc_slave_scan = function(pos)
	local objs = minetest.get_objects_inside_radius(pos, 6)
	if objs then
		local _,obj
		for _,obj in ipairs(objs) do
			if obj:is_player() then
				digiline:receptor_send(pos, digiline.rules.default, "detector", "car")
				return
			end
		end
	end
end

local on_digiline_receive = function (pos, node, channel, msg)
	if channel=="detector" then emit_signals(pos) end
end

minetest.register_node("lightcontroller:trafficnext", {
	description = "TrafficNeXt SoC - Master",
	tiles = {"streets_tl_bg.png","streets_tl_bg.png","streets_tl_bg.png^streets_tl_green.png","streets_tl_bg.png^streets_tl_green.png","streets_tl_bg.png^streets_tl_green.png","streets_tl_bg.png^streets_tl_green.png"},
	groups = {cracky=3, stone=1},
	sounds = default.node_sound_stone_defaults(),
	digiline = 
	{
		receptor = {},
		effector = { action = on_digiline_receive },
	},
	on_punch = function(pos) emit_signals(pos) end
})

minetest.register_abm({
	nodenames = {"lightcontroller:trafficnext"},
	interval = 1.0,
	chance = 1,
	action = function(pos) lc_scan(pos) end
})

minetest.register_node("lightcontroller:trafficnext_slave", {
	description = "TrafficNeXt SoC - Slave",
	tiles = {"streets_tl_bg.png","streets_tl_bg.png","streets_tl_bg.png^streets_tl_red.png","streets_tl_bg.png^streets_tl_red.png","streets_tl_bg.png^streets_tl_red.png","streets_tl_bg.png^streets_tl_red.png"},
	groups = {cracky=3, stone=1},
	sounds = default.node_sound_stone_defaults(),
	digiline = 
	{
		receptor = {},
		effector = { action = function() end},
	},
})

minetest.register_abm({
	nodenames = {"lightcontroller:trafficnext_slave"},
	interval = 1.0,
	chance = 1,
	action = function(pos) lc_slave_scan(pos) end
})
