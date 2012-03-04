print("LSL 2...")
--Configs---------------------------------------------

			LSL_Build	= 110 -- 23.07. 23:48 Kenuvis
			
------------------------------------------------------

--[[=========================================
 _     _    _
| |   | |  | |  /\                  /\
| |   | |  | | /  \   _ __  _ __   /  \   _ __ ___
| |   | |  | |/ /\ \ | '_ \| '_ \ / /\ \ | '__/ __|
| |___| |__| / ____ \| |_) | |_) / ____ \| | | (__
|______\____/_/    \_\ .__/| .__/_/    \_\_|  \___|
  Scripting Project  | |   | | Improved LUA Engine
                     |_|   |_|
   SVN: http://svn.burning-azzinoth.de/LUAppArc
   ----------------------
   Lua Scripting Library II
   Projectname: New Line
   Code by Memento and Kenuvis
========================================]]--

--Defines---------------------------------------------

			local Config	= {} -- Configs for LSL
			local LSL 		= {} -- All WoW Commands/Metatable
			local Server 	= {} -- The Server-Class/Metatable
			local File      = {} -- The File-Class/Metatable
			local Userdata  = {} -- Userdata-Class/Metatable
			local EScript	= {} -- NPC controlling/Metatable - EasyScript
			local DB        = {} -- The DB-Command Table
			
			local CL  		= {} -- Command Link 1
			local ReTele    = {} -- Table for ReTeleports
			local EGossip	= {} -- Table for EasyGossip
			
------------------------------------------------------

--Commands Links--------------------------------------
function command_link()
		CL = {
			 find 			= {table = table.find, string = string.find},
			 findall    	= {table = table.findall},
			 calc 			= {table = table.calc},
			 tostring		= {table = table.tostring},
			 tobool     	= {number = math.tobool, string = string.tobool},
			 compare    	= {table = table.compare},
			 even       	= {number = math.iseven},
			 uneven     	= {number = math.isuneven},
			 round      	= {number = math.rounding},
			 between    	= {number = math.between},
			 connect    	= {string = string.connect, table = table.connect},
			 color			= {string = string.color}
		}
end
			
------------------------------------------------------

function Userdata:Load()
	function Userdata:GetPosition(...) return GetPosition(self:output(),...) end
	function Userdata:Health(...) return Health(self:output(), ...)  end
	function Userdata:Mana(...) return Mana(self:output(), ...) end
	function Userdata:Respawn(...) return Respawn(self:output(),...) end
	function Userdata:DealMoney(...) return DealMoney(self:output(),...) end
	function Userdata:IsSheeped() return IsSheeped(self:output()) end
	function Userdata:IsInArea(...) return IsInArea(self:output(),...) end
	function Userdata:IsInRoundArea(...) return IsInRoundArea(self:output(),...) end
	function Userdata:GetDistanceToCoord(...) return GetDistanceToCoord(self:output(),...) end
	function Userdata:LearnAll(...) return LearnAll(self:output(), ...) end
	function Userdata:SetReTeleport() return SetReTeleport(self:output()) end
	function Userdata:ReTeleport() return ReTeleport(self:output()) end
	function Userdata:MaxSkill(...) return MaxSkill(self:output(), ...) end
	function Userdata:IntervalCast(...) return IntervallCast(self:output(),...) end
	function Userdata:AddGossipMenu(Player, ...) return AddGossipMenu(self, Player, ...) end
	function Userdata:MetaT(recall)
			Check_Type(recall, "table")		
			return LSL:MetaT(self:output(), recall)
		end
	Userdata.Read = true
end	

--Private---------------------------------------------

--return the orginal Value, if you want, as a number or string
function LSL:output(type)
		 local op = getmetatable(self).orginal
		 
		 if type then
		    if type == "number" then
		       op = tonumber(op) or 0
			elseif type == "string" then
			   op = tostring(op) or ""
			end
		 end
		 
		 return op
	end

--return the created Metatable for the different types
function LSL:MetaT(input, recall)
		 if type(input) == "string" or type(input) == "number" then
		    return {    orginal = input,
		    	   		__call = 	function (_table, b)
             				   			if type(b) == "table" then
             				   			   return LSLType(b)
             				   			end
										if b then
											setmetatable(_table, _table:MetaT(b))
										end
									   	return _table:output()
								   	end,
						__concat =  function (_table, b)
							  			return _table:output("string")..b
									end,
						__add = 	function (_table, b)
										return _table:output("number")+b
									end,
                        __sub = 	function (_table, b)
							  			return _table:output("number")-b
									end,
						__mul =     function (_table, b)
							  			return _table:output("number")*b
									end,
						__div =     function (_table, b)
							  			return _table:output("number")/b
									end,
						__unm =     function (_table)
							  			return -_table:output("number")
									end,
						__pow =     function (_table, b)
							  			return _table:output("number")^b
									end,
						__eq =      function (_table) return _table:output() end,
						__lt =      function (_table) return _table:output() end,
						__le =      function (_table) return _table:output() end,
						__tostring= function (_table) return _table:output("string") end
					} end

		if type(input) == "nil" then
     	   return {		orginal = nil,
					   	__call = 	function (_table, b)
             				   			if type(b) == "table" then
             				   			   return LSLType(b)
             				   			end
										if b then
											setmetatable(_table, _table:MetaT(b))
										end
									   	return _table:output()
								   	end,
           				__add = 	function (_, b)
							  			return b
									end,
                        __sub = 	function (_, b)
							  			return -b
									end,
						__mul =     function ()
							  			return 0
									end,
						__div =     function ()
							  			return 0
									end,
						__unm =     function ()
							  			return 0
									end,
						__pow =     function ()
							  			return 0
									end,
						__concat =  function (_, b)
							  			return b
									end,
						__eq =      function () return false end,
						__lt =      function () return false end,
						__le =      function () return false end,
						__tostring= function () return "nil" end
					} end

		if type(input) == "table" then
     	   return {		orginal = input,
     	   		  		__index =	function (_table) 
							  			LSL:MetaT(_table)
										return LSL 
									end,
					   	__call = 	function (_table, b)
             				   			if type(b) == "table" then
             				   			   return LSLType(b)
             				   			end
             				   			if b then
											setmetatable(_table, _table:MetaT(b))
										end
									   	return _table:MetaT(_table:output())
								   	end,
           				__add = 	function (_table, b)
          					  			return table.calc(_table, "+", b)
									end,
                        __sub = 	function (_table, b)
            				  			return table.calc(_table, "-", b)
									end,
						__mul =     function (_table, b)
            				  			return table.calc(_table, "*", b)
									end,
						__div =     function (_table, b)
            				  			return table.calc(_table, "/", b)
									end,
						__unm =     function (_table, b)
            				  			return table.calc(_table, "_", b)
									end,
						__pow =     function (_table, b)
            				  			return table.calc(_table, "^", b)
									end,
						__concat =  function (_table, b)
							  			return table.connect(_table:output(), b)
									end,
						__tostring= function (_table)
										return table.tostring(_table:output())
									end
					} end
					
		if type(input) == "userdata" then
		   return {		orginal = 	input,
		                recall  =   recall,
						-- wir leiten alle Befehle, die nicht durch die LSL kommen
						-- einfach an die orginale userdata weiter
                  		__index = 	function (_table,b)
					  					return _table:output()
									end
				    } end
		
	end

function Server:MetaT()
	  	return {__index = function(a,b) 
							if not a.config_read then
								a:ReadServerConfig("world") 
								a:ReadServerConfig("optional")
								a:ReadServerConfig("realms")
								a.config_read = true
							else	  
		  						error("Config "..b.." didnt found!", 2) 
							end 
						  end,
			  __newindex = function(_,b) error("You cant add a Config to the Server") end,
			  __tostring = function(_table) return _table:GetRealmName() end}
	end
	
function File:MetaT(_tab)
		local mt = getmetatable(self) or {}
		
		setmetatable(self, {})

        self = table.connect(self, _tab)

		mt = table.connect(mt, _tab)

		setmetatable(self, {__index = mt, __newindex = function() error("You cant modify the FileData at this way!", 3) end})
	end
	
local 	function LSLprint(_message)
			print(Time("*C").." LUA - LSL2: ".._message)
		end

local 	function Server_commands_blocked()
			if (Config["enabledservercommands"] == 0) then
				LSLprint("Server commands are disabled!")
				return true
			end
			return false
		end

local 	function WOW_commands_blocked()
			if (Config["enabledwowcommands"] == 0) then
				LSLprint("WoW commands are disabled!")
				return true
			end
			return false
		end

local 	function File_commands_blocked()
			if (Config["enabledfilecommands"] == 0) then
				LSLprint("File commands are disabled!")
				return true
			end
			return false
		end
		
local 	function Batch_command_blocked()
			if (Config["Batch"] == 0) then
				LSLprint("Batch command is disabled!")
				return true
			end
			return false
		end

local 	function LuaReload_command_blocked()
			if (Config["LuaReload"] == 0) then
				LSLprint("LuaReload command is disabled!")
				return true
			end
			return false
		end

local 	function Check_file_dir(_dir)
			local s_dir = Config["standarddirectory"] or "scripts/"
			if (string.sub(_dir, 1, string.len(s_dir)) ~= s_dir) then
				return s_dir.._dir
			else
				return _dir
			end
		end

local 	function Check_conf_dir(_dir)
			local s_dir = Config["standardconfigdir"] or "configs/"
			if (string.sub(_dir, 1, string.len(s_dir)) ~= s_dir) then
				return s_dir.._dir
			else
				return _dir
			end
		end	
 	

------------------------------------------------------

--Register--------------------------------------------

--For register a variable as a lsl supported variable
function LSLType(var)
		if not LSL.Read then LSL:Load() end
		local return_table = LSL

		if type(var) == "table" then
		    if not var.lsltype then
	      		return_table = var
			else
				return var
			end
		elseif type(var) == "function" then
		   LSLprint("Functions cannot register to the LSL!")
		   return var
		elseif type(var) == "userdata" then
	       if WOW_commands_blocked() then return end
		   --LSLprint("We do not know exactly, what happend, if you register a Userdata to the LSL, but lets try!")
		   if not Userdata.Read then Userdata:Load() end
		   return_table = Userdata
		end

		setmetatable(return_table, LSL:MetaT(var))
		return_table.lsltype = "lsl"
	    return return_table
	end

function ServerType()
		if Server_commands_blocked() then return end
		
		if not Server.Loaded then Server:Load() end

		local result = Server

		setmetatable(result, Server:MetaT())
		result.lsltype = "server"

		return result
	end

function FileType(path)
		if File_commands_blocked() then return end
		
--		-- Eigentlich sinnlos, da das Laden der LSL bereits File ausführt
		if not File.Loaded then File:Load() end

		result = File
		 
		result:MetaT({File = nil, IsOpen = false, Exist = 0, Path = path, lsltype = "file"})

		return result
	end
	
function DBType()
		return DB
	end

function QuestID(_qid, _name)
		Check_Type(_qid, "number")
		Check_Type(_name, "string")

		local result = setmetatable(EScript, {__newindex = function(a,b)
		                                if b == "OnAccept" then
		                                    RegisterQuestEvent(a.id, 1, a.name..":"..b)
										elseif b == "OnComplete" then
										    RegisterQuestEvent(a.id, 2, a.name..":"..b)
										elseif b == "OnCancel" then
										    RegisterQuestEvent(a.id, 3, a.name..":"..b)
                                        elseif b == "OnGameobjectActivate" then
										    RegisterQuestEvent(a.id, 4, a.name..":"..b)
										elseif b == "OnCreatureKill" then
										    RegisterQuestEvent(a.id, 5, a.name..":"..b)
										elseif b == "OnExploreArea" then
                                            RegisterQuestEvent(a.id, 6, a.name..":"..b)
										elseif b == "OnPlayerItempickup" then
                                            RegisterQuestEvent(a.id, 7, a.name..":"..b)
										end end})

		    
		result.id = _qid
		result.name = _name
		result.type = "quest"
		result.lsltype = "script"
		
		_G[name] = result
		return result
	end
	
function ItemID(_iid, _name)
		Check_Type(_iid, "number")
		Check_Type(_name, "string")

		local result = setmetatable(EScript, {__newindex = function(a,b)
		                                if b == "EasyGossip" then
                                        	RegisterItemGossipEvent(a.id, 1, "EScript:OnGossip")
                                        	RegisterItemGossipEvent(a.id, 2, "EScript:OnGossip")
                                        	EGossip[a.id] = {name = a.name, additional = false}
                                        elseif b == "EasyGossipAdd" then
                                        	a.additional = true
										elseif b == "OnGossip" then
                                            RegisterItemGossipEvent(a.id, 1, a.name..":"..b)
										elseif b == "OnSelect" then
                                            RegisterItemGossipEvent(a.id, 2, a.name..":"..b)
										end end})

		    
		result.id = _iid
		result.name = _name
		result.type = "item"
		result.lsltype = "script"
		
		_G[name] = result
		return result
	end
	
function GOID(_goid, _name)
		Check_Type(_goid, "number")
		Check_Type(_name, "string")
		
		local result = setmetatable(EScript, {__newindex = function(a,b)
		                                if b == "OnCreate" then
		                                    RegisterGameObjectEvent(a.id, 1, a.name..":"..b)
										elseif b == "OnSpawn" then
										    RegisterGameObjectEvent(a.id, 2, a.name..":"..b)
										elseif b == "OnLootTaken" then
										    RegisterGameObjectEvent(a.id, 3, a.name..":"..b)
                                        elseif b == "OnUse" then
										    RegisterGameObjectEvent(a.id, 4, a.name..":"..b)
										elseif b == "OnAIupdate" then
										    RegisterGameObjectEvent(a.id, 5, a.name..":"..b)
										elseif b == "OnDespawn" then
                                            RegisterGameObjectEvent(a.id, 6, a.name..":"..b)
										elseif b == "OnGossip" then
                                            RegisterGOGossipEvent(a.id, 1, a.name..":"..b)
										elseif b == "OnSelect" then
                                            RegisterGOGossipEvent(a.id, 2, a.name..":"..b)
                                        elseif b == "EasyGossip" then
                                        	RegisterGOGossipEvent(a.id, 1, "EScript:OnGossip")
                                        	RegisterGOGossipEvent(a.id, 2, "EScript:OnGossip")
                                        	EGossip[a.id] = {name = a.name, additional = false}
                                        elseif b == "EasyGossipAdd" then
                                        	a.additional = true
										end end})

		    
		result.id = _goid
		result.name = _name
		result.type = "go"
		result.lsltype = "script"
		
		_G[name] = result
		return result
	end
			
function NPCID(_npcid, _name)
		Check_Type(_npcid, "number")
		Check_Type(_name, "string")
		
		local result = setmetatable(EScript, {__newindex = function(a,b)
		                                if b == "OnEnterCombat" then
		                                    RegisterUnitEvent(a.id, 1, a.name..":"..b)
										elseif b == "OnLeaveCombat" then
										    RegisterUnitEvent(a.id, 2, a.name..":"..b)
										elseif b == "OnTargetDied" then
										    RegisterUnitEvent(a.id, 3, a.name..":"..b)
                                        elseif b == "OnDied" then
										    RegisterUnitEvent(a.id, 4, a.name..":"..b)
										elseif b == "OnSpawn" then
										    RegisterUnitEvent(a.id, 18, a.name..":"..b)
										elseif b == "OnReachWP" then
                                            RegisterUnitEvent(a.id, 19, a.name..":"..b)
										elseif b == "OnLootTaken" then
                                            RegisterUnitEvent(a.id, 20, a.name..":"..b)
										elseif b == "OnDamageTaken" then
											RegisterUnitEvent(a.id, 23, a.name..":"..b)
										elseif b == "OnGossip" then
                                            RegisterUnitGossipEvent(a.id, 1, a.name..":"..b)
										elseif b == "OnSelect" then
                                            RegisterUnitGossipEvent(a.id, 2, a.name..":"..b)
                                        elseif b == "EasyGossip" then
                                        	RegisterUnitGossipEvent(a.id, 1, "EScript:OnGossip")
                                        	RegisterUnitGossipEvent(a.id, 2, "EScript:OnGossip")
                                        	EGossip[a.id] = {name = a.name, additional = false}
                                        elseif b == "EasyGossipAdd" then
                                        	a.additional = true
										end end})

		    
		result.id = _npcid
		result.name = _name
		result.type = "npc"
		result.lsltype = "script"
		
		_G[name] = result
		return result
	end
	
------------------------------------------------------

--Public----------------------------------------------

function LSLCheck(_version, _style)
		if _version <= LSL_Build then
			return true
		else
			_style = _style or ""
			print(string.format("%sLSL Version %s need, but only found Version %s", _style, _version, LSL_Build))
			--os.execute("start http://svn.burning-azzinoth.de/LUAppArc/luascripts/stable/other/1%20LSL.lua")
			return false
		end
	end

function luaprint(_message)
		 print(Time("*C").." LUA: ".._message)
	end

function Check_Type(_var, _type, _ortype, _cannil)
		 if _cannil and type(_var) == "nil" then return end

		 if type(_var) == _type then return end

		 if _ortype and type(_var) == _ortype then return end
		 
		 if type(_var) == "userdata" then
		 	if _type == "creature" and _var:IsCreature() then return end
		 	if _type == "player" and _var:IsPlayer() then return end
		end

		 error(string.format("Invalid type! ".._type.." expect,but get "..type(_var)), 3)
		 --print(string.format("Invalid type! ".._type.." expect,but get "..type(_var))) 
	end

function ReloadLua (_lfile)
		if LuaReload_command_blocked() then return end
		
		Check_Type(_lfile, "string")
		
		if not FileType(_lfile):Exists() then
		   _lfile = "scripts/".._lfile
		end

		nilBug, Error = loadfile(_lfile)
		if nilBug == nil and Error ~= nil then
		   	print("failed. (could not load)\n	"..Error)
		else
			luaprint(_lfile.."...")
			dofile(_lfile)
			luaprint(_lfile.."... Finish!")
		end
	end

function batch (_command)
		 if Batch_command_blocked then return end

		 Check_Type(_command, "string")
		 os.execute(_command)
	end
	
function Time (_type, _time)
		Check_Type(_type, "string", "nil")
		Check_Type(_time, "number", "nil")

		if os then
	  		_type = _type or "*N"
			_time = _time or os.time()
			_time = os.date("*t",_time)
		else
			_time = {hour = "1", min = "1", sec = "1"}
		end

		local hour 	= _time.hour
		local min 	= _time.min
		local sec 	= _time.sec

		if (string.len(hour) == 1) then hour = "0"..hour end
		if (string.len(min) == 1) then min = "0"..min end
		if (string.len(sec) == 1) then sec = "0"..sec end
		
		if _type == "*F" then return hour..";"..min..";"..sec end
		if _type == "*P" then return hour..":"..min..":"..sec end
		if _type == "*C" then return hour..":"..min end
		if _type == "*H" then return hour end
		if _type == "*M" then return min end
		if _type == "*S" then return sec end
	end
	
function Date (_type, _time)
		Check_Type(_type, "string", "nil")
		Check_Type(_time, "number", "nil")

		if os then
			_type = _type or "*N"
			_time = _time or os.time()
			_time = os.date("*t",_time)
		else
		    _time = {day = "1", month = "1", year = "1999"}
		end

		local day 	= _time.day
		local month = _time.month
		local year 	= _time.year
		
		if (string.len(day) == 1) then day = "0"..day end
		if (string.len(month) == 1) then month = "0"..month end
		
		if _type == "*F" then return day.."/"..month.."/"..year end
		if _type == "*N" then return day.."."..month.."."..year end
		if _type == "*T" then return day.."."..month end
		if _type == "*D" then return day end
		if _type == "*M" then return month end
		if _type == "*Y" then return year end
	end

------------------------------------------------------

--table commands--------------------------------------

table.find = function (_table, _value, _index)
		Check_Type(_table, "table")
		Check_Type(_index, "number", "string", true)

		for i,k in pairs(_table) do
			if (_index ~= nil) then
				k = k[_index]
			end		
			if (k == _value) then return i end
		end
	end
	
table.findall = function (_table, _value, _index)
		Check_Type(_table, "table")
		Check_Type(_index, "number", "string", true)
		
		local return_table = {}
		for i,k in pairs(_table) do
			if (_index ~= nil) then
				k = k[_index]
			end
			if (k == _value) then table.insert(return_table, i) end
		end
		
		return return_table
	end
	
table.calc = function (_table, _operation, _num)
        Check_Type(_table, "table")
        Check_Type(_operation, "string")
		Check_Type(_num, "number", true)
		

		local temp = {}
		for k,v in pairs(_talble) do
		    temp[k] = v
		    if type(tonumber(v)) == "number" then
		       v = tonumber(v)
			   if _operation == "+" then
			   	  temp[k] = v + _num
			   elseif _operation == "-" then
         	      temp[k] = v - _num
         	   elseif _operation == "*" then
         	      temp[k] = v * _num
         	   elseif _operation == "/" then
         	      temp[k] = v / _num
         	   elseif _operation == "^" then
         	      temp[k] = v ^ _num
         	   elseif _operation == "_" then
         	      temp[k] = -v
         	   end
			end
		end

		return temp
	end

table.tostring = function (_table, _start, _end)
         Check_Type(_table, "table")
		 Check_Type(_start, "number", "nil")
		 Check_Type(_end, "number", "nil")
		 
 		 if _start and _end then
   		 	local _ztable = {}

			for a = _start, _end, 1 do
				table.insert(_ztable, _table[a])
			end
			
			_table = _ztable
		 end

		 local temp = ""

		 for _,v in pairs(_table) do
		    if type(v) == "table" then
				setmetatable(v, {__tostring = function (_table) return table.tostring(_table) end})
			end
			
			temp = temp..tostring(v).."\n"
		 end
		 
		 return temp
	end

table.compare = function (_table1, _table2, _irregular)
         Check_Type(_table1, "table")
         Check_Type(_table2, "table")
         Check_Type(_irregular, "boolean", "nil")
         _irregular = _irregular or true
         
		 setmetatable(_table1, {__index = function() return nil end})
		 setmetatable(_table2, {__index = function() return nil end})
		 
		 local compare_table = {}
		 
		 for k,v in pairs(_table1) do
		     if v ~= _table2[k] then
		        table.insert(compare_table, v)
			 end
		 end
		 
		 for k,v in pairs(_table2) do
			 if _irregular then
				 if v ~= _table1[k] and not table.find(compare_table, v) then
			        table.insert(compare_table, v)
				 end
			 else
				 if v ~= _table1[k] then
			        table.insert(compare_table, v)
				 end
			 end
		 end
		 
		 return compare_table
	end
table.connect = function (_table1, _table2)
		 Check_Type(_table1, "table")
		 Check_Type(_table2, "table")

		 for key,info in pairs(_table2) do
		     if type(key) == "string" then
				_table1[key] = info
			 else
			    table.insert(_table1, info)
			 end
		end

		return _table1
	end


------------------------------------------------------

--math commands---------------------------------------

math.iseven = function (_number)
		Check_Type(_number, "number")
		
		if (math.floor(_number/2 + 0.5) ~= _number/2) then
			return false
		else
			return true
		end
	end
math.isuneven = function (_number)
		Check_Type(_number, "number")
		
		if (math.floor(_number/2 + 0.5) ~= _number/2) then
			return true
		else
			return false
		end
	end
math.rounding = function (_number)
		Check_Type(_number, "number")
		
		return math.floor(_number + 0.5)
	end
math.between = function (_number1, _number2, _numberbetween)
		Check_Type(_number1, "number")
		Check_Type(_number2, "number")
		Check_Type(_numberbetween, "number")

		if (_number1 > _number2) then
		    local _temp = _number1
			_number1 = _number2
			_number2 = _temp
		end

		if (_number1 <= _number) and (_number2 >= _number) then
		    return true
		else
		    return false
		end
	end
math.tobool = function (_number)
		Check_Type(_number, "number")
		
		if _number == 1 then
		   return true
		else
		   return false
		end
	 end
	
------------------------------------------------------

--string commands-------------------------------------

string.bytes = function (_bytestd)
		Check_Type(_bytestd, "string")

		local _StringTable = {}
		for we=1,string.len(_bytestd),1 do
			table.insert(_StringTable, string.char(string.byte(_bytestd, we)))
		end
		return _StringTable
	end
string.add = function (_string, _addstring, _inline)
		Check_Type(_string, "string")
		Check_Type(_addstring, "string")
		Check_Type(_inline, "number")

		return string.sub(_string, 1, _inline).._addstring..string.sub(_string, _inline)
	end
string.remove = function (_string, _startdel, _enddel)
		Check_Type(_string, "string")
		Check_Type(_startdel, "number")
		Check_Type(_enddel, "number")

		return string.sub(_string, 1, _startdel)..string.sub(_string, _enddel)
	end
string.connect = function (_tabcon, _start, _end)
		return table.tostring(_tabcon, _start, _end)
--		Check_Type(_tabcon, "table")
--		Check_Type(_start, "number", "nil")
--		Check_Type(_end, "number", "nil")
--
--		_start = _start or 1
--		_end = _end or table.getn(_tabcon)
--		for i=_start,_end,1 do
--		    local _string = string.format("%s%s", _string, _tabcon[i])
--		end
--		return _string
	end
string.tobool = function (_str)
		Check_Type(_str, "string")

		_str = string.lower(_str)
		if _str == "true" or _str == "1" or _str == "+" then
		    return true
		else
		    return false
		end
	end
	
string.color = function (_message, _color)
		Check_Type(_message, "string")
		Check_Type(_color, "number", "string")

		if (_color == "white" or _color == 1) then _color = "FFFFFF"
		elseif (_color == "red" or _color == 2) then _color = "FF0000"
		elseif (_color == "green" or _color == 3) then _color = "00E500"
		elseif (_color == "blue" or _color == 4) then _color = "000FF0"
		elseif (_color == "yellow" or _color == 5) then _color = "FFF00F"
		elseif (_color == "pink" or _color == 6) then _color = "FF00FF"
		elseif (_color == "bluegreen" or _color == 7) then _color = "00F0F5"
		elseif (_color == "grey" or _color == 8) then _color = "7F7F7F"
		elseif (_color == "orange" or _color == 9) then _color = "CE9000"
		elseif (_color == "brown" or _color == 10) then _color = "86000"
		elseif (_color == "lila" or _color == 11) then _color = "854C90"
		elseif (_color == "rose" or _color == 12) then _color = "FE9490"
		elseif (_color == "gold" or _color == 13) then _color = "FFCD00"
		elseif (_color == "silver" or _color == 14) then _color = "CECEC7"
		elseif (_color == "bronce" or _color == 15) then _color = "A96800" end
		return "|cff".._color.._message.."|r"
	end

------------------------------------------------------

------------------------------------------------------
function File:Load()--File commands-------------------
------------------------------------------------------

function File:SetPath(_path)
		Check_Type(_path, "string", "nil")
		
		if _path then
		   local _conf = Check_conf_dir(_path)
		   _path = Check_file_dir(_path)
		
     	   self:MetaT({Path = _path, Exist = 0, Conf = _conf})
		end
		
		return self.Path
	end

function File:LoadConfig ()

		self:MetaT({Path = self.Conf, Conf = self.Path})
			
	  	local _file = self:Read()
		if (_file == nil) then return {} end
		local _table = {}
		local lay = {}
		
	    for _,str in pairs (_file) do 
			if (string.sub(str, 1, 1) ~= "#") and (str ~= "") then

                k,v = string.gfind(str, "(%w+) = (%w+)")()
				if k ~= nil and v ~= nil then
					v = tonumber(v) or v
					_table[k] = v
				end

			end
	 	end

		self:MetaT({Path = self.Conf, Conf = self.Path})

		return _table or {}
	end
	
function File:CreateFolder (_v)
        Check_Type(_v, "string")

		_v = Check_file_dir(_v)
		batch("md ".._v)
	end
	
function File:DeleteFolder (_a)
		Check_Type(_a, "string")
		
		_a = Check_file_dir(_a)
		batch("rd ".._a)
	end
	
function File:FolderExists (_folder)
		Check_Type(_folder, "string")
		
		local _test = _folder.."/lslfe.test"
		self:Create(_test)
		local look = self:Exists(_test)
		self:Remove(_test)
		self:MetaT({Exist = 0, File = nil, IsOpen = false})
		if not look then luaprint("No such directory: ".._folder) end
		return look
	end
	
function File:Exists ()
		local _file = io.open(self.Path, "r")
		if (_file ~= nil) then
			self:MetaT({Exist = 1, File = _file, IsOpen = true})
			return true
		else
		    self:MetaT({Exist = -1})
			return false
		end
	end
	
function File:Open (_mode)
        Check_Type(_mode, "string", "nil")
        
        _mode = ({write = "w", append = "a"})[_mode] or "r"

		if self.Exist == 0 and _mode == "r" then
			self:Exists()
		end
		if self.Exist == -1 and _mode ~= "w" then return end

		if self.IsOpen then return self.File end		

		_file = io.open(self.Path, _mode)
		self:MetaT({File = _file, IsOpen = true})
		return _file
	end
	
function File:Create ()
		self:MetaT({File = io.open(self.Path, "w"), IsOpen = true})
	end
	
function File:Read (_mode, _closeit)
		Check_Type(_mode, "string", "nil")
		Check_Type(_closeit, "boolean", "nil")
		local result

		self:Open()

		if self.Exist == -1 or self.File == nil then
		   luaprint("No such file: "..self.Path)
		   if not _mode then return {} else return end
		end


		if (_mode == "allinstring") then
			result = LSLType(self.File:read("*all"))
		elseif (_mode == "line") then
			result = LSLType(self.File:read("*l"))
		else        --"allintable"
		    local _table = {}
		    local str = self.File:read("*l")

      		while str do
				table.insert(_table, str)
				str = self.File:read("*l")
    		end
		 	result = _table
		end
		if _closeit or _closeit == nil then self:Close() end
		return result
	end
	
function File:Write (_input, _mode, _closeit)
		Check_Type(_mode, "string", "nil")
		Check_Type(_closeit, "boolean", "nil")
		
		local Mode = {
		addtoend = function (_old)
                self:Open("append")
				return _old
			end,
		addtofront = function (_old)
				local _new = self:Read("allintable", true)
				if type(_old) == "table" then
     			    table.connect(_old, _new)
				elseif type(_old) == "userdata" then
					table.insert(_new, 1, _old:GetName())
				else
					table.insert(_new, 1, _old)
				end
                self:Open("write")
				return _old
			end,
		new = function (_old)
				self:Open("write")
				return _old
			end}

		if not table.find({"addtoend","addtofront","new"}, _mode) then
			_mode = "new"
		end
		
		_input = Mode[_mode](_input)

		--self:Open("write")
		
		if (type(_input) == "table") then
   		   _input = table.tostring(_input)
		end

		self.File:write(_input)
		if _closeit == true or _closeit == nil then self:Close() end
	end
	
function File:Close ()
		if self.IsOpen then
		   self.File:close()
		end
        self:MetaT({IsOpen = false, File = nil})
	end

function File:Remove ()
		 self:Close()
		 os.remove(self.Path)
	end
	
function File:Rename (_newname)
  		 Check_Type(_newname, "string")
  		 self:Close()
		 _newname = Check_file_dir(_newname)
		 os.rename(_oldname, _newname)
	end
	
function File:Copy (_newpath)
		_newpath = Check_s_dir(_newpath)
		batch("xcopy "..self.Path.." ".._newpath)
	end

------------------------------------------------------
File.Loaded = true end--------------------------------
------------------------------------------------------

------------------------------------------------------
function Server:Load()--Server Commands---------------
------------------------------------------------------

function Server:ReadServerConfig (_jb)
		Check_Type(_jb, "string")

		local ServerConfig = FileType()
		-- do not try this at home!!!!!!!!!
		ServerConfig:MetaT({Path = "configs/arcemu-".._jb..".conf"})
		ServerConfig = ServerConfig:Read()

		if not ServerConfig then
		   LSLprint("configs/arcemu-".._jb..".conf didnt load!")
		   return
		end
				   
		for k,g in pairs(ServerConfig) do
		    if type(g) == "string" then
		
				if string.sub(g,1,1) and string.sub(g,1,1) ~= "#" then
					if string.sub(g,1,1) == "<" then
						_stable = string.gfind(g, "%a+")()
		   			 	self[_stable] = {}
		  		  	end
					for _,c in pairs({""," "}) do
						for m in string.gfind(g, "(%w+)"..c.."="..c.."\"") do
							local _,fh = string.find(g, m..c.."="..c.."\"");
							if fh then
								fh=fh+1
								local ys = string.sub(g, fh, string.len(g))
								local q = string.sub(ys, 1, string.find(ys, "\"")-1)
								if type(tonumber(q)) == "number" then q = tonumber(q) end
								
								local u = 2
								repeat
									 if self[_stable][m] then m = m..u end
								  	 u = u + 1
								until not self[_stable][m]
								self[_stable][m] = q
							end
						end
					end
				end
				
			end
		end
		
	   	LSLprint("configs/arcemu-".._jb..".conf loaded!")
	end

function Server:GetRealmTimeZone()
		local TimeZones = {
			"Korean", "Development", "United States", "Oceanic", "Latin America",
			"Tournament", "Korean", "English", "German", "French", "Spanish",
			"Russian", "Tournament", "Taiwan", "Tournament", "China", "CN1", "CN2",
			"CN3", "CN4", "CN5", "CN6", "CN7", "CN8", "Tournament", "Test Server",
			"Tournament", "QA Server", "CN9", "TestServer2"}
		Check_Type(result, "number")

		if not math.between(0,30,result) then
		   LSLprint("undefine TimeZone")
		   return result
		else
		   return TimeZone[result]
		end
	end
function Server:GetRealmName() 		return self.Realm.Name end
function Server:GetRealmType() 		return self.Realm.Icon end
function Server:GetRealmAddress() 	return self.Realm.Address end
function Server:GetRealmCount() 	return self.LogonServer.RealmCount end
function Server:GetLogLevel() 		return self.LogLevel.Screen end
function Server:GetPlayerLimit() 	return self.Server.PlayerLimit end
function Server:GetMotd() 			return self.Server.Motd end
function Server:GetBreathing() 		return math.tobool(self.Server.EnableBreathing) end
function Server:GetKickAFKPlayer() 	return self.Server.KickAFKPlayers end
function Server:GetConnectionTimeout() return self.Server.ConnectionTimeout end
function Server:GetPvPType() 		return math.tobool(self.Server.RealmType) end
function Server:GetHealthReg() 		return self.Rates.Health end
function Server:GetManaReg() 		return self.Rates.Power end
function Server:GetRageReg() 		return self.Rates.Power2 end
function Server:GetEnergyReg() 		return self.Rates.Power3 end
function Server:GetQuestRep() 		return self.Rates.QuestReputation end
function Server:GetKillRep() 		return self.Rates.KillReputation end
function Server:GetHonorRate()      return self.Rates.Honor end
function Server:GetPvPTimer()       return self.Rates.PvPTimer end
function Server:GetXPRate()         return self.Rates.XP end
function Server:GetQuestXPRate()    return self.Rates.QuestXP end
function Server:GetExploreXPRate()  return self.Rates.ExploreXP end
function Server:GetDropGreyRate()   return self.Rates.DropGrey end
function Server:GetDropWhiteRate()  return self.Rates.DropWhite end
function Server:GetDropGreenRate()  return self.Rates.DropGreen end
function Server:GetDropBlueRate()   return self.Rates.DropBlue end
function Server:GetDropPurpleRate() return self.Rates.DropPurple end
function Server:GetDropOrangeRate() return self.Rates.DropOrange end
function Server:GetDropArtifactRate() return self.Rates.DropArtifact end
function Server:GetDropMoneyRate()  return self.Rates.DropMoney end
function Server:GetSaveInterval()   return self.Rates.Save end
function Server:GetSkillRate()      return self.Rates.SkillChance end
function Server:GetSkillMulti()     return self.Rates.SkillRate end
function Server:GetArenaMultiplier2v2() return self.Rates.ArenaMultiplierx end
function Server:GetArenaMultiplier3v3() return self.Rates.ArenaMultiplierx2 end
function Server:GetArenaMultiplier5v5() return self.Rates.ArenaMultiplierx3 end
function Server:GetLogCheater()     return self.Log.Cheaters end
function Server:GetLogGMCommands()  return self.Log.GMCommands end
function Server:GetMailReloadDelay() return self.Mail.ReloadDelay end
function Server:GetVoiceChatEnabled() return self.VoiceChat.Enabled end
function Server:GetStartLevel()     return self.Optinal.StartingLevel end
function Server:GetLevelCap()       return self.Optinal.LevelCap end
function Server:GetInstant80()      return math.tobool(self.Extra.Instant) end
function Server:GetPvPToken()       return math.tobool(self.Extra.PvPToken) end
function Server:GetPvPTokenItem()   return self.Extra.PvPTokenID end
function Server:GetDeathKnightLimt() return math.tobool(self.ClassOptions.DeathKnightLimit) end
function Server:GetDeathKnightReq() return math.tobool(self.ClassOptions.DeathKnightPreReq) end
function Server:GetGoldCapEnabled() return math.tobool(self.GoldSettings.EnableGoldCap) end
function Server:GetGoldCap()        return self.GoldSettings.MaximumGold end
function Server:GetStartingGold()   return self.GoldSettings.StartingGold end

function Server:Start (_logon, _world, _misc)
		Check_Type(_logon, "string", "nil")
		Check_Type(_world, "string", "nil")
		Check_Type(_misc, "string", "nil")
		
		if _logon then batch("start cmd /c ".._logon) end
		if _world then batch("start cmd /c ".._world) end 
		if _misc  then batch("start cmd /c ".._misc)  end
	end

function Server:Restart (_logon, _world, _misc)
		Check_Type(_logon, "string", "nil")
		Check_Type(_world, "string", "nil")
		Check_Type(_misc, "string", "nil")
		
		self:Start(_logon, _world, _misc)
		self:Shutdown(_logon, _world, _misc)
	end

function Server:Shutdown (_logon, _world, _misc)
		Check_Type(_logon, "string", "nil")
		Check_Type(_world, "string", "nil")
		Check_Type(_misc, "string", "nil")
		
		if _logon then batch("taskkill /f /im ".._logon) end
		if _world then batch("taskkill /f /im ".._world) end		
		if _misc  then batch("taskkill /f /im ".._misc)  end
	end

function Server:ClearScreen ()
		batch("CLS")
	end

function Server:ConsoleColor (_color, _color2)
		Check_Type(_color, "number")
		Check_Type(_color2, "number", "nil")

		if Check_server_commands() then return end
		if _color2 == nil then _color2 = 10 end
		if _color == 10 then _color = "A" end
		if _color == 11 then _color = "B" end
		if _color == 12 then _color = "C" end
		if _color == 13 then _color = "D" end
		if _color == 14 then _color = "E" end
		if _color == 15 then _color = "F" end
		if _color2 == 10 then _color2 = "A" end
		if _color2 == 11 then _color2 = "B" end
		if _color2 == 12 then _color2 = "C" end
		if _color2 == 13 then _color2 = "D" end
		if _color2 == 14 then _color2 = "E" end
		if _color2 == 15 then _color2 = "F" end
		batch("color ".._color2.._color)
	end
	
function Server:StartWeb (_website)
		Check_Type(_website, "string")
		
		if (string.sub(_web, 1, 4) ~= "www." or string.sub(_website, 1, 7) ~= "http://") then return end

		batch("start ".._website)
	end
	
function Server:LuaFunctionCount()
		return table.getn(_G)
	end
	
------------------------------------------------------	
Server.Loaded = true end------------------------------
------------------------------------------------------

------------------------------------------------------
function LSL:Load()--specific LSL Commands------------
------------------------------------------------------

function LSL:testprint () return self:output().."_test" end

function LSL:Free () self = self() end

	--------------------------------------------------
	--LSL1: script.var.read---------------------------
	--------------------------------------------------
function LSL:LoadFromHDD (_name, _type)
        Check_Type(_name, "string")
        Check_Type(_type, "string", "nil")

		 local result
		 local function LoadTable()
		    local rtable={}
			while string.sub(result, 1,1) ~= "}" and string.sub(result, 1,1) ~= "" do
				if (string.sub(result,1,1) == ",") then
   			    	result = string.sub(result,2)
				elseif (string.sub(result,1,1) == "{") then
					result = string.sub(result,2)
			        table.insert(rtable, LoadTable())
				elseif (string.sub(result,1,1) == "+") then
					result = string.sub(result,2)
			        table.insert(rtable, true)
				elseif (string.sub(result,1,1) == "-")then
					result = string.sub(result,2)
			        table.insert(rtable, false)
				else
					 if (string.sub(result,1,1) == "§") then
					 	result = string.sub(result,2)
					 	if string.sub(result,1,string.find(result, "§")-1) == "true" then
					 	    table.insert(rtable, true)
						elseif string.sub(result,1,string.find(result, "§")-1) == "false" then
					 	    table.insert(rtable, false)
                        elseif string.sub(result,1,string.find(result, "§")-1) == "nil" then
					 	    table.insert(rtable, nil)
						else
                     		table.insert(rtable, string.sub(_table,1,string.find(result, "§")-1))
						end
						result = string.sub(result,string.find(result, "§")+1)
					 else
                     	table.insert(rtable, tonumber(string.sub(result,1,1)))
					 	result = string.sub(result,2)
					 end
				end
			end
			result = string.sub(result,2)
			return rtable
		end

       	local _file = FileType()
		-- do not try this at home!!!!!!!!!
		_file:MetaT({Path = Config["standardscriptvardir"].."var"..Config["scriptvarfilekind"]})
		_file = _file:Read()

		for _,str in pairs(_file) do
		    if (string.sub(str,1,string.len(_name)+1) == _name.."§") then
			   result = string.sub(str,string.len(_name)+2)

			   if type == "table" then
				  result = LoadTable()
			   end

			   result = tonumber(result) or tostring(result)
			   if result == "+" or result == "-" then
	     	   	  if result == "+" then result = true else result = false end
			   end

               self = LSLType(result)
			   return true
			end
		end
		return false
	end

	--------------------------------------------------
	--LSL1: script.var.write--------------------------
	--------------------------------------------------
function LSL:SaveToHDD (_name, _overwrite)
  		Check_Type(_name, "string")
  		Check_Type(_overwrite, "boolean", "nil")

		local function SaveTable(_table)
			local rstring = ""
			for i,k in pairs(_table) do
				if type(k) == "table"  then
					rstring = string.connect({rstring, "{",SaveTable(k), "},"})
				elseif type(k) == "string" then
					rstring = string.connect({rstring, string.format("§%s§",k), ","})
				elseif type(k) == "boolean" then
					if k then k = "+" else k = "-" end
					rstring = string.connect({rstring, k, ","})
				elseif type(k) == "userdata" then
					rstring = string.connect({rstring, k:GetName(), ","})
				elseif type(k) == "nil" then
				    rstring = string.connect({rstring, "§nil§", ","})
				else
					rstring = string.connect({rstring, k, ","})
				end
			end
			return rstring
		end
  		
  		if _overwrite == nil then _overwrite = true end
		if type(self()) == "table" then
			result = SaveTable(self)
		elseif type(self()) == "boolean" then
			if self() then result = "+" else result = "-" end
		elseif type(self()) == "userdata" then
			result = self():GetName()
		elseif type(self()) == "nil" then
		    result = "nil"
		else result = tostring(self()) end
		
       	local _file = FileType()
		-- do not try this at home!!!!!!!!!
		_file:MetaT({Path = Config["standardscriptvardir"].."var"..Config["scriptvarfilekind"]})
		local _table = _file:Read() 

		local _insert = table.getn(_table)+1
		for i,k in pairs(_table) do
			if (string.sub(k, 1, string.len(_name)+1) == _name.."§") then
				if _overwrite then
					_insert = i
					break
				else
					return false
				end
			end
		end

		_table[_insert] = _name.."§"..result

		return _file:Write(_table)
	end

	--------------------------------------------------
	--LSL1: script.var.remove-------------------------
	--------------------------------------------------
function LSL:RemoveFromHDD (_name)
		Check_Type(_name, "string")
		
       	local _file = FileType()
		-- do not try this at home!!!!!!!!!
		_file:MetaT({Path = Config["standardscriptvardir"].."var"..Config["scriptvarfilekind"]})
		local _table = _file:Read()


		for i,str in pairs(_table) do
		    if (string.sub(str,1,string.len(_name)+1) == _name.."§") then
				table.remove(_table, i)
				break
			end
		end

		_file:Write(_table)
	end



--command Link----------------------------------------

function Link_Command(_command, arg1, arg2, arg3)
		if CL[_command][type(self())] then
      	   return CL[_command][type(self())](arg1, arg2, arg3)
		end
	end

function LSL:find(arg2, arg3)
		 return Link_Command("find", self(), arg2, arg3)
	end
	
function LSL:findall(arg2, arg3)
		 return Link_Command("findall", self(), arg2, arg3)
	end
	
function LSL:calc(arg2, arg3)
		 return Link_Command("calc", self(), arg2, arg3)
	end
	
function LSL:tostring(arg2, arg3)
		 return Link_Command("tostring", self(), arg2, arg3)
	end
	
function LSL:tobool()
		 return Link_Command("tobool", self())
	end
	
function LSL:compare(arg2, arg3)
		 return Link_Command("compare", self(), arg2, arg3)
	end
	
function LSL:even()
		 return Link_Command("even", self())
	end
	
function LSL:uneven()
		 return Link_Command("uneven", self())
	end

function LSL:round()
		 return Link_Command("round", self())
	end

function LSL:between(arg1, arg2)
		 return Link_Command("between", arg1, arg2, self())
	end

function LSL:connect(arg1, arg2, arg3)
		 if type(self()) == "table" then
		 	return Link_Command("connect", self(), arg1)
		 else
		 	return Link_Command("connect", arg1, arg2, arg3)
		 end
	end

function LSL:color(arg1)
		 return Link_Command("color", self(), arg1)
	end
		
------------------------------------------------------
command_link()----------------------------------------
LSL.Read = true end-----------------------------------
------------------------------------------------------

--userdata commands-----------------------------------

-- Here is it, where all the magic begins!
function GetPosition(Unit, _mode)
        Check_Type(Unit, "userdata")
		Check_Type(_mode, "string", "nil")

		local _table = {Unit:GetX(),Unit:GetY(),Unit:GetZ(),Unit:GetMapId(),0}

		if _mode then
			for a=1,string.len(_mode),1 do
				if (string.sub(_mode, a, a) == "m") then
				   	_table[a] = Unit:GetMapId()
				elseif (string.sub(_mode, a, a) == "x") then
					_table[a] = Unit:GetX()
				elseif (string.sub(_mode, a, a) == "y") then
					_table[a] = Unit:GetY()
				elseif (string.sub(_mode, a, a) == "z") then
					_table[a] = Unit:GetZ()
				elseif (string.sub(_mode, a, a) == "o") then
					_table[a] = Unit:GetO()
				end
			end
		end

		return _table[1], _table[2], _table[3], _table[4], _table[5]
	end

function Health(Unit, _hp)
	    Check_Type(Unit, "userdata")
		Check_Type(_hp, "number", "nil")

		local health = Unit:GetHealth()
		local healthmax = Unit:GetMaxHealth()
		if (_hp == nil) then return health, healthmax end
		if (_hp > 100) then
			if (_hp > healthmax) then
				Unit:SetMaxHealth(_hp)
			end

			Unit:SetHealth(_hp)
		else
			Unit:SetHealthPct(_hp)
		end
		return health, Unit:GetHealth(), healthmax
	 end
 
function Mana(Unit, _mp)
	    Check_Type(Unit, "userdata")
	    Check_Type(_mp, "number", "nil")

		local mana = Unit:GetMana()
		local manamax = Unit:GetMaxMana()
		if (_mp == nil) then return mana, manamax end
		if (_mp > 100) then
		    if (_mp > manamax) then
				Unit:SetMaxMana(_mp)
			end

			Unit:SetMana(_mp)
		else
			Unit:SetMana((manamax/100)*_mp)
		end
		return mana, Unit:GetMana(), manamax
	 end
 
function Respawn(Unit, _delay)
	    Check_Type(Unit, "creature")
	    Check_Type(_delay, "number", "nil")

		_delay = _delay or 1

		Unit:Despawn(_delay, _delay)
	 end
 
function DealMoney(Unit, _money)
        Check_Type(Unit, "player")
		Check_Type(_money, "number")

		if _money > 0 then
		   Unit:DealGoldMerit(_money)
		else
		    if Unit:DealGoldCost(_money) then
		       return true
			else
				Unit:SendAreaTriggerMessage("You have not enought gold!")
				return false
			end
		end
	end

function IsSheeped(Unit)
        Check_Type(Unit, "userdata")
        
		local sheep = {118,12824,12825,12826,28272,28271,228,61025,61305,851,
		13323,14621,15534,27760,29849,30838,34639,36840,38245,38896,41334,
		43309,46280,58537}

		for _,spellid in pairs(sheep) do
		    if Unit:HasAura(spellid)  then
				return true
  			end
		end

		return false
	end

function IsInArea(Unit, _x1, _y1, _z1, _x2, _y2, _z2)
        Check_Type(Unit, "userdata")
		Check_Type(_x1, "number")
	    Check_Type(_y1, "number")
	    Check_Type(_z1, "number")
	    Check_Type(_x2, "number")
	    Check_Type(_y2, "number")
	    Check_Type(_z2, "number")

		local _x, _y, _z = Unit:GetPosition()

		if _z1 == 0 and _z2 == 0 then _z = 0 end
		if math.between(_x1, _x2, _x)
		and math.between(_y1, _y2, _y)
		and math.between(_z1, _z2, _z) then
			return true
		else
			return false
		end
	end

function IsInRoundArea(Unit, _x, _y, _z, _r)
		Check_Type(Unit, "userdata")
	    Check_Type(_x, "number")
	    Check_Type(_y, "number")
	    Check_Type(_z, "number")
	    Check_Type(_r, "number")

		if (GetDistanceToCoord(Unit, _x, _y, _z) <= _r) then
			return true
		else
			return false
		end
	end

function GetDistanceToCoord(Unit, _x, _y, _z)
		Check_Type(Unit, "userdata")
	    Check_Type(_x, "number")
	    Check_Type(_y, "number")
	    Check_Type(_z, "number")

	    _x = Unit:GetX()-_x
	    _y = Unit:GetY()-_y
	    local c = _x^2 + _y^2
	    _dist = c^0.5
	    if _z ~= 0 then
	    	local z = _dist^2 + (_z - Unit:GetZ())^2
	    	_dist = z^0.5
	    end
	    return _dist
	end

function LearnAll(Unit, Spelllist)
		Check_Type(Unit, "player")
		Check_Type(Spelllist, "table", "nil")

	    local Spells = Spelllist or {
			  ["Warrior"] = {6673, 2457, 78, 100, 772, 6343, 1715, 284, 2687, 71, 6546, 7386, 355, 5242, 7384, 72, 1160, 6572, 285, 694, 2565, 676, 8198, 845, 6547, 20230, 12678, 6192, 5246, 7405, 6190, 5308, 1608, 6574, 1161, 6178, 871, 8204, 2458, 7369, 20252, 6548, 1464, 11549, 18499, 20658, 11564, 11554, 7379, 8380, 1680, 6552, 8820, 8205, 11608, 20660, 11565, 11572, 23922, 11550, 11555, 11600, 11578, 11604, 11596, 20661, 11566, 23923, 11580, 11609, 1719, 11573, 11551, 11556, 11601, 23924, 11605, 20662, 11567, 11597, 11581, 25289, 20569, 25286, 11574, 25288, 23925, 25241, 25202, 34428, 25269, 23920, 25234, 29707, 25258, 25225, 25264, 25231, 469, 25208, 2048, 25242, 25203, 25236, 30324, 3411, 30357, 30356, 46845, 47519, 47449, 47470, 47501, 47439, 47474, 55694, 47487, 47450, 47465, 47520, 47467, 47436, 47502, 47437, 47475, 47440, 47471, 57755, 57823, 47488},
			  ["Paladin"] = {465, 635, 21084, 19740, 20271, 498, 639, 853, 1152, 10290, 1022, 633, 19834, 53408, 7328, 19742, 647, 31789, 62124, 7294, 25780, 1044, 31785, 26573, 643, 879, 19750, 5502, 19835, 19746, 1026, 20164, 19850, 5588, 5599, 10322, 10326, 19939, 1038, 10298, 5614, 53407, 19876, 20116, 10291, 19752, 1042, 2800, 20165, 34769, 13819, 19836, 19888, 19852, 642, 19940, 5615, 19891, 10324, 10299, 10278, 3472, 20166, 20922, 1032, 5589, 19895, 19837, 4987, 19941, 19853, 10312, 19897, 24275, 6940, 10328, 10300, 19899, 20772, 20923, 10292, 19942, 2812, 10310, 19838, 10313, 25782, 24274, 19896, 19854, 25894, 10308, 10329, 19898, 10301, 19943, 25291, 25290, 23214, 20924, 10293, 10314, 19900, 25898, 25916, 25899, 25918, 24239, 25292, 10318, 53651, 20773, 34767, 32223, 27135, 27151, 31892, 31801, 27142, 27143, 27137, 27150, 53736, 53720, 33776, 27138, 27152, 27180, 27139, 27154, 31884, 27140, 27173, 27149, 27153, 27141, 27136, 48935, 54428, 48937, 48816, 48949, 48931, 48800, 48933, 48941, 48784, 48805, 48818, 48781, 53600, 54043, 48943, 48936, 48945, 48938, 48947, 48817, 48788, 48932, 48942, 48801, 48785, 48934, 48950, 48819, 48806, 48782, 53601, 61411},
			  ["Hunter"] = {75, 2973, 1494, 13163, 1978, 3044, 1130, 5116, 14260, 13165, 883, 2641, 6991, 982, 13549, 1515, 19883, 14281, 20736, 136, 2974, 6197, 1002, 1513, 13795, 1495, 14261, 14318, 2643, 13550, 19884, 14282, 5118, 34074, 781, 1499, 3111, 14323, 3043, 1462, 14262, 19885, 14302, 3045, 13551, 19880, 14283, 14319, 13809, 3661, 13161, 5384, 14269, 14288, 14326, 1543, 14263, 19878, 13813, 13552, 14284, 14303, 3662, 3034, 14320, 13159, 14310, 14324, 14264, 19882, 1510, 14289, 13553, 14285, 14316, 13542, 14270, 20043, 14304, 14327, 14321, 14265, 13554, 56641, 19879, 14294, 14286, 13543, 14317, 14290, 20190, 14305, 14266, 14322, 14325, 14271, 13555, 14295, 14287, 25296, 19263, 14311, 13544, 25294, 25295, 19801, 27025, 34120, 27014, 27023, 34026, 27021, 27016, 27022, 27044, 27045, 27046, 34600, 27019, 34477, 36916, 49066, 53351, 48995, 49051, 49055, 49044, 49000, 61846, 48989, 49047, 58431, 61005, 53271, 49071, 53338, 49067, 48996, 49052, 49056, 49045, 49001, 61847, 60192, 61006, 48990, 53339, 49048, 58434},
			  ["Rogue"] = {2098, 1752, 1784, 53, 921, 1776, 1757, 5277, 6760, 6770, 5171, 2983, 2589, 1766, 8647, 703, 1758, 6761, 1966, 1804, 8676, 2590, 51722, 1943, 1785, 1725, 8631, 1759, 1856, 2836, 6762, 8724, 1833, 8649, 2591, 6768, 8639, 2070, 1842, 8632, 408, 1760, 8623, 8725, 2094, 8696, 8721, 8650, 8640, 8633, 8621, 8624, 8637, 1860, 1786, 11267, 6774, 1857, 11279, 11273, 11197, 11289, 17347, 11293, 11299, 11297, 11268, 26669, 8643, 11280, 11303, 11274, 11290, 11294, 11300, 11198, 11269, 17348, 11305, 11281, 25300, 31016, 25302, 11275, 1787, 26839, 32645, 26861, 26889, 26679, 26865, 27448, 27441, 31224, 26866, 26863, 26867, 32684, 48689, 48673, 26884, 26864, 5938, 26862, 51724, 48658, 48667, 48656, 57992, 48671, 48690, 48675, 57934, 48674, 48637, 48669, 48659, 48668, 48672, 48691, 48657, 57993, 51723, 48676, 48660, 48638},
			  ["Priest"] = {2050, 1243, 585, 2052, 589, 17, 591, 586, 139, 2053, 8092, 2006, 594, 588, 1244, 592, 528, 8122, 6074, 598, 2054, 8102, 527, 600, 970, 2944, 6346, 2061, 14914, 15237, 7128, 453, 6075, 9484, 2055, 8103, 2096, 2010, 984, 15262, 8129, 1245, 3747, 9472, 6076, 992, 19276, 6063, 15430, 8104, 8124, 15263, 602, 605, 6065, 596, 976, 1004, 552, 9473, 6077, 6064, 1706, 8105, 10880, 2767, 19277, 988, 15264, 15431, 2791, 6066, 9474, 6078, 6060, 2060, 1006, 8106, 996, 9485, 15265, 10898, 10888, 10957, 10892, 19278, 10915, 27799, 10909, 10927, 10963, 10945, 10881, 10933, 15266, 10937, 10899, 21562, 10916, 10951, 10960, 10928, 10893, 19279, 10964, 27800, 10946, 15267, 10900, 10934, 10917, 27683, 10890, 10929, 10958, 10965, 10947, 20770, 10894, 19280, 25314, 15261, 27801, 60931, 10952, 10938, 10901, 21564, 10961, 25316, 27681, 25315, 10955, 25233, 25363, 32379, 25210, 25372, 32546, 25217, 25221, 25367, 25384, 34433, 25235, 25467, 25213, 25331, 25308, 33076, 25435, 25433, 25431, 25375, 25364, 32375, 25389, 25218, 25392, 39374, 32999, 25222, 32996, 25368, 48040, 48119, 48134, 48299, 48070, 48062, 48126, 48112, 48122, 48075, 48077, 48045, 48065, 48067, 48157, 48124, 48072, 48169, 48168, 48170, 48120, 48063, 48135, 48171, 48300, 48071, 48127, 48113, 48123, 47951, 48078, 53023, 48161, 48066, 48162, 48074, 48068, 48158, 48125},
			  ["Death Knight"] = {53341, 53331, 53343, 54447, 53342, 54446, 53323, 53344, 62158, 48778, 48266, 45902, 52375, 50977, 49576, 49142, 45477, 45462, 53428, 49998, 50842, 46584, 48263, 47528, 48721, 45524, 49926, 47476, 51325, 43265, 49917, 49896, 49020, 3714, 49892, 48792, 51426, 49999, 49927, 45529, 56222, 57330, 49918, 49913, 49939, 48743, 49936, 49903, 51423, 56815, 55265, 48707, 49893, 51427, 49928, 49914, 51326, 45463, 49919, 48265, 49940, 61999, 49937, 49904, 51424, 55270, 49929, 51428, 49915, 51327, 49923, 47568, 57623, 49920, 49894, 49941, 49909, 51425, 51429, 55271, 49916, 42650, 49930, 51328, 49938, 49895, 49924, 49921},
			  ["Shaman"] = {30669, 30670, 30671, 331, 403, 8017, 8042, 8071, 2484, 332, 8044, 529, 324, 8018, 5730, 8050, 8024, 3599, 8075, 2008, 1535, 547, 370, 8045, 548, 8154, 526, 325, 8019, 57994, 8052, 8027, 913, 6390, 8143, 8056, 8033, 2645, 5394, 8004, 915, 6363, 52127, 2870, 8498, 8166, 131, 20609, 8046, 8181, 939, 905, 10399, 8155, 8160, 6196, 8030, 943, 8190, 5675, 8184, 8053, 8227, 8038, 8008, 6391, 52129, 546, 556, 51730, 8177, 6375, 10595, 20608, 6364, 36936, 8232, 421, 8499, 959, 6041, 945, 8012, 8512, 8058, 6495, 10406, 52131, 20610, 10412, 16339, 8010, 10585, 10495, 8170, 8249, 10478, 10456, 10391, 6392, 8161, 1064, 930, 51988, 10447, 6377, 8005, 8134, 6365, 8235, 52134, 11314, 10537, 10466, 10392, 10600, 10407, 10622, 16341, 10472, 10586, 10496, 20776, 2860, 10413, 10526, 16355, 10395, 10431, 10427, 52136, 51991, 10462, 15207, 10437, 10486, 11315, 10448, 10467, 10442, 10623, 10479, 10408, 52138, 10605, 16342, 10396, 15208, 10432, 10587, 10497, 10538, 16387, 10473, 16356, 10428, 20777, 10414, 51992, 29228, 10463, 25357, 10468, 10601, 10438, 25361, 16362, 25422, 25546, 25448, 24398, 25439, 25391, 25469, 25508, 25489, 3738, 25552, 25570, 25528, 2062, 25500, 25420, 25557, 25560, 25449, 25525, 25423, 2894, 25563, 25464, 25505, 25590, 25454, 25567, 25574, 25533, 33736, 2825, 25442, 51993, 25547, 25457, 25396, 32182, 25472, 25509, 58649, 58785, 58794, 58755, 58771, 58699, 58580, 58801, 49275, 49235, 49237, 58731, 58751, 55458, 49270, 49230, 61649, 58737, 49232, 58652, 58741, 49272, 51505, 49280, 58746, 58703, 58581, 57622, 58789, 58795, 58756, 58773, 57960, 58803, 49276, 49236, 58734, 58582, 58753, 49231, 49238, 49277, 55459, 49271, 51994, 61657, 58739, 49233, 58656, 58790, 58745, 58796, 58757, 49273, 51514, 60043, 49281, 58774, 58749, 58704, 58643, 58804},
			  ["Mage"] = {1459, 133, 168, 5504, 116, 587, 2136, 143, 5143, 205, 118, 5505, 7300, 122, 597, 604, 145, 130, 1449, 1460, 2137, 837, 5144, 2120, 1008, 3140, 475, 1953, 10, 5506, 12051, 543, 54648, 7301, 7322, 1463, 12824, 8437, 990, 2138, 6143, 2948, 5145, 2139, 8450, 8400, 2121, 120, 865, 8406, 1461, 6141, 759, 8494, 8444, 8455, 8438, 6127, 8412, 8457, 8401, 7302, 45438, 8416, 6129, 8422, 8461, 8407, 8492, 6117, 8445, 8427, 8451, 8402, 8495, 8439, 3552, 8413, 8408, 8417, 10138, 8458, 8423, 6131, 7320, 12825, 8446, 10169, 10156, 10159, 10144, 10148, 8462, 10185, 10179, 10191, 10201, 10197, 13031, 22782, 10205, 10211, 10053, 10173, 10149, 10215, 10160, 10139, 10223, 10180, 10219, 10186, 10145, 10177, 13032, 10192, 10206, 10170, 10202, 10199, 10150, 10230, 23028, 10157, 10212, 33041, 10216, 10181, 10161, 10054, 13033, 22783, 10207, 25345, 10187, 28612, 10140, 10174, 10225, 10151, 28609, 25304, 10220, 10193, 61305, 28272, 12826, 61025, 28271, 27078, 27080, 25306, 30482, 27130, 27075, 27071, 30451, 33042, 27086, 27134, 27087, 37420, 27073, 27070, 30455, 33944, 27088, 27085, 27101, 66, 27131, 33946, 38699, 27128, 27072, 27124, 27125, 27127, 27082, 27126, 38704, 33717, 27090, 33043, 27079, 38692, 32796, 38697, 33405, 43987, 27074, 30449, 42894, 43023, 43045, 53140, 42930, 42925, 42913, 43019, 42858, 42939, 42872, 42832, 53142, 42843, 42955, 42949, 42917, 42841, 44614, 43038, 42896, 42920, 43015, 43017, 42985, 43010, 42833, 42914, 42859, 42846, 42931, 42926, 43012, 42842, 43008, 43024, 43020, 43046, 42897, 43002, 42921, 42995, 42940, 42956, 61316, 61024, 42950, 42873, 47610, 43039, 55342, 58659, 53142},
			  ["Warlock"] = {59671, 687, 348, 686, 688, 172, 702, 1454, 695, 980, 5782, 6201, 696, 1120, 707, 697, 1108, 755, 705, 6222, 704, 689, 1455, 5697, 693, 1014, 5676, 706, 3698, 1094, 5740, 698, 1088, 712, 6202, 6205, 699, 126, 6223, 5138, 8288, 5500, 1714, 132, 1456, 17919, 710, 6366, 6217, 7658, 3699, 1106, 20752, 1086, 709, 1098, 5784, 1949, 2941, 691, 1490, 7646, 6213, 6229, 7648, 5699, 6219, 17920, 17951, 2362, 3700, 11687, 7641, 11711, 7651, 8289, 20755, 11733, 5484, 11665, 7659, 11707, 6789, 11683, 17921, 11739, 11671, 11725, 11693, 11659, 17952, 11729, 11721, 11699, 11688, 11677, 18647, 17727, 11712, 6353, 20756, 11719, 17925, 11734, 11667, 1122, 17922, 11708, 11675, 11694, 11660, 11740, 11672, 11700, 11684, 17928, 17953, 11717, 6215, 11689, 17924, 11730, 11713, 17926, 11726, 11678, 17923, 25311, 20757, 17728, 603, 11722, 11735, 54785, 11695, 11668, 25309, 50589, 18540, 11661, 50581, 28610, 27224, 23161, 27219, 28176, 25307, 29722, 27211, 27216, 27210, 27250, 28172, 29858, 27218, 27217, 27259, 27230, 27223, 27213, 27222, 29893, 27226, 27228, 30909, 27220, 28189, 27215, 27212, 27209, 27238, 30910, 27260, 32231, 30459, 27243, 30545, 47812, 50511, 47886, 61191, 47819, 47890, 47871, 47863, 47859, 60219, 47892, 47837, 47814, 47808, 47810, 47835, 47897, 47824, 47884, 47793, 47856, 47813, 47855, 47888, 47865, 47860, 47857, 47823, 47891, 47878, 47864, 57595, 47893, 47820, 47815, 47809, 60220, 47867, 47889, 48018, 48020, 47811, 47838, 57946, 58887, 47836, 61290, 47825},
			  ["Druid"] = {5185, 1126, 5176, 8921, 774, 467, 5177, 339, 5186, 5487, 99, 6795, 5232, 6807, 8924, 16689, 1058, 18960, 5229, 8936, 50769, 5211, 8946, 5187, 782, 5178, 1066, 8925, 1430, 779, 1062, 770, 16857, 2637, 6808, 16810, 8938, 768, 1082, 1735, 5188, 6756, 5215, 20484, 1079, 2912, 8926, 2090, 5221, 2908, 5179, 1822, 8939, 2782, 50768, 780, 1075, 5217, 2893, 1850, 5189, 6809, 8949, 5209, 3029, 8998, 5195, 8927, 16811, 2091, 9492, 6798, 778, 17390, 5234, 20739, 8940, 6800, 740, 783, 5180, 9490, 22568, 6778, 6785, 5225, 8972, 8928, 1823, 3627, 8950, 769, 8914, 22842, 9005, 8941, 50767, 9493, 6793, 5201, 5196, 8903, 18657, 16812, 8992, 8955, 6780, 9000, 9634, 20719, 22827, 16914, 29166, 8907, 8929, 6783, 20742, 8910, 8918, 9747, 9749, 17391, 9745, 6787, 9750, 8951, 22812, 9758, 1824, 9752, 9754, 9756, 8983, 9821, 9833, 9823, 9839, 9829, 8905, 9849, 9852, 22828, 16813, 9856, 50766, 9845, 21849, 9888, 17401, 9884, 9880, 9866, 20747, 9875, 9862, 9892, 9898, 9834, 9840, 9894, 9907, 17392, 9904, 9857, 9830, 9901, 9908, 9910, 9912, 22829, 9889, 9827, 9850, 9853, 18658, 33986, 33982, 9881, 9835, 17329, 9867, 9841, 9876, 31709, 31018, 21850, 25297, 17402, 9885, 9913, 20748, 9858, 25299, 50765, 9896, 25298, 9846, 9863, 53223, 27001, 26984, 26998, 26978, 22570, 24248, 26987, 26981, 33763, 27003, 26997, 26992, 33357, 26980, 26993, 27011, 33745, 27006, 27005, 27000, 26996, 27008, 26986, 26989, 33943, 33987, 33983, 27009, 27004, 26979, 26994, 26982, 50764, 26985, 33786, 26991, 27012, 26990, 26988, 27002, 26995, 26983, 53225, 48559, 48442, 49799, 40120, 62078, 50212, 48576, 48450, 48573, 48464, 48561, 48569, 48567, 48479, 48578, 48377, 49802, 53307, 48459, 48563, 48565, 48462, 48440, 52610, 48571, 48446, 53226, 48575, 48476, 48475, 48560, 49803, 48443, 48562, 53308, 48577, 53312, 48574, 48465, 48570, 48378, 48480, 48579, 48477, 50213, 48461, 48470, 48467, 48568, 48451, 48564, 48566, 48469, 48463, 50464, 48441, 50763, 49800, 48572, 48447, 53227, 61384}}


		for _,Spell in pairs(Spells[Unit:GetPlayerClass()]) do
		    Unit:LearnSpell(Spell)
		end
	end

function SetReTeleport(Unit)
		Check_Type(Unit, "player")
	    x,y,z,m = GetPosition(Unit)
		
	    ReTele[Unit:GetName()] = {m=m,x=x,y=y,z=z}
	end

function ReTeleport(Unit)
		Check_Type(Unit, "player")
		
		if ReTele[Unit:GetName()] then
			port = ReTele[Unit:GetName()]
        else
			luaprint("No ReTeleCoordinate found!")
			return
		end

		Unit:Teleport(port.m, port.x, port.y, port.z)
	end
	
function MaxSkill(Unit,_skill, _skilllist)
		Check_Type(Unit, "player")
		Check_Type(_skill, "number", "nil")
		Check_Type(_skilllist, "table", "nil")

		_skill = _skill or 450
		_skilllist = _skilllist or {43,44,45,46,54,55,95,129,136,160,162,164,
				  			   	   165,171,172,173,176,182,185,186,197,202,
								   226,228,229,333,356,393,433,473,633,755}
		for _,skill in pairs(_skilllist) do
		    Unit:AdvanceSkill(skill, _skill)
		end
	end
	
function IntervalCast(NPC, SpellID, Target, Time, Repeat)
		Check_Type(NPC, "creature")
		Check_Type(SpellID, "number")
		Check_Type(Target, "number", "string")
		Check_Type(Time, "number")
		Check_Type(Repeat, "number")
		
		if type(Target) == "string" then
			if string.lower(Target) == "maintank" then
				Target = 8
			else
				Target = 0
			end
		end

		local functionname = string.format("LSL_IntervalCast_%s_%s_%s_%s_%s", SpellID, Target, Time, Repeat, os.time())
		
		_G[functionname] = function (Unit)
				local Player = Unit:GetMainTank()
				if Target <= 7 then
					Player = Unit:GetRandomPlayer(Target)
				end
				if Player then
					Unit:FullCastSpellOnTarget(SpellID, Player)
				end
			end
		
		NPC:RegisterEvent(functionname, Time, Repeat)
	end

function AddGossipMenu(Unit, Player, ...)
		Check_Type(Player, "player")

		Unit:GossipCreateMenu(2, Player, 0)

		if table.getn(arg) > 28 then
			b = 28
		else
		    b = table.getn(arg)
		end

		for a = 1,b,2 do
		    if (arg[a+1] < 0) then
				Unit:GossipMenuAddItem(30, arg[a], math.abs(arg[a+1]), 1)
			else
			    Unit:GossipMenuAddItem(30, arg[a], arg[a+1], 0)
			end
		end

        Unit:GossipSendMenu(Player)
	end

------------------------------------------------------

--easy Script (new @ 107)-----------------------------

function Userdata:GossipAddItem(name, ...)
		if self.lsltype ~= "EScript" then
			LSLprint("The command GossipAddItem can only run at EasyGossip")
			return
		end
		
		local Entry
		if self.type == "npc" or self.type == "go" then
			Entry = self:GetEntry()
		else
			Entry = self:GetEntryId()
		end
		
		if not Entry then return end
		
	    if not EGossip[Entry] then EGossip[Entry] = {} end
		local id = table.find(EGossip[Entry], name, "name")
	    local code = 0
	    local icon = 1
		if not id then
		    table.insert(EGossip[Entry], {name = name, action = {}})
		    id = table.getn(EGossip[Entry])
		end
		
		for _,att in pairs(...) do
			att = string.lower(att)
			-- Level min max
			for minlevel, maxlevel in string.gfind(att, "level (%w+) (%w+)") do
            	if self.Player:GetPlayerLevel() < minlevel then return end
            	if maxplayer and self.Player:GetPlayerLevel() > maxlevel then return end
        	end
        	-- hasitem
        	for item1, item2, item3, item4, item5 in string.gfind(att, "hasitem (%w+) (%w+) (%w+) (%w+) (%w+)") do
    			local result = false
				if item1 and self.Player:HasItem(tonumber(item1)) then result = true end
        		if item2 and self.Player:HasItem(tonumber(item2)) then result = true end
        		if item3 and self.Player:HasItem(tonumber(item3)) then result = true end
        		if item4 and self.Player:HasItem(tonumber(item4)) then result = true end
        		if item5 and self.Player:HasItem(tonumber(item5)) then result = true end
        		if result == false then return end
        	end
        	-- hasnotitem
        	for item1, item2, item3, item4, item5 in string.gfind(att, "hasnotitem (%w+) (%w+) (%w+) (%w+) (%w+)") do
     			local result = false
				if item1 and not self.Player:HasItem(tonumber(item1)) then result = true end
        		if item2 and not self.Player:HasItem(tonumber(item2)) then result = true end
        		if item3 and not self.Player:HasItem(tonumber(item3)) then result = true end
        		if item4 and not self.Player:HasItem(tonumber(item4)) then result = true end
        		if item5 and not self.Player:HasItem(tonumber(item5)) then result = true end
        		if result == false then return end
        	end
        	-- Allianz
        	if string.sub(att, 1,3) == "all" and self.Player:GetTeam() ~= 0 then
        		return 
			end
			-- Horde
        	if string.sub(att, 1,5) == "horde" and self.Player:GetTeam() ~= 1 then
        		return 
			end
			-- code
        	for i in string.gfind(att, "input (%w+)") do
        		code = 1 
        		if input then EGossip[Entry][id].input = i end
			end	
			-- icon
        	for i in string.gfind(att, "icon (%w+)") do
        		icon = i
			end
			-- id
        	for i in string.gfind(att, "id (%w+)") do
        		EGossip[Entry][id].idcorrection = i
			end
			-- Class
        	for class in string.gfind(att, "class (%w+)") do
				if class ~= Player:GetPlayerClass() then return end
			end
			

			
        	-- additem
        	for item, count in string.gfind(att, "additem (%w+) (%w+)") do
        		count = count or 1
				table.insert(EGossip[Entry][id].action, {name = "additem", item = tonumber(item), count = tonumber(count)})
			end	
			-- removeitem
        	for item, count in string.gfind(att, "removeitem (%w+) (%w+)") do
        		count = count or 1
        		table.insert(EGossip[Entry][id].action, {name = "removeitem", item = tonumber(item), count = tonumber(count)})
			end	
			-- morph
        	for display in string.gfind(att, "morph (%w+)") do
        		table.insert(EGossip[Entry][id].action, {name = "morph", display = tonumber(display)})
			end
			-- demorph
        	if string.sub(att, 1,7) == "demorph" then
        		table.insert(EGossip[Entry][id].action, {name = "demorph"})
			end			
			-- teleport
        	for map,x,y,z in string.gfind(att, "teleport (%w+) (%w+) (%w+) (%w+)") do
        		table.insert(EGossip[Entry][id].action, {name = "teleport", x = tonumber(x), y = tonumber(y), z = tonumber(z), mapid = tonumber(map)})
			end 
			-- buff
        	for spell in string.gfind(att, "buff (%w+)") do
          		table.insert(EGossip[Entry][id].action, {name = "buff", spell = tonumber(spell)})
			end
			-- levelup
        	for level in string.gfind(att, "levelup (%w+)") do
          		table.insert(EGossip[Entry][id].action, {name = "levelup", level = tonumber(level)})
			end
			-- money
        	for gold in string.gfind(att, "money (%w+)") do
          		table.insert(EGossip[Entry][id].action, {name = "money", gold = tonumber(gold)})
			end
			-- learn
        	for spell in string.gfind(att, "learn (%w+)") do
          		table.insert(EGossip[Entry][id].action, {name = "learn", spell = tonumber(spell)})
			end
			-- unlearn
        	for spell in string.gfind(att, "unlearn (%w+)") do
          		table.insert(EGossip[Entry][id].action, {name = "unlearn", spell = tonumber(spell)})
			end
		end		
      	
		if not self.GossipCreate then
			self:GossipCreateMenu(2, self.Player, 0)
			self.GossipCreate = true
		end
		
		self:GossipMenuAddItem(icon, name, id, code)
	end

		
	
function EScript:OnGossip(Unit,Event,Player,_,Id, Code)
		Check_Type(Unit, "userdata")
		Check_Type(Player, "player")
		
		
		local New_Unit = LSLType(Unit)
		New_Unit.lsltype = "EScript"
		New_Unit.type = self.type
		New_Unit.Player = LSLType(Player)
		
		if Event == 1 then
			self:EasyGossip(New_Unit, New_Unit.Player)
			Unit:GossipSendMenu(Player)
		elseif Event == 2 then
			local Entry
			if self.type == "npc" or self.type == "go" then
				Entry = self:GetEntry()
			else
				Entry = self:GetEntryId()
			end
			if not Entry then return end
			local list = EGossip[Entry][Id]
			if list.input and list.input ~= Code then return end
			if table.getn(list.action) > 0 then
				for _,action in pairs(list.action) do
					if action.name == "buff" then
						Player:FullCastSpellOnTarget(action.spell, Player)
					elseif action.name == "demorph" then
						Player:DeMorph()
					elseif action.name == "morph" then
						Player:SetModel(action.display)
					elseif action.name == "additem" then
						Player:AddItem(action.item, action.count)
					elseif action.name == "removeitem" then
						Player:RemoveItem(action.item, action.count)
					elseif action.name == "teleport" then
						Player:Teleport(action.mapid, action.x, action.y, action.z)
					elseif action.name == "levelup" then
					    Player:SetPlayerLevel(action.level)
     				elseif action.name == "money" then
     				    if not DealMoney(Player, action.gold) then
     				        break end
					elseif action.name == "learn" then
					    Player:LearnSpell(action.spell)
					elseif action.name == "unlearn" then
					    Player:UnlearnSpell(action.spell)
					end
				end
			end
			if self.additional then
				Id = EGossip[Entry][Id].idcorrection or EGossip[Entry][Id].name				
				self:EasyGossipAdd(New_Unit,New_Unit.Player,Id,Code)
				Unit:GossipSendMenu(Player)
			end
		else 
			LSLprint("unexpected EventID: "..tostring(Event)) 
		end
	
	end
			
------------------------------------------------------

--DBManager-------------------------------------------

function DB:SaveCreature(Unit)
		Check_Type(Unit, "creature")

		local Entry = Unit:GetEntry()
		if not Entry then return end
		
		local x,y,z,map,o = GetPosition(Unit, "xyzmo")
		
  		local faction = WorldDBQuery("SELECT `faction` FROM `creature_proto` WHERE `entry` = '"..Entry.."';", 1)
  		local display = WorldDBQuery("SELECT `male_displayid` FROM `creature_names` WHERE `entry` = '"..Entry.."';", 1)
		WorldDBQuery(string.format("INSERT INTO `creature_spawns` (`entry`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `displayid`, `faction`) VALUES ('%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s');", Entry, map, x, y, z, o, display, faction), 1)
		
		luaprint("NPC: "..Entry.."("..map..","..x..","..y..","..z..") saved to DB")
	end

function DB:SaveGameObject(Unit)
		Check_Type(Unit, "userdata")

		local Entry = Unit:GetEntry()
		if not Entry then return end

		local x,y,z,map,o = GetPosition(Unit, "xyzmo")


		WorldDBQuery(string.format("INSERT INTO `creature_spawns` (`Entry`, `map`, `position_x`, `position_y`, `position_z`, `Facing`, `Faction`, `Scale`) VALUES ('%s', '%s', '%s', '%s', '%s', '%s', '0', '1');", Entry, map, x, y, z, o), 1)

		luaprint("GameObject: "..Entry.."("..map..","..x..","..y..","..z..") saved to DB")
	end
	
function DB:SaveRecall(Unit, Name)
        Check_Type(Unit, "userdata")
        Check_Type(Name, "string")
        
        local x,y,z,map = GetPosition(Unit)
        
        WorldDBQuery(string.format("INSERT INTO `recall` (`name`, `MapId`, `positionX`, `positionY`, `positionZ`) VALUES ('%s', '%s', '%s', '%s', '%s');", Name, map, x, y, z), 1)

		luaprint("Recall: "..Name.." ("..map..","..x..","..y..","..z..") saved to DB")
	end
	
LSLprint("Load LSL Conf...")

Config = FileType()
-- do not try this at home!!!!!!!!!
Config:SetPath("configs/lsl.conf")
Config = Config:LoadConfig()

local Count = 0
for _ in pairs(Config) do
	Count = Count + 1
end

if Count ~= 10 then
   LSLprint("Something going wrong while loading the LSL config")
else
	LSLprint("Load LSL Conf...Finish!")
end

--if not Server_commands_blocked() then
--   LSLprint("Load Server Conf...")
--
--	Server:ReadServerConfig("world")
--	Server:ReadServerConfig("optional")
--	Server:ReadServerConfig("realms")
--	Server.config_read = true = true
--	
--   LSLprint("Load Server Conf...Finish!")
--end
LSLprint("Servercommands load, when you need it.")

--kompatibilitätsmodus für File commands--------------	
-- ein Versuch (nur die 4 wichtigstens commands)
-- falls noch welche kommen sollten, bitte bescheid sagen 

if Config["compatibilitymode"] then
	file = {}
	script = {}
	entry = {}
	setmetatable(file, {__index = function (_,a) error("The command \""..a.."\" dont exists, or maybe, its not handle with the compatiblity mode of the LSL2. Please contact the dev of the script.") end})
	setmetatable(script, {__index = function (_,a) error("The command \""..a.."\" dont exists, or maybe, its not handle with the compatiblity mode of the LSL2. Please contact the dev of the script.") end})
	setmetatable(entry, {__index = function (_,a) error("The command \""..a.."\" dont exists, or maybe, its not handle with the compatiblity mode of the LSL2. Please contact the dev of the script.") end})

	
	file.read = function (_file, _mode, _closeit)
			  LSLprint("Please take notice, that the command file.read only work over the compatiblity mode of the LSL2. Report this to the dev of the script, please!")
			  return FileType(_file):Read(_mode, _closeit)
		end
	file.write = function (_file, _input, _mode, _closeit)
			  LSLprint("Please take notice, that the command file.write only work over the compatiblity mode of the LSL2. Report this to the dev of the script, please!")
			  return FileType(_file):Write(_input, _mode, _closeit)
		end
	file.LUAload = function (_lfile)
			  LSLprint("Please take notice, that the command file.LUAload only work over the compatiblity mode of the LSL2. Report this to the dev of the script, please!")
			  ReloadLua(_lfile)
		end
	script.color = function (_message, _color)
			  LSLprint("Please take notice, that the command script.color only work over the compatiblity mode of the LSL2. Report this to the dev of the script, please!")
			  string.color(_message, _color)
		end
end
	
print("LSL 2... Finish!")
LSLprint("LSL Version: "..LSL_Build)
LSLprint("Code by Kenuvis and Memento")	