------------------------------------------------------------------------------------
--Bounty Hunter by Shaddoow! Version 2.0

--Needs:
--LSA v.0.06: http://pastebin.com/jYDX4yPr by Shaddoow

--Last Update: 25.11.2011
------------------------------------------------------------------------------------

local BOUNTYHUNTER_NPCID = 521003
local MINIMUM = 5000
local MAXIMUM = 999999999
local sqltabname = "bountyhunter_table"

------Tables:--
local KG_sys = {}
	  KG_sys.list = LSA.wo_sqltoluatable(sqltabname, "id", {{"name","string"},{"gold","float"}})
	  KG_sys.reg = {}	
---------------
local bhname = "Bountyhunter"

local menu1 = "Bounty list"
local menu2 = "Bounty enter"
local menu3 = "My Bounty"
local menu4 = "Close"
local menu5 = "Next"
local menu6 = "Name"
local menu7 = "Gold"
local menu8 = "Information"
local menu9 = "Confirm"
local menu10  = "Cancel"
local menu11 = "Name: NAME, Bounty: COUNT"
local menu12 = "Back"

local message1 = "Name: NAME, Bounty: COUNT, ONOFF."
local message2 = "Name is entered successfully."
local message3 = "Name already exists, but you can add to their gold!"
local message4 = "This name is not registered in our database!"
local message5 = "You can not put a bounty on yourself."
local message6 = "Gold successfully entered."
local message7 = "You may enter only numbers!"
local message8 = "You do not have enough gold."
local message9 = "You need to choose an amount of gold."
local message10 = "You must choose a player name."
local message11 = "Your bounty is COUNT gold."
local message12 = "Gold updated successfully!"
local message13 = "Your bounty was increased to COUNT gold."
local message14 = "Player successfully entered into the list!"
local message15 = "On you a bounty was suspended. Total: COUNT gold."
local message16 = "You have successfully completed a bounty mission, and collected the gold!"
local message17 = "You have been victimized by a bounty hunter!"
local message18 = "Currently no entries."
local message19 = "The minimum amount of gold that you can put is higher!"
local message20 = "The maximum amount of gold that you can put smaller!"

------------------------------------------------------------------------
-------------------------Gossip Menu------------------------------------
	  
function BountyhunterNPC_Gossip(unt, _, plr)
	unt:GossipCreateMenu(1, plr, 0)
	unt:GossipMenuAddItem(3,menu1,100,0)
	unt:GossipMenuAddItem(3,menu2,2,0)
		for k,v in pairs(KG_sys.list)do
			if(v[1]==plr:GetName())then
				unt:GossipMenuAddItem(3,menu3,7,0)
				break;
			end
		end
	unt:GossipMenuAddItem(7,"["..menu4.."]", 99, 0)
	unt:GossipSendMenu(plr)
end

function BountyhunterNPC_Select(unt, _, plr, _, id, code)


	local idxconf = {100, 11, KG_sys.list}
	if(id>=idxconf[1])then
		if(table.getn(idxconf[3])>=1)then
			local idxtab = LSA.indexinator(idxconf[1], table.getn(idxconf[3])+idxconf[1], idxconf[2], 1)
			local menu_ = idxconf[1]
			if(LSA.tabsearchK(idxtab, id))then
				--CREATE FUNCTION!!
				local onoff = {[true]="|cff00ff00Online|R", [false]="|cffff0000Offline|R"}
				plr:SendBroadcastMessage("|CFFFF0000["..bhname.."]: |R|cffffffff"..string.gsub(string.gsub(string.gsub(message1, "ONOFF", onoff[LSA.plrnameon(idxconf[3][idxtab[id]][1])]), "COUNT", idxconf[3][idxtab[id]][2]), "NAME", idxconf[3][idxtab[id]][1]).."|R")	
				unt:GossipSendMenu(plr)
				--CREATE FUNCTION END!!
			else
				for x=idxconf[1],table.getn(idxconf[3])+idxconf[1],idxconf[2] do
					if(x==id)and(id==menu_)then
						local index_ = menu_+1
						unt:GossipCreateMenu(1, plr, 0)
						local menu_ = menu_+idxconf[2]
							for y=index_,index_+idxconf[2]-1,1 do
								if(idxconf[3][idxtab[index_]]~=nil)then
									--CREATE MENUNAME!!
									unt:GossipMenuAddItem(3,string.gsub(string.gsub(menu11, "NAME", idxconf[3][idxtab[index_]][1]), "COUNT", idxconf[3][idxtab[index_]][2]),y,0)
									--CREATE MENUNAME END!!
								end
									if(index_+1>menu_)and(idxconf[3][idxtab[index_+1]]~=nil)then
										unt:GossipMenuAddItem(7,"["..menu5.."]",menu_,0)
										break
									end
								index_ = index_+1
							end
						if(menu_>idxconf[1]+idxconf[2])then unt:GossipMenuAddItem(7,"["..menu12.."]",id-idxconf[2],0) end
						unt:GossipMenuAddItem(7,"["..menu4.."]", 99, 0)				
						unt:GossipSendMenu(plr)		
					end
					menu_ = menu_+idxconf[2]
				end
			end
		else
			plr:SendBroadcastMessage("|CFFFF0000["..bhname.."]: |R|cffffffff"..message18.."|R")	
			unt:GossipSendMenu(plr)
		end
	end

	if(id==2)then
	KG_sys.reg[plr:GetName()] = {}
	KG_sys.reg[plr:GetName()].name = "none"
	KG_sys.reg[plr:GetName()].gold = 1
	unt:GossipCreateMenu(1, plr, 0)
	unt:GossipMenuAddItem(3,menu6,3,1)
	unt:GossipMenuAddItem(3,menu7,4,1)
	unt:GossipMenuAddItem(3,"["..menu8.."]",5,0)
	unt:GossipMenuAddItem(3,"["..menu9.."]",6,0)
	unt:GossipMenuAddItem(7,"["..menu10.."]", 99, 0)
	unt:GossipSendMenu(plr)
	end
	
	if(id==3)then
		unt:GossipSendMenu(plr)
			if(code~=plr:GetName())then
				if(CharDBQuery("SELECT `name` FROM `characters` WHERE `name` = '"..code.."';")~=nil)then
					local pleyr = 1
					for k,v in pairs(KG_sys.list)do
						if(v[1]==code)then
							pleyr = 2
							break;
						end
					end
						if(pleyr==1)then
							plr:SendBroadcastMessage("|CFFFF0000["..bhname.."]: |R|cffffffff"..message2.."|R")
						else
							plr:SendBroadcastMessage("|CFFFF0000["..bhname.."]: |R|cffffffff"..message3.."|R")
						end
					KG_sys.reg[plr:GetName()].name = code
				else
					plr:SendBroadcastMessage("|CFFFF0000["..bhname.."]: |R|cffffffff"..message4.."|R")
				end
			else
				plr:SendBroadcastMessage("|CFFFF0000["..bhname.."]: |R|cffffffff"..message5.."|R")
			end
	end
	
	if(id==4)then
		unt:GossipSendMenu(plr)
			if(tonumber(code)~=nil)then
				plr:SendBroadcastMessage("|CFFFF0000["..bhname.."]: |R|cffffffff"..message6.."|R")
				KG_sys.reg[plr:GetName()].gold = tonumber(code)
			else
				plr:SendBroadcastMessage("|CFFFF0000["..bhname.."]: |R|cffffffff"..message7.."|R")
			end
	end
	
	if(id==5)then
	unt:GossipSendMenu(plr)
	local pleyr = 1
	local tabi = {}
		for k,v in pairs(KG_sys.list)do
			if(v[1]==KG_sys.reg[plr:GetName()].name)then
				pleyr = 2
				table.insert(tabi, v[1])
				table.insert(tabi, v[2])
				break;
			end
		end
	if(pleyr==1)then	
		plr:SendBroadcastMessage("|CFFFF0000["..bhname.."]: |cffffffffName: "..KG_sys.reg[plr:GetName()].name..", Gold: "..(KG_sys.reg[plr:GetName()].gold)..".")
	else
		plr:SendBroadcastMessage("|CFFFF0000["..bhname.."]: |cffffffffName: "..tabi[1]..", Gold: "..(tabi[2]).." (+"..(KG_sys.reg[plr:GetName()].gold)..").")
	end
	end
	
	if(id==6)then
		if(KG_sys.reg[plr:GetName()].name~=nil)and(KG_sys.reg[plr:GetName()].name~="none")then
			if(KG_sys.reg[plr:GetName()].gold~=nil)and(KG_sys.reg[plr:GetName()].gold~=0)then
				if(KG_sys.reg[plr:GetName()].gold>=MINIMUM)then
					if(KG_sys.reg[plr:GetName()].gold<=MAXIMUM)then
						if(KG_sys.reg[plr:GetName()].gold<=plr:GetCoinage()/10000)then
							plr:GossipComplete()
							plr:DealGoldCost(KG_sys.reg[plr:GetName()].gold*10000)
							KG_sys.register_player(plr)
						else
							plr:SendBroadcastMessage("|CFFFF0000["..bhname.."]: |R|cffffffff"..message8.."|R")
							unt:GossipSendMenu(plr)
						end
					else
						plr:SendBroadcastMessage("|CFFFF0000["..bhname.."]: |R|cffffffff"..message20.."|R")
						unt:GossipSendMenu(plr)
					end
				else
					plr:SendBroadcastMessage("|CFFFF0000["..bhname.."]: |R|cffffffff"..message19.."|R")
					unt:GossipSendMenu(plr)
				end
			else
				plr:SendBroadcastMessage("|CFFFF0000["..bhname.."]: |R|cffffffff"..message9.."|R")
				unt:GossipSendMenu(plr)
			end
		else
			plr:SendBroadcastMessage("|CFFFF0000["..bhname.."]: |R|cffffffff"..message10.."|R")
			unt:GossipSendMenu(plr)
		end
	end
	
	if(id==7)then
		unt:GossipSendMenu(plr)
		for k,v in pairs(KG_sys.list)do
			if(v[1]==plr:GetName())then
				plr:SendBroadcastMessage("|CFFFF0000["..bhname.."]: |R|cffffffff"..string.gsub(message11, "COUNT", v[2]).."|R")
				break;
			end
		end
	end
	
	if(id==99)then
	plr:GossipComplete()
	end
end

RegisterUnitGossipEvent(BOUNTYHUNTER_NPCID,1,"BountyhunterNPC_Gossip")
RegisterUnitGossipEvent(BOUNTYHUNTER_NPCID,2,"BountyhunterNPC_Select")

------------------------------------------------------------------------
-------------------------Registersystem---------------------------------

function KG_sys.register_player(plr)
local plr2 = GetPlayer(KG_sys.reg[plr:GetName()].name)
local pleyr = 1
		for k,v in pairs(KG_sys.list)do
			if(v[1]==KG_sys.reg[plr:GetName()].name)then
				pleyr = 2
				v[2] = v[2] + KG_sys.reg[plr:GetName()].gold
				local gold = WorldDBQuery("SELECT gold FROM "..sqltabname.." WHERE name='"..v[1].."';"):GetColumn(0):GetFloat()
				WorldDBQuery("UPDATE "..sqltabname.." SET gold='"..v[2].."' WHERE name='"..v[1].."';")
				plr:SendBroadcastMessage("|CFFFF0000["..bhname.."]: |R|cffffffff"..message12.."|R")
				if(GetPlayer(KG_sys.reg[plr:GetName()].name))then
					plr2:SendBroadcastMessage("|CFFFF0000["..bhname.."]: |R|cffffffff"..string.gsub(message13, "COUNT", v[2]).."|R")
				end
				break;
			end
		end

	if(pleyr==1)then
	KG_sys.list[table.getn(KG_sys.list)+1] = {KG_sys.reg[plr:GetName()].name, KG_sys.reg[plr:GetName()].gold}
	local intid = WorldDBQuery("SELECT MAX(id) FROM "..sqltabname..";"):GetColumn(0):GetByte() + 1
	WorldDBQuery("INSERT INTO "..sqltabname.." VALUES ('"..intid.."','"..KG_sys.reg[plr:GetName()].name.."','"..KG_sys.reg[plr:GetName()].gold.."');")
	plr:SendBroadcastMessage("|CFFFF0000["..bhname.."]: |R|cffffffff"..message14.."|R")
	if(GetPlayer(KG_sys.reg[plr:GetName()].name))then
			plr2:SendBroadcastMessage("|CFFFF0000["..bhname.."]: |R|cffffffff"..string.gsub(message15, "COUNT", KG_sys.reg[plr:GetName()].gold).."|R")
	end
	end
	KG_sys.reg[plr:GetName()] = nil
end

------------------------------------------------------------------------
-------------------------Serverhook-------------------------------------

function BountyHunter_OnPlrKill(_, pKiller, pDie)
	for k,v in pairs(KG_sys.list)do
		if(v[1]==pDie:GetName())then
			pKiller:SendBroadcastMessage("|CFFFF0000["..bhname.."]: |R|cffffffff"..message16.."|R")
			pDie:SendBroadcastMessage("|CFFFF0000["..bhname.."]: |R|cffffffff"..message17.."|R")
			pKiller:DealGoldMerit(v[2]*10000)
			table.remove(KG_sys.list, k)
			WorldDBQuery("DELETE FROM "..sqltabname.." WHERE name='"..v[1].."';")
			break;
		end
	end
end
RegisterServerHook(2, "BountyHunter_OnPlrKill") 

if(WorldDBQuery("SELECT id FROM "..sqltabname..";")==nil)then
	WorldDBQuery("CREATE TABLE IF NOT EXISTS `"..sqltabname.."` (`id` int(6) unsigned NOT NULL DEFAULT '0',`name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,`gold` int(6) unsigned NOT NULL DEFAULT '0',PRIMARY KEY (`id`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='BountyhunterNPC Table' AUTO_INCREMENT=1 ;")
end








print("Bounty NPC successfully loaded!")