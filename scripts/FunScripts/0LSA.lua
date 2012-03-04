------------------------------------------------------------------------------------
--LSA v0.12 Script by Shaddoow!
--You can't use this script, it will be released with v1.0!
--
--
--Last Update: 02.02.2012 (DD/MM/YYYY)
------------------------------------------------------------------------------------
local LANGUAGE = "de" -- de = german, en = english



LSA = {}
local LSAsys = {}
LSA.version = 0.12

	LSAsys.language = {}
	LSAsys.language["de"] = {guildmsg = "Gildennachricht"
					
							  }
							  
							  
	LSAsys.language["en"] = {guildmsg = "Guildmessage"
					
							  }

							  
----------------------------------Function SQL TABLE TO LUA TABLE!--------------------------------------------------------------
function LSA.wo_sqltoluatable(sqltab, primarykey, sqltabstructur)
local TableA = {}
if(WorldDBQuery("SELECT COUNT("..primarykey..") FROM "..sqltab..";")==nil)then return TableA; end
print("Load: "..sqltab.."...")
local mx = WorldDBQuery("SELECT MAX("..primarykey..") FROM "..sqltab..";"):GetColumn(0):GetFloat()
local mn = WorldDBQuery("SELECT MIN("..primarykey..") FROM "..sqltab..";"):GetColumn(0):GetFloat()
	for ID=mn,mx,1 do
		if(WorldDBQuery("SELECT "..primarykey.." FROM "..sqltab.." WHERE "..primarykey.." = '"..ID.."';")~=nil)then
			--local TableB = {}
				local prmkeyid = tonumber(WorldDBQuery("SELECT "..primarykey.." FROM "..sqltab.." WHERE "..primarykey.." = '"..ID.."';"):GetColumn(0):GetFloat())
				TableA[prmkeyid] = {}
			for k,v in pairs(sqltabstructur)do
				local select = WorldDBQuery("SELECT "..v[1].." FROM "..sqltab.." WHERE "..primarykey.." = '"..ID.."';")
				local insert = select
				if(string.lower(v[2])=="string")then
				insert = tostring(select:GetColumn(0):GetString())
				elseif(string.lower(v[2])=="float")then
				insert = tonumber(select:GetColumn(0):GetFloat())
				elseif(string.lower(v[2])=="byte")then
				insert = select:GetColumn(0):GetByte()
				end
			table.insert(TableA[prmkeyid],insert)
			end
		--table.insert(TableA,table.getn(TableA)+1,TableB)
		end
	end
print("Loaded "..sqltab.." successfully!")
	return TableA;
end

function LSA.ch_sqltoluatable(sqltab, primarykey, sqltabstructur)
local TableA = {}
if(CharDBQuery("SELECT COUNT("..primarykey..") FROM "..sqltab..";")==nil)then return TableA; end
local mx = CharDBQuery("SELECT MAX("..primarykey..") FROM "..sqltab..";"):GetColumn(0):GetFloat()
local mn = CharDBQuery("SELECT MIN("..primarykey..") FROM "..sqltab..";"):GetColumn(0):GetFloat()
print("Load: "..sqltab.."...")
	for ID=mn,mx,1 do
		if(CharDBQuery("SELECT "..primarykey.." FROM "..sqltab.." WHERE "..primarykey.." = '"..ID.."';")~=nil)then
			local TableB = {}
			for k,v in pairs(sqltabstructur)do
				local select = CharDBQuery("SELECT "..v[1].." FROM "..sqltab.." WHERE "..primarykey.." = '"..ID.."';")
				local insert = select
				if(string.lower(v[2])=="string")then
				insert = select:GetColumn(0):GetString()
				elseif(string.lower(v[2])=="float")then
				insert = select:GetColumn(0):GetFloat()
				elseif(string.lower(v[2])=="byte")then
				insert = select:GetColumn(0):GetByte()
				end
			table.insert(TableB,table.getn(TableB)+1,insert)
			end
		table.insert(TableA,table.getn(TableA)+1,TableB)
		end
	end
print("Loaded "..sqltab.." successfully!")
	return TableA;
end


----------------------------------Function RELOAD SQL PRIMARYKEY!--------------------------------------------------------------
function LSA.resortsqlprimary(sqltab, primarykey, dbtype)
local maxn = 0
local maxm = 0
local tab = {}
	if(string.lower(dbtype)=="world")then
		maxn = WorldDBQuery("SELECT MAX("..primarykey..") FROM "..sqltab..";"):GetColumn(0):GetFloat()
	elseif(string.lower(dbtype)=="char")then
		maxn = CharDBQuery("SELECT MAX("..primarykey..") FROM "..sqltab..";"):GetColumn(0):GetFloat()
	else
		error("dbtype is'nt world or char.")
		return;
	end	
	if(string.lower(dbtype)=="world")then
		maxm = WorldDBQuery("SELECT COUNT("..primarykey..") FROM "..sqltab..";"):GetColumn(0):GetFloat()
	elseif(string.lower(dbtype)=="char")then
		maxm = CharDBQuery("SELECT COUNT("..primarykey..") FROM "..sqltab..";"):GetColumn(0):GetFloat()
	else
		error("dbtype is'nt world or char.")
		return;
	end		
	for id=1,maxn,1 do
		if(string.lower(dbtype)=="world")then
			if(WorldDBQuery("SELECT "..primarykey.." FROM "..sqltab.." WHERE "..primarykey.."='"..id.."';")~=nil)then
				table.insert(tab,table.getn(tab)+1,id)
			end			
		elseif(string.lower(dbtype)=="char")then
			if(CharDBQuery("SELECT "..primarykey.." FROM "..sqltab.." WHERE "..primarykey.."='"..id.."';")~=nil)then
				table.insert(tab,table.getn(tab)+1,id)	
			end
		end

	end	
	for id=1,maxm,1 do
		if(string.lower(dbtype)=="world")then
		WorldDBQuery("UPDATE "..sqltab.." SET "..primarykey.."='"..id.."' WHERE "..primarykey.."='"..tab[id].."';")
	elseif(string.lower(dbtype)=="char")then
		CharDBQuery("UPDATE "..sqltab.." SET "..primarykey.."='"..id.."' WHERE "..primarykey.."='"..tab[id].."';")
	end	
	end
end





----------------------------------Lot of Useful Functions--------------------------------------------------------------
function LSA.tabtonr(tab)
	local tab2 = {}
	local nr = 1
			for k,v in pairs(tab)do
				tab2[nr] = v
				nr = nr+1
			end
return tab2;
end	

function LSA.tabget(tab)
if(tab==nil)then
		return nil;
	else
	local X = 0
		for k,v in pairs(tab)do
			X = X+1
		end
		return X;
	end
end

function LSA.mathrnd(x1,x2)
                if(x1<x2)then
                        local x3 = x1
                        x1 = x2
                        x2 = x3
                end     
        local x1_1 = math.floor(x1); local x2_1 = math.ceil(x2)
        local x1_2 = x1 - x1_1
        local x = x1_1 - x2_1; local x = math.random(x)
        local X = x1_1-x+x1_2
        return X;
end

function LSA.tabsearch(tab, var)
	for k,v in pairs(tab)do
		if(v==var)then
			return true;
		end
	end
	return false;
end

function LSA.tabsearchK(tab, nr)
	for k,v in pairs(tab)do
		if(k==nr)then
			return true;
		end
	end
	return false;
end

function LSA.tabtabsearch(tab, var)
	for k, v in pairs(tab)do
		for a,b in pairs(tab[k])do
			if(b==var)then
				return true;
			end
		end
		return false;
	end
end

function LSA.returntabnr(tab, x)
	for k, v in pairs(tab)do
		if(k==x)then
			return k;
		end
	end
	return nil;
end

function LSA.luatofile(tab, name)
assert(type(tab)=="table", "Lua table isn't a table!")
assert(type(name)=="string", "File name isn't a string!")
	local file = io.open(name, "w")
		for k,v in pairs(tab)do
			assert(type(v)=="table", "Lua table["..k.."] isn't a table!")
				for a,b in pairs(v)do
					file:write(tostring(b).."|")
				end
			file:write("\n")
		end
	file:close()
end

function LSA.filetolua(name)
assert(type(name)=="string", "File name isn't a string!")	
	local tab2 = {}
	local ab = 1
		for k in io.lines(name) do
			if(k~="")and(k~=nil)and(string.len(k)>0)then
				tab2[ab] = {}
				local strng = ""
					for x=1,string.len(k),1 do
						if(string.sub(k,x,x)~="|")then
							strng = strng..""..string.sub(k,x,x)
						else
							if(tonumber(strng)~=nil)then strng = tonumber(strng); end
							table.insert(tab2[ab], strng)
							strng = ""
						end
					end
				ab = ab+1
			end
		end
	return tab2;
end
	
function LSA.indexinator(index, maxn, menu, fnr)
local maxnadd = 0
local menu_ = index
	for x=index,maxn,1 do
		if(x==menu_)then menu_ = menu_+menu; maxnadd = maxnadd+1; end
	end
local menu_ = index
local tab = {}
	for x=index,maxn+maxnadd,1 do
		if(x==menu_)then
			menu_ = menu_+menu
		else
			table.insert(tab, x, fnr)
			fnr = fnr+1
		end
	end
	return tab;
end

function LSA.plrnameon(name)
	for k,v in pairs(GetPlayersInWorld())do
		if(v:GetName()==name)then
			return true;
		end
	end
	return false;
end

function LSA.copytable(tab)
local tabi = {}
	for k,v in pairs(tab)do
		tabi[k] = v	
	end
	return tabi;
end

function LSA.getuntscale(unt)
local scale = WorldDBQuery("SELECT scale FROM creature_proto WHERE entry ='"..unt:GetEntry().."';"):GetColumn(0):GetFloat()
	return scale;
end

function LSA.getmaxhp(unt)
local hp = WorldDBQuery("SELECT maxhealth FROM creature_proto WHERE entry ='"..unt:GetEntry().."';"):GetColumn(0):GetFloat()
	return hp;
end

local tabelle = {
				[1] = {X, Y, Z, O, TYPE, DELAY, "FUNCTION", "DELAY FUNCTION"},
				[2] = {},
				[3] = {}
				}
				
--MOVESYSTEM:----------------------------------------------------------
	LSAsys.flg={[0] = 0.39, [1] = 0.172}
	LSAsys.mvsys = {}

function LSA.newwaypointmap(unt, tab, re_move)
	LSAsys.controlwayptab(unt, tab)
	LSAsys.mvsys[tostring(unt)] = {["t1"]=LSA.copytable(tab),["t2"]=LSA.copytable(tab),rm=re_move,clk = os.clock(),move="move",wp=1}
	local x = tab[1][1]; local y = tab[1][2]; local z = tab[1][3];
		if(tab[1][7]~=nil)then _G[tab[1][7]](unt, 1) end
		if(tab[1][8]~=nil)then _G[tab[1][8]](unt, 1) end
	local timer = (unt:CalcToDistance(x,y,z)*LSAsys.flg[tab[1][5]])*1000
		if(tab[1][6]~=nil)then timer = timer+tab[1][6] end
		if(timer>100)then
			unt:MoveTo(x,y,z)
			unt:CreateLuaEvent(function() LSAsys.waypointchange(unt,1,LSAsys.mvsys[tostring(unt)].clk); end,timer,1)
		else
			LSAsys.waypointchange(unt,1,LSAsys.mvsys[tostring(unt)].clk)
		end
end

function LSAsys.waypointchange(unt, wp, clock_tm)
local Unit = tostring(unt)
	if(LSAsys.mvsys[Unit]~=nil)then
		if(unt:IsAlive())and(unt:IsInWorld())and(LSAsys.mvsys[Unit].clk==clock_tm)and(LSAsys.mvsys[Unit].move~="paused")then
		if(unt:IsCreatureMoving()~=true)then unt:SetOrientation(LSAsys.mvsys[Unit]["t1"][wp][4]) end
		local x=LSAsys.mvsys[Unit]["t1"][wp][1];local y=LSAsys.mvsys[Unit]["t1"][wp][2];local z=LSAsys.mvsys[Unit]["t1"][wp][3]
			local timer = (unt:CalcToDistance(x,y,z)*LSAsys.flg[LSAsys.mvsys[Unit]["t1"][wp][5]])*1000
			local t = 0
				if(LSAsys.mvsys[Unit]["t1"][wp][6]~=nil)then timer = timer+LSAsys.mvsys[Unit]["t1"][wp][6]; t=LSAsys.mvsys[Unit]["t1"][wp][6]  end
				if(timer>100)then
					unt:MoveTo(x,y,z)
					unt:CreateLuaEvent(function() LSAsys.waypointchange(unt,wp,clock_tm); end,timer,1)
				else
					if(LSAsys.mvsys[Unit]["t1"][wp][7]~=nil)then _G[LSAsys.mvsys[Unit]["t1"][wp][7]](unt, wp) end
					if(table.getn(LSAsys.mvsys[Unit]["t1"])>=wp+1)then
						LSAsys.mvsys[Unit]["t2"][wp] = nil
						LSAsys.mvsys[Unit].wp = wp+1
						x=LSAsys.mvsys[Unit]["t1"][wp+1][1];y=LSAsys.mvsys[Unit]["t1"][wp+1][2];z=LSAsys.mvsys[Unit]["t1"][wp+1][3]
							timer = (unt:CalcToDistance(x,y,z)*LSAsys.flg[LSAsys.mvsys[Unit]["t1"][wp+1][5]])*1000
							if(LSAsys.mvsys[Unit]["t1"][wp+1][6]~=nil)then timer = timer+LSAsys.mvsys[Unit]["t1"][wp+1][6] end
						if(timer>100)then
							unt:MoveTo(x,y,z)
							unt:CreateLuaEvent(function() LSAsys.waypointchange(unt,wp+1,clock_tm); end,timer,1)
						else
							LSAsys.waypointchange(unt,wp+1,clock_tm)
						end
					else
						if(LSAsys.mvsys[Unit].rm~=nil)then
							if(LSAsys.mvsys[Unit].rm==1)then
								x=LSAsys.mvsys[Unit]["t1"][1][1];y=LSAsys.mvsys[Unit]["t1"][1][2];z=LSAsys.mvsys[Unit]["t1"][1][3]
								timer = (unt:CalcToDistance(x,y,z)*LSAsys.flg[LSAsys.mvsys[Unit]["t1"][1][5]])*1000
								if(LSAsys.mvsys[Unit]["t1"][1][6]~=nil)then timer = timer+LSAsys.mvsys[Unit]["t1"][1][6] end
								if(timer>100)then
									unt:MoveTo(x,y,z)
									unt:CreateLuaEvent(function() LSAsys.waypointchange(unt,1,clock_tm); end,timer,1)
								else
									LSAsys.waypointchange(unt,1,clock_tm)
								end
							elseif(LSAsys.mvsys[Unit].rm==2)then
								local a = table.getn(LSAsys.mvsys[Unit]["t1"])
								local tabi = {}
									for x=1,table.getn(LSAsys.mvsys[Unit]["t1"]),1 do
										tabi[x] = LSAsys.mvsys[Unit]["t1"][a]
										a = a-1
									end
								LSA.newwaypointmap(unt, tabi, LSAsys.mvsys[Unit].rm)
							end
						end
					end
				end
		end
	end
end

function LSA.returnallwaypoints(unt)
	assert(LSAsys.mvsys[tostring(unt)]~=nil, "Unit with SpawnId: "..unt:GetSpawnId().." has no waypointmaps.")
	return LSAsys.mvsys[tostring(unt)]["t1"];
end

function LSA.returnwaypoints(unt)
	assert(LSAsys.mvsys[tostring(unt)]~=nil, "Unit with SpawnId: "..unt:GetSpawnId().." has no waypointmaps.")
	return LSAsys.mvsys[tostring(unt)]["t2"];
end

function LSA.removewaypointmap(unt)
	assert(LSAsys.mvsys[tostring(unt)]~=nil, "Unit with SpawnId: "..unt:GetSpawnId().." has no waypointmaps.")
	LSAsys.mvsys[tostring(unt)] = nil
end

function  LSA.pausemoveing(unt)
	assert(LSAsys.mvsys[tostring(unt)]~=nil, "Unit with SpawnId: "..unt:GetSpawnId().." has no waypointmaps.")
	assert(LSAsys.mvsys[tostring(unt)].move~="paused", "Unit with SpawnId: "..unt:GetSpawnId().." is already paused.")
	LSAsys.mvsys[tostring(unt)].move = "paused"
	unt:MoveTo(unt:GetX(),unt:GetY(),unt:GetZ(),unt:GetO())
end

function  LSA.startmoveing(unt)
local Unit = tostring(unt)
	assert(LSAsys.mvsys[Unit]~=nil, "Unit with SpawnId: "..unt:GetSpawnId().." has no waypointmaps.")
	assert(LSAsys.mvsys[Unit].move~="move", "Unit with SpawnId: "..unt:GetSpawnId().." is already on moveing.")
	LSAsys.mvsys[Unit].move = "start"
	local wp = LSAsys.mvsys[Unit].wp
	local x=LSAsys.mvsys[Unit]["t1"][wp][1];local y=LSAsys.mvsys[Unit]["t1"][wp][2];local z=LSAsys.mvsys[Unit]["t1"][wp][3]
	local timer = (unt:CalcToDistance(x,y,z)*LSAsys.flg[LSAsys.mvsys[Unit]["t1"][wp][5]])*1000
		if(LSAsys.mvsys[Unit]["t1"][wp][6]~=nil)then timer = timer+LSAsys.mvsys[Unit]["t1"][wp][6] end
			if(timer>100)then
				unt:MoveTo(x,y,z)
				unt:CreateLuaEvent(function() LSAsys.waypointchange(unt,wp,LSAsys.mvsys[Unit].clk); end,timer,1)
			else
				LSAsys.waypointchange(unt,wp,LSAsys.mvsys[Unit].clk)
			end
end

function LSA.MoveToWP(unt, wp)

end

function LSAsys.controlwayptab(unt, tab)
	for k,v in pairs(tab)do
		assert(type(tab[1][1])=="number", "X-Coordinates for SpawnId: "..unt:GetSpawnId().." at waypoint "..k.." isn't a number.")
		assert(type(tab[1][2])=="number", "Y-Coordinates for SpawnId: "..unt:GetSpawnId().." at waypoint "..k.." isn't a number.")
		assert(type(tab[1][3])=="number", "Z-Coordinates for SpawnId: "..unt:GetSpawnId().." at waypoint "..k.." isn't a number.")
		assert(type(tab[1][4])=="number", "Orientation for SpawnId: "..unt:GetSpawnId().." at waypoint "..k.." isn't a number.")
		assert(type(tab[1][5])=="number", "Type for SpawnId: "..unt:GetSpawnId().." at waypoint "..k.." isn't a number.")
		assert((tab[1][5]==0)or(tab[1][5]==1), "Type for SpawnId: "..unt:GetSpawnId().." at waypoint "..k.." must be 0 (walk) or 1 (run).")
		assert((type(tab[1][6])=="number")or(tab[1][6]==nil), "Delay for SpawnId: "..unt:GetSpawnId().." at waypoint "..k.." isn't a number.")
		assert((type(tab[1][7])=="string")or(tab[1][7]==nil), "Function for SpawnId: "..unt:GetSpawnId().." at waypoint "..k.." isn't a string.")
		assert((type(tab[1][8])=="string")or(tab[1][8]==nil), "Delayed Function for SpawnId: "..unt:GetSpawnId().." at waypoint "..k.." isn't a string.")
	end
end
-----------------------------------------------------------------------


function LSA.SendGuildMessage(plr, message)
local GuildPlr = {}
	for k,v in pairs(GetPlayersInWorld())do
		if(v:IsInGuild())then
			if(v:GetGuildId()==plr:GetGuildId())then
				table.insert(GuildPlr, v)
			end
		end
	end
	for k,v in pairs(GuildPlr)do
		v:SendBroadcastMessage("|cff00ff00"..LSAsys.language[LANGUAGE].guildmsg..": "..message.."|R")
	end
end

function LSA.createfolder(name)
local a,b = io.open(name)
	if(b==name..": No such file or directory")then
		os.execute("mkdir "..name)
	end
end
	
	
	
	LSAsys.vars = {}	
	local tab2 = {}
	if(io.open("variablesavesystem.txt")~=nil)then
	local ab = 1
		for k in io.lines("variablesavesystem.txt") do
			if(k~="")and(k~=nil)and(string.len(k)>0)then
				tab2[ab] = {}
				local strng = ""
					for x=1,string.len(k),1 do
						if(string.sub(k,x,x)~="#")then
							strng = strng..""..string.sub(k,x,x)
						else
							if(tonumber(strng)~=nil)then strng = tonumber(strng); end
							table.insert(tab2[ab], strng)
							strng = ""
						end
					end
				ab = ab+1
			end
		end	
	end
	for k,v in pairs(tab2)do
		LSAsys.vars[v[1]] = v[2]
	end
	
	
function LSA.savevariable(variable, name)
assert((type(variable)=="number")or(type(variable)=="string"), "Variable must be a string or number")
assert(type(name)=="string", "Name must be a string")
	LSAsys.vars[name] = variable
	local file = io.open("variablesavesystem.txt", "w")
		for k,v in pairs(LSAsys.vars)do
			file:write(k.."#"..v.."\n")
		end
	file:close()
end

function LSA.loadvariable(name)
	return LSAsys.vars[name];
end


function LSA.deletevariable(name)
	table.remove(LSAsys.vars, name)
	local file = io.open("variablesavesystem.txt", "w")
		for k,v in pairs(LSAsys.vars)do
			file:write(k.."#"..v.."\n")
		end
	file:close()
end


print("Lua Shadow Arc loaded sucessfully!")