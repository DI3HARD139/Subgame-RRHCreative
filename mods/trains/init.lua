-- TRAINS mod by crazyginger72
-- ver 0.1


minetest.register_node("trains:truck_front", {
        description = "truck front section",
        drawtype = "signlike",
        tiles = {"truck_front.png"}, 
        inventory_image = "truck_front.png",
        wield_image = "truck_front.png",
        paramtype = "light",
        paramtype2 = "wallmounted",

        sunlight_propagates = true,
        walkable = false,
        selection_box = {
                type = "wallmounted",
        },
        groups = {choppy=2,dig_immediate=2,attached_node=1},
        legacy_wallmounted = true,
        
})

minetest.register_node("trains:truck_middle", {
        description = "truck middle section",
        drawtype = "signlike",
        tiles = {"truck_middle.png"}, 
        inventory_image = "truck_middle.png",
        wield_image = "truck_middle.png",
        paramtype = "light",
        paramtype2 = "wallmounted",

        sunlight_propagates = true,
        walkable = false,
        selection_box = {
                type = "wallmounted",
        },
        groups = {choppy=2,dig_immediate=2,attached_node=1},
        legacy_wallmounted = true,
        
})

minetest.register_node("trains:truck_back", {
        description = "truck back section",
        drawtype = "signlike",
        tiles = {"truck_back.png"}, 
        inventory_image = "truck_back.png",
        wield_image = "truck_back.png",
        paramtype = "light",
        paramtype2 = "wallmounted",

        sunlight_propagates = true,
        walkable = false,
        selection_box = {
                type = "wallmounted",
        },
        groups = {choppy=2,dig_immediate=2,attached_node=1},
        legacy_wallmounted = true,
        
})

minetest.register_node("trains:fan", {
        description = "train fan",
        drawtype = "signlike",
        tiles = {"fan.png"}, 
        inventory_image = "fan.png",
        wield_image = "fan.png",
        paramtype = "light",
        paramtype2 = "wallmounted",

        sunlight_propagates = true,
        walkable = false,
        selection_box = {
                type = "wallmounted",
        },
        groups = {choppy=2,dig_immediate=2,attached_node=1},
        legacy_wallmounted = true,
        
})

minetest.register_node("trains:horn", {
        description = "train horn",
        drawtype = "signlike",
        tiles = {"horn.png"}, 
        inventory_image = "horn.png",
        wield_image = "horn.png",
        paramtype = "light",
        paramtype2 = "wallmounted",

        sunlight_propagates = true,
        walkable = false,
        selection_box = {
                type = "wallmounted",
        },
        groups = {choppy=2,dig_immediate=2,attached_node=1},
        legacy_wallmounted = true,
        
})

minetest.register_node("trains:louvers", {
        description = "train louvers",
        drawtype = "signlike",
        tiles = {"louvers.png"}, 
        inventory_image = "louvers.png",
        wield_image = "louvers.png",
        paramtype = "light",
        paramtype2 = "wallmounted",

        sunlight_propagates = true,
        walkable = false,
        selection_box = {
                type = "wallmounted",
        },
        groups = {choppy=2,dig_immediate=2,attached_node=1},
        legacy_wallmounted = true,
        
})

minetest.register_node("trains:bull_bar", {
        description = "train bull_bar",
        drawtype = "signlike",
        tiles = {"bull_bar.png"}, 
        inventory_image = "bull_bar.png",
        wield_image = "bull_bar.png",
        paramtype = "light",
        paramtype2 = "wallmounted",

        sunlight_propagates = true,
        walkable = false,
        selection_box = {
                type = "wallmounted",
        },
        groups = {choppy=2,dig_immediate=2,attached_node=1},
        legacy_wallmounted = true,
        
})

minetest.register_node("trains:railling", {
        description = "train railling",
        drawtype = "signlike",
        tiles = {"railling.png"}, 
        inventory_image = "railling.png",
        wield_image = "railling.png",
        paramtype = "light",
        paramtype2 = "wallmounted",

        sunlight_propagates = true,
        walkable = false,
        selection_box = {
                type = "wallmounted",
        },
        groups = {choppy=2,dig_immediate=2,attached_node=1},
        legacy_wallmounted = true,
        
})

minetest.register_node("trains:railling_light", {
        description = "train railling with light",
        drawtype = "signlike",
        tiles = {"railling_light.png"}, 
        inventory_image = "railling_light.png",
        wield_image = "railling_light.png",
        paramtype = "light",
        paramtype2 = "wallmounted",
		light_source = 50,
        sunlight_propagates = true,
        walkable = false,
        selection_box = {
                type = "wallmounted",
        },
        groups = {choppy=2,dig_immediate=2,attached_node=1},
        legacy_wallmounted = true,
        
})

minetest.register_node("trains:railling_top", {
        description = "train railling top",
        drawtype = "signlike",
        tiles = {"railling_top.png"}, 
        inventory_image = "railling_top.png",
        wield_image = "railling_top.png",
        paramtype = "light",
        paramtype2 = "wallmounted",

        sunlight_propagates = true,
        walkable = false,
        selection_box = {
                type = "wallmounted",
        },
        groups = {choppy=2,dig_immediate=2,attached_node=1},
        legacy_wallmounted = true,
        
})

minetest.register_node("trains:number", {
        description = "train number GR 72",
        drawtype = "signlike",
        tiles = {"number.png"}, 
        inventory_image = "number.png",
        wield_image = "number.png",
        paramtype = "light",
        paramtype2 = "wallmounted",
		light_source = 10,
        sunlight_propagates = true,
        walkable = false,
        selection_box = {
                type = "wallmounted",
        },
        groups = {choppy=2,dig_immediate=2,attached_node=1},
        legacy_wallmounted = true,
        
})


minetest.register_node("trains:number0", {
        description = "train number CNR 1",
        drawtype = "signlike",
        tiles = {"number0.png"}, 
        inventory_image = "number0.png",
        wield_image = "number0.png",
        paramtype = "light",
        paramtype2 = "wallmounted",
		light_source = 10,
        sunlight_propagates = true,
        walkable = false,
        selection_box = {
                type = "wallmounted",
        },
        groups = {choppy=2,dig_immediate=2,attached_node=1},
        legacy_wallmounted = true,
        
})

minetest.register_node("trains:number2", {
        description = "train number GR 13",
        drawtype = "signlike",
        tiles = {"number2.png"}, 
        inventory_image = "number2.png",
        wield_image = "number2.png",
        paramtype = "light",
        paramtype2 = "wallmounted",
		light_source = 10,
        sunlight_propagates = true,
        walkable = false,
        selection_box = {
                type = "wallmounted",
        },
        groups = {choppy=2,dig_immediate=2,attached_node=1},
        legacy_wallmounted = true,
        
})

minetest.register_node("trains:number3", {
        description = "train number GR 69",
        drawtype = "signlike",
        tiles = {"number3.png"}, 
        inventory_image = "number3.png",
        wield_image = "number3.png",
        paramtype = "light",
        paramtype2 = "wallmounted",
		light_source = 10,
        sunlight_propagates = true,
        walkable = false,
        selection_box = {
                type = "wallmounted",
        },
        groups = {choppy=2,dig_immediate=2,attached_node=1},
        legacy_wallmounted = true,
        
})

minetest.register_node("trains:number4", {
        description = "train number GR 71",
        drawtype = "signlike",
        tiles = {"number4.png"}, 
        inventory_image = "number4.png",
        wield_image = "number4.png",
        paramtype = "light",
        paramtype2 = "wallmounted",
		light_source = 10,
        sunlight_propagates = true,
        walkable = false,
        selection_box = {
                type = "wallmounted",
        },
        groups = {choppy=2,dig_immediate=2,attached_node=1},
        legacy_wallmounted = true,
        
})

minetest.register_node("trains:number5", {
        description = "train number GR 74",
        drawtype = "signlike",
        tiles = {"number5.png"}, 
        inventory_image = "number5.png",
        wield_image = "number5.png",
        paramtype = "light",
        paramtype2 = "wallmounted",
		light_source = 10,
        sunlight_propagates = true,
        walkable = false,
        selection_box = {
                type = "wallmounted",
        },
        groups = {choppy=2,dig_immediate=2,attached_node=1},
        legacy_wallmounted = true,
        
})

minetest.register_node("trains:number6", {
        description = "train number GR 70",
        drawtype = "signlike",
        tiles = {"number6.png"}, 
        inventory_image = "number6.png",
        wield_image = "number6.png",
        paramtype = "light",
        paramtype2 = "wallmounted",
		light_source = 10,
        sunlight_propagates = true,
        walkable = false,
        selection_box = {
                type = "wallmounted",
        },
        groups = {choppy=2,dig_immediate=2,attached_node=1},
        legacy_wallmounted = true,
        
})

minetest.register_node("trains:number10", {
        description = "train number MR 11",
        drawtype = "signlike",
        tiles = {"number10.png"}, 
        inventory_image = "number10.png",
        wield_image = "number10.png",
        paramtype = "light",
        paramtype2 = "wallmounted",
		light_source = 10,
        sunlight_propagates = true,
        walkable = false,
        selection_box = {
                type = "wallmounted",
        },
        groups = {choppy=2,dig_immediate=2,attached_node=1},
        legacy_wallmounted = true,
        
})

minetest.register_node("trains:number7", {
        description = "train number GR 73",
        drawtype = "signlike",
        tiles = {"number7.png"}, 
        inventory_image = "number7.png",
        wield_image = "number7.png",
        paramtype = "light",
        paramtype2 = "wallmounted",
		light_source = 10,
        sunlight_propagates = true,
        walkable = false,
        selection_box = {
                type = "wallmounted",
        },
        groups = {choppy=2,dig_immediate=2,attached_node=1},
        legacy_wallmounted = true,
        
})

minetest.register_node("trains:number8", {
        description = "train number GR 1x",
        drawtype = "signlike",
        tiles = {"number8.png"}, 
        inventory_image = "number8.png",
        wield_image = "number8.png",
        paramtype = "light",
        paramtype2 = "wallmounted",
		light_source = 10,
        sunlight_propagates = true,
        walkable = false,
        selection_box = {
                type = "wallmounted",
        },
        groups = {choppy=2,dig_immediate=2,attached_node=1},
        legacy_wallmounted = true,
        
})

minetest.register_node("trains:number9", {
        description = "train number GR 75",
        drawtype = "signlike",
        tiles = {"number9.png"}, 
        inventory_image = "number9.png",
        wield_image = "number9.png",
        paramtype = "light",
        paramtype2 = "wallmounted",
		light_source = 10,
        sunlight_propagates = true,
        walkable = false,
        selection_box = {
                type = "wallmounted",
        },
        groups = {choppy=2,dig_immediate=2,attached_node=1},
        legacy_wallmounted = true,
        
})

minetest.register_node("trains:light", {
        description = "train light",
        drawtype = "signlike",
        tiles = {"light.png"}, 
        inventory_image = "light.png",
        wield_image = "light.png",
        paramtype = "light",
        paramtype2 = "wallmounted",
		light_source = 100,
        sunlight_propagates = true,
        walkable = false,
        selection_box = {
                type = "wallmounted",
        },
        groups = {choppy=2,dig_immediate=2,attached_node=1},
        legacy_wallmounted = true,
        
})

minetest.register_node("trains:light3", {
        description = "train light3",
        drawtype = "signlike",
        tiles = {"light3.png"}, 
        inventory_image = "light3.png",
        wield_image = "light3.png",
        paramtype = "light",
        paramtype2 = "wallmounted",
		light_source = 100,
        sunlight_propagates = true,
        walkable = false,
        selection_box = {
                type = "wallmounted",
        },
        groups = {choppy=2,dig_immediate=2,attached_node=1},
        legacy_wallmounted = true,
        
})

minetest.register_node("trains:light2", {
        description = "train light2",
        drawtype = "signlike",
        tiles = {"light2.png"}, 
        inventory_image = "light2.png",
        wield_image = "light2.png",
        paramtype = "light",
        paramtype2 = "wallmounted",
		light_source = 100,
        sunlight_propagates = true,
        walkable = false,
        selection_box = {
                type = "wallmounted",
        },
        groups = {choppy=2,dig_immediate=2,attached_node=1},
        legacy_wallmounted = true,
        
})

 minetest.register_node("trains:knuckle", {
            description = "Train Coupler Knuckle",
            tiles = {"knuckletb.png", "knuckletb.png",
                     "knuckle.png", "knuckle.png",
                     "knuckle.png", "knuckle.png"},
            is_ground_content = true,
	groups = {choppy=1, snappy=1, oddly_breakable_by_hand=1, level=1},
	
})

	print("[Mod] Trains by crazyginger72 loaded succesfully!")
