gates= {};
gates.max_distance = 16;

local savedir = minetest.get_worldpath().."/gates/"


if minetest.mkdir then
	minetest.mkdir(savedir)
else
	os.execute('mkdir "'..savedir..'"')
end

local function schematic_exists(pos,num)
	local name = savedir.. minetest.pos_to_string(pos).."_"..num..".schematic"
   local f=io.open(name,"r")
   if f~=nil then io.close(f) return true else return false end
end

local function normalize_pos(pos1,pos2)
	local small,big = {},{};
	if pos1.x < pos2.x then 
	small.x = pos1.x 
	big.x = pos2.x
	else
	small.x = pos2.x
	big.x = pos1.x
	end
	if pos1.y < pos2.y then 
	small.y = pos1.y 
	big.y = pos2.y
	else
	small.y = pos2.y
	big.y = pos1.y
	end
	if pos1.z < pos2.z then 
	small.z = pos1.z 
	big.z = pos2.z
	else
	small.z = pos2.z
	big.z = pos1.z
	end
	
	return small, big
end

local function get_form(pos)
local meta = minetest.get_meta(pos);
local page = meta:get_int("page");
--print(page)
local form = 	"size[8,6;]"..	
				"label[0.1,0.0;Gate Controller]"..--heading
				"box[0.1,0.6;7.5,0.05;#FFFFFF]"..--line under heading
				"box[0.1,4.8;7.5,0.05;#FFFFFF]";--line on bottom

	if default and default.gui_bg then 
		form = form..default.gui_bg;
	end
	
	if default and default.gui_bg_img then 
		form = form..default.gui_bg_img;
	end
	
	if default and default.gui_slots then 
		form = form..default.gui_slots;
	end


	if page == 1 then
	local pos1 = "${pos1}";
	local pos2 = "${pos2}";
	if worldedit then
		pos1 = meta:get_string("pos1");
		pos2 = meta:get_string("pos2")
	end
	form = form .. 	"label[0.1,0.7;First, you need to set the area within the gate is acting]"..
						"label[0.5,1.0;Attention: please think about that the area must contain \nthe closed and the opened gate!]"..
						
						"field[0.5,3;3,0;pos1;Position 1 : (x,y,z);"..pos1.."]"..
						"button[0.5,3;3,1;cb_read1;read from clipboard]"..
						
						"field[4.5,3;3,0;pos2;Position 2 : (x,y,z);"..pos2.."]"..
						"button[4.5,3;3,1;cb_read2;read from clipboard]"..
						
						"button[0.5,5;3,1;prev;<--Back]button[4.5,5;3,1;next;Next-->]"
		if worldedit then
			form = form .. 	"button[0.5,4;7,1;read_worldedit;Read pos1 and pos2 from worldedit]"
		end

	elseif page == 2 then --display page 2
		local state = meta:get_string("state")
		
		if state  == "closed" then
			form = form .. 	"label[0.5,0.7;OK, The next Step is to build the gate wich is closed.]"..
							"label[0.5,1.0;If you are done, click Next]"..
							"button[0.5,5;3,1;prev;<--Back]button[4.5,5;3,1;closed_finisched;Next-->]"
		elseif state == "opend" then
			form = form .. 	"label[0.5,0.7;Wonderful,now you need to build a gate wich is opend.]"..
							"label[0.5,1.0;If you are done, click Next]"..
							"button[0.5,5;3,1;prev;<--Back]button[4.5,5;3,1;opend_finisched;Next-->]"		
		else
			form = form .. 	"label[0.5,0.7;Now its time for Building. :-)]"..
							"label[0.5,1.0;You need to build the gate twice. \ndo you want to build the opened or the closed Gate first?]"..
							"button[0.5,2.5;7,1;build_opend;I want to build the opened gate first!]"..
							"button[0.5,3.5;7,1;build_closed;Ill start with the closed one!]";
		end
	elseif page >= 3 then --page 3
		local state = meta:get_string("state");
		form = form .. 	"label[0.5,0.7;Congratulation! the setup is complete, and the controller is ready.\ncurrently the gate is "..state.."]"..
						"label[0.5,1.5.0;Click on the button toggle or punch this node to switch.\nIf mesecons installed you can also use mesecons.]"..
						"button[0.5,2.5;7,1;toggle;Toggle (switch between open and closed gate)]"..
						"button[0.5,5;3,1;setup;Re-Start Setup]"--button[4.5,3;3,1;next;Next-->]"
	else	--page 1
		form = form .. 	"label[0.5,1;Thanks for Choosing addi's gates mod. \nThis Assistant will help you to setup the Gate Controller]"..
						"label[0.5,2.5;To continue click Next]"..
						"button[4.5,5;3,1;next;Next-->]"
	end
	return form
end

local function placed(pos, placer, itemstack, pointed_thing)
local meta = minetest.get_meta(pos);
local form = get_form(pos);
meta:set_string("formspec",form);
meta:set_string("owner",placer:get_player_name());
meta:set_string("infotext","Right click to init");
end

local function close_gate(pos)
--local start_time = os.clock()
local meta = minetest.get_meta(pos);
if meta:get_string("state") == "opend" then -- only open the gate if its closed
local pos1 = minetest.string_to_pos(meta:get_string("pos1"))
local pos2 = minetest.string_to_pos(meta:get_string("pos2"))
minetest.create_schematic(pos1, pos2,{}, savedir..minetest.pos_to_string(pos).."_opend.schematic")--save the opend gate before closing
minetest.place_schematic(pos1, savedir..minetest.pos_to_string(pos).."_closed.schematic", nil, nil, true)
meta:set_string("state","closed");
meta:set_string("infotext","closed");
minetest.swap_node(pos, {name="gates:controler_closed"})
end
--local end_time = os.clock()
--elapsed_time = end_time-start_time
--print('start time: '   .. start_time .. 's')
--print('end time: '     .. end_time .. 's')
--print('time elapsed: ' .. elapsed_time .. 's')
end

local function open_gate(pos)
--local start_time = os.clock()
local meta = minetest.get_meta(pos);
if meta:get_string("state") == "closed" then -- only open the gate if its closed
local pos1 = minetest.string_to_pos(meta:get_string("pos1"))
local pos2 = minetest.string_to_pos(meta:get_string("pos2"))
minetest.create_schematic(pos1, pos2,{}, savedir..minetest.pos_to_string(pos).."_closed.schematic")--save the closed gate before opening
minetest.place_schematic(pos1, savedir..minetest.pos_to_string(pos).."_opend.schematic", nil, nil, true)
meta:set_string("state","opend");
meta:set_string("infotext","opend");
minetest.swap_node(pos, {name="gates:controler_opend"})
end
--local end_time = os.clock()
--elapsed_time = end_time-start_time
--print('start time: '   .. start_time .. 's')
--print('end time: '     .. end_time .. 's')
--print('time elapsed: ' .. elapsed_time .. 's')
end

local function toggle(pos)
local meta = minetest.get_meta(pos);
if meta:get_string("state") == "opend" then
close_gate(pos);
return "closed"
else
open_gate(pos);
return "opend"
end
end


local  function submitted(pos, formname, fields, sender)
print(dump(fields));
if fields.quit then return end;
	meta = minetest.get_meta(pos);
	page = meta:get_int("page");
	
	if fields.next and page == 0 then
	
	meta:set_int("page",1);
	elseif fields.next and fields.pos1 and fields.pos2 then --check if correct node is entered
		local pos1 = minetest.string_to_pos(fields.pos1);
		if pos1 == nil then
			minetest.chat_send_player(sender:get_player_name(), "Not a valid Position 1 entered. must be in format (x,y,z)")
			return 
		end
		local pos2 = minetest.string_to_pos(fields.pos2);
		if pos2 == nil then
			minetest.chat_send_player(sender:get_player_name(), "Not a valid Position 2 entered. must be in format (x,y,z)")
			return 
		end
		print(vector.distance(pos, pos1));
		print(gates.max_distance);
		if vector.distance(pos, pos1) > gates.max_distance then 
			minetest.chat_send_player(sender:get_player_name(), "Pos1 is too far away from gate controler max ".. gates.max_distance .." is alowed, you have "..vector.distance(pos, pos1))
			return
		end
		if vector.distance(pos, pos2) > gates.max_distance then 
			minetest.chat_send_player(sender:get_player_name(), "Pos2 is too far away from gate controler max ".. gates.max_distance .." is alowed, you have "..vector.distance(pos, pos2))
			return
		end
		local smallest,biggest = normalize_pos(pos1,pos2)
		local v = vector.subtract(biggest,smallest)
		volume = v.x*v.y*v.z
		print("volume:",volume);
		if volume > 1000 then
		
		minetest.chat_send_player(sender:get_player_name(), "the volume is too big! max 1000 is alowed")
		return
		end
		meta:set_string("pos1", minetest.pos_to_string(smallest))
		meta:set_string("pos2", minetest.pos_to_string(biggest))
		meta:set_int("page",2);

	elseif fields.next and page == 3 then --go to page 4 (final page)
		meta:set_int("page",4);
	
	elseif fields.next and (meta:get_int("page") == 4) then --go to page 5 (last page)
		meta:set_int("page",5);
	end
	 
	if fields.build_opend then
		meta:set_string("state","opend");
		meta:set_string("infotext","Now build a gate wich is open.");
	elseif fields.build_closed then
		meta:set_string("state","closed");
		meta:set_string("infotext","Now build a gate wich is closed.");
	end
	
	if fields.opend_finisched then
		local pos1 = minetest.string_to_pos(meta:get_string("pos1"))
		local pos2 = minetest.string_to_pos(meta:get_string("pos2"))
		minetest.create_schematic(pos1, pos2,{}, savedir..minetest.pos_to_string(pos).."_opend.schematic")
		if schematic_exists(pos,"closed") then --if there is a closed one build
			meta:set_int("page",3);--set page to page 3
			meta:set_string("infotext","closed");	
		else 
			meta:set_string("state","closed");
			meta:set_string("infotext","Now build a gate wich is closed.");
		end
	elseif fields.closed_finisched then
		local pos1 = minetest.string_to_pos(meta:get_string("pos1"))
		local pos2 = minetest.string_to_pos(meta:get_string("pos2"))
		minetest.create_schematic(pos1, pos2,{}, savedir..minetest.pos_to_string(pos).."_closed.schematic")
		if schematic_exists(pos,"opend") then --if there is a opend one build
			meta:set_int("page",3);--set page to page 3
			meta:set_string("infotext","closed");	
		else 
			meta:set_string("state","opend");
			meta:set_string("infotext","Now build a gate wich is opend.");
		end
	end
	if fields.read_worldedit then
	local name = sender:get_player_name()
		minetest.chat_send_player(name, "read worldedit");
		local pos1, pos2 = worldedit.pos1[name], worldedit.pos2[name];
		if pos1 and pos2 then
			meta:set_string("pos1",minetest.pos_to_string(pos1));
			meta:set_string("pos2",minetest.pos_to_string(pos2));
		else
			minetest.chat_send_player(name, "no worldedit region selected");
		end
	end
	if fields.cb_read1 then
	local name = sender:get_player_name()
		minetest.chat_send_player(name, "read from clipboard");
		local pos1 = gates.clipboard[name];
		if pos1  then
			meta:set_string("pos1",minetest.pos_to_string(pos1));		
		else
			minetest.chat_send_player(name, "please punch a block to copy its position into clipboard");
		end
	end
	if fields.cb_read2 then
	local name = sender:get_player_name()
		minetest.chat_send_player(name, "read from clipboard");
		local pos2 = gates.clipboard[name];
		if pos2  then
			meta:set_string("pos2",minetest.pos_to_string(pos2));		
		else
			minetest.chat_send_player(name, "please punch a block to copy its position into clipboard");
		end
	end
	if fields.toggle then
		local status = toggle(pos);
		if status == "opend" then
		minetest.chat_send_player(sender:get_player_name(), "Gate Opened")
		elseif status == "closed" then
		minetest.chat_send_player(sender:get_player_name(), "Gate Closed")
		else
		minetest.chat_send_player(sender:get_player_name(), "ERROR: Unknown state of Gate")
		end
	end
	if fields.setup then
		meta:set_int("page",0);
	end
	if fields.prev then
		meta:set_int("page",page-1);
	end
	meta:set_string("formspec",get_form(pos))
end

local function punched(pos, node, puncher, pointed_thing)
--print(schematic_exists(pos,"closed"),schematic_exists(pos,"opend"))
local playername = puncher:get_player_name()
	if schematic_exists(pos,"closed") and schematic_exists(pos,"opend") then
		local status = toggle(pos);
		if status == "opend" then
		minetest.chat_send_player(playername, "Gate Opened")
		elseif status == "closed" then
		minetest.chat_send_player(playername, "Gate Closed")
		else
		minetest.chat_send_player(playername, "ERROR: Unknown state of Gate")
		end	
	end
end

local function destruct(pos)
os.remove(savedir..minetest.pos_to_string(pos).."_opend.schematic")
os.remove(savedir..minetest.pos_to_string(pos).."_closed.schematic")
end

minetest.register_node("gates:controler",{
description ="Gate controller",
tiles = {"gates_bg.png","gates_bg.png","gates_bg.png^gates_unknown.png"},
groups = {oddly_breakable_by_hand = 1,soil = 3},
after_place_node = placed,
on_receive_fields =submitted,
on_punch = punched,
on_destruct = destruct,--function(pos, node, puncher, pointed_thing)
  mesecons = {effector = {
    rules = {{x = 1, y = 0, z = 0},
 {x =-1, y = 0, z = 0},
 {x = 0, y = 0, z = 1},
 {x = 0, y = 0, z =-1}},
    --action_on = open_gate,
    --action_off = close_gate--function (pos, node)
    --action_change = function (pos, node)
  }}
})

minetest.register_node("gates:controler_opend",{
description ="Gate controller",
tiles = {"gates_bg.png","gates_bg.png","gates_bg.png^gates_opend.png"},
groups = {oddly_breakable_by_hand = 1,soil = 3},
after_place_node = placed,
on_receive_fields =submitted,
on_punch = punched,
on_destruct = destruct,--function(pos, node, puncher, pointed_thing)
drop = "gates:controler",
  mesecons = {effector = {
    rules = {{x = 1, y = 0, z = 0},
 {x =-1, y = 0, z = 0},
 {x = 0, y = 0, z = 1},
 {x = 0, y = 0, z =-1}},
    action_on = open_gate,
    action_off = close_gate--function (pos, node)
    --action_change = function (pos, node)
  }}
})

minetest.register_node("gates:controler_closed",{
description ="Gate controller",
tiles = {"gates_bg.png","gates_bg.png","gates_bg.png^gates_closed.png"},
groups = {oddly_breakable_by_hand = 1,soil = 3},
after_place_node = placed,
on_receive_fields =submitted,
on_punch = punched,
on_destruct = destruct,--function(pos, node, puncher, pointed_thing)
drop = "gates:controler",
  mesecons = {effector = {
    rules = {{x = 1, y = 0, z = 0},
 {x =-1, y = 0, z = 0},
 {x = 0, y = 0, z = 1},
 {x = 0, y = 0, z =-1}},
    action_on = open_gate,
    action_off = close_gate--function (pos, node)
    --action_change = function (pos, node)
  }}
})

--clipboard action:
gates.clipboard = {};

minetest.register_on_punchnode(function(pos, node, puncher, pointed_thing)
	if node.name ~= "air" then
		local name = puncher:get_player_name();
		print(name);
		if gates.clipboard then
		gates.clipboard[name] = pos;
		else 
		gates.clipboard={};
		gates.clipboard[name] = pos;
		end
		--print("saved pos to clipboard");
	end
end)