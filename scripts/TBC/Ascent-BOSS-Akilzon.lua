--[[ Boss - Akilzon.lua

This script was written and is protected
by the GPL v2. This script was released
by Paroxysm of the Blua Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- Paroxysm, August 27, 2008. ]]

 -- 1 table to handle it all muahahah!
local Akilzon = {
	UNIT_FIELD_FACTIONTEMPLATE  = 0x006 + 0x01D,
	CHAT_MSG_MONSTER_YELL = 14,
	LANG_UNIVERSAL = 0,
	CHAT_MSG_EMOTE = 10,
	cn_akilzon = 23574,
	soaring_eagle = 24858,
	gust_timer = 0,
	calllight_timer = 0,
	static_timer = 0,
	storm_timer = 0,
	cancast = false,
	soaring_table = {},
	akilzonpointer = nil,
}

function Akilzon_OnCombat(Unit)
	Unit:SendChatMessage(Akilzon.CHAT_MSG_MONSTER_YELL,Akilzon.LANG_UNIVERSAL, "I be da predator! You da prey!")
	Unit:PlaySoundToSet(12013)
	Unit:RegisterAIUpdateEvent(1000)
	Akilzon.cancast = true
	Akilzon.static_timer = 8 -- To start him off w/ a static disruption
	Akilzon.akilzonpointer = Unit
	Akilzon.storm_timer = 58
end
function Akilzon_CanCast(Unit)
	Akilzon.cancast = true
end
function Akilzon_OnKilledTarget(Unit,event,target)
	if target:IsPlayer() == true then
		if math.random(2) == 1 then
			Unit:SendChatMessage(Akilzon.CHAT_MSG_MONSTER_YELL,Akilzon.LANG_UNIVERSAL,"Stop ya crying'!")
			Unit:PlaySoundToSet(12018)
		else
			Unit:SendChatMessage(Akilzon.CHAT_MSG_MONSTER_YELL,Akilzon.LANG_UNIVERSAL,"Ya got nuthin'!")
			Unit:PlaySoundToSet(12017)
		end
	end
end
function Akilzon_OnWipe(Unit)
	Unit:RemoveAIUpdateEvent()
	Unit:RemoveEvents()
end
function Akilzon_OnDeath(Unit)
	Unit:SendChatMessage(Akilzon.CHAT_MSG_MONSTER_YELL,Akilzon.LANG_UNIVERSAL, "You can't... kill... me spirit!")
	Unit:PlaySoundToSet(12019)
	Unit:RemoveAIUpdateEvent()
	Unit:RemoveEvents()
end
function Akilzon_AIUpdate(Unit)
	print(tostring(Akilzon.gust_timer).." Gust_Timer")
	print(tostring(Akilzon.static_timer).." Static_Timer")
	Akilzon.gust_timer = Akilzon.gust_timer + 1
	Akilzon.static_timer = Akilzon.static_timer + 1
	Akilzon.storm_timer = Akilzon.storm_timer+ 1
	Akilzon.calllight_timer = Akilzon.calllight_timer +1
	local plr = Unit:GetRandomPlayer(0)
	local tank = Unit:GetMainTank()
	local rand1 = math.random(10,20)
	local rand2 = math.random(20,30)
	if Akilzon.calllight_timer >= 15 and type(tank) == "userdata"  and tank:IsAlive() == true and Akilzon.cancast == true then
		print ("CallLight!"..tostring(calllight_timer))
		Akilzon.cancast = false
		Akilzon.calllight_timer = 0
		Unit:FullCastSpellOnTarget(43661,tank)
		Unit:RegisterEvent("Akilzon_CanCast",1000,1)
	elseif Akilzon.calllight_timer >=15 and type(tank) == "userdata"  and tank:IsAlive() == true and Akilzon.cancast == false then
		Akilzon.calllight_timer = Akilzon.calllight_timer -1
	end
	if Akilzon.static_timer >= rand1 and type(plr) == "userdata" and plr:IsAlive() == true and Akilzon.cancast == true then
		print("StaticTimer"..tostring(static_timer))
		Akilzon.cancast = false
		Akilzon.static_timer = 0
		Unit:FullCastSpellOnTarget(44008,plr)
		Unit:RegisterEvent("Akilzon_CanCast",1000,1)
	elseif Akilzon.static_timer >= rand1 and type(plr) == "userdata" and plr:IsAlive() == true and Akilzon.cancast == false then
		Akilzon.static_timer = Akilzon.static_timer - 1
	end
	if Akilzon.gust_timer  >= rand2 and type(plr) == "userdata" and plr:IsAlive() == true and Akilzon.cancast == true then
		print("Gust!!"..tostring(gust_timer))
		Akilzon.gust_timer = 0
		Akilzon.cancast = false
		Unit:FullCastSpellOnTarget(43621,plr)
		Unit:RegisterEvent("Akilzon_CanCast",1000,1)
	elseif Akilzon.gust_timer >= rand2 and type(plr) == "userdata" and plr:IsAlive() == true and Akilzon.cancast == false then
		Akilzon.gust_timer = Akilzon.gust_timer - 1
	end
	if Akilzon.storm_timer >= 60 and type(plr) == "userdata" and plr:IsAlive() == true and Akilzon.cancast == true then
		Akilzon.storm_timer = 0
		Akilzon.cancast = false
		Unit:FullCastSpellOnTarget(43648,plr)
		Akilzon_ElectricalStorm(Unit,plr)
		Unit:RegisterEvent("Akilzon_CanCast",9000,1)
		Unit:RegisterEvent("Akilzon_SummonEagles",15000,1)
	elseif Akilzon.storm_timer >= 60 and type(plr) == "userdata" and plr:IsAlive() == true and Akilzon.cancast == false then
		Akilzon.storm_timer  = Akilzon.storm_timer - 1
	end
end
function Akilzon_SummonEagles(Unit)
	if table.getn(Akilzon.soaring_table) <= 20 then
		for i = 1,math.random(6,7) do
			Unit:SpawnCreature(Akilzon.soaring_eagle,Unit:GetX(),Unit:GetY(),Unit:GetZ()+20,Unit:GetO(),Unit:GetUInt32Value(Akilzon.UNIT_FIELD_FACTIONTEMPLATE),0)
		end
		Unit:SendChatMessage(Akilzon.CHAT_MSG_MONSTER_YELL,Akilzon.LANG_UNIVERSAL,"Feed me bruddahs!")
		Unit:PlaySoundToSet(12019)
	else
		Unit:RegisterEvent("Akilzon_SummonEagles",1000,1)
	end
end
function Akilzon_ElectricalStorm(Unit,plr)
	print("MonsterMove plr")
	plr:MonsterMove(plr:GetX(),plr:GetY(),plr:GetZ()+15.0,3000,768)
	Unit:RegisterEvent("Akilzon_ElectricalStorm02",6000,1)
	Unit:RegisterEvent("Akilzon_ElectricalStorm03",8000,1)
end
function Akilzon_ElectricalStorm02(Unit)
	local plr = Unit:GetNextTarget()
	plr:SetPosition(plr:GetX(),plr:GetY(),plr:GetZ()+15.0)
	plr:Root()
end
function Akilzon_ElectricalStorm03(Unit)
	local plr = Unit:GetNextTarget()
	plr:Unroot()
end
	
function Akilzon_SoaringEagleOnSpawn(Unit)
	table.insert(Akilzon.soaring_table,Unit)
	local angle = 45
	local wp = 1
	for i = 1,8 do
		Unit:CreateWaypoint(wp,Akilzon.akilzonpointer:GetSpawnX()+math.cos((angle/math.pi))*20,Akilzon.akilzonpointer:GetSpawnY()+math.sin((angle/math.pi))*20,Unit:GetZ(),Unit:GetO(),0,768,0)
		wp = wp+1
		angle = angle*2
	end
	Unit:MoveToWaypoint(1)
	Unit:SetAIState(11)
	Akilzon_SoaringEagleSwoop(Unit)
	Unit:SetCombatMeleeCapable(1)
end
function Akilzon_SoaringEagleSwoop(Unit)
	local plr = Unit:GetRandomPlayer(0)
	if type(plr) == "userdata" and plr:IsAlive() == true then
		Unit:FullCastSpellOnTarget(44732,plr)
		--Unit:MoveToWaypoint(math.random(8))
	end
	Unit:RegisterEvent("Akilzon_SoaringEagleSwoop",3000,1)
	Unit:RegisterEvent("Akilzon_SoaringEagleReturn",1000,1)
end
function Akilzon_SoaringEagleReturn(Unit)
	Unit:MoveToWaypoint(math.random(8))
end
function Akilzon_SoaringEagleOnReachWp(Unit,null,null,wp)
	if wp == 1 then
		Unit:MoveToWaypoint(2)
	elseif wp == 2 then
		Unit:MoveToWaypoint(3)
	elseif wp == 3 then
		Unit:MoveToWaypoint(4)
	elseif wp == 4 then
		Unit:MoveToWaypoint(5)
	elseif wp == 5 then
		Unit:MoveToWaypoint(6)
	elseif wp == 6 then
		Unit:MoveToWaypoint(7)
	elseif wp == 7 then
		Unit:MoveToWaypoint(8)
	elseif wp == 8 then
		Unit:MoveToWaypoint(1)
	end
end
function Akilzon_SoaringEagleOnWipe(Unit)
	Unit:DestroyCustomWaypointMap()
	Unit:RemoveEvents()
	for k,v in pairs(Akilzon.soaring_table) do
		if v == Unit then
			table.remove(Akilzon.soaring_table,k)
		end
	end
end
function Akilzon_SoaringEagleOnDeath(Unit)
	for k,v in pairs(Akilzon.soaring_table) do
		if v == Unit then
			table.remove(Akilzon.soaring_table,k)
		end
	end
	Unit:DestroyCustomWaypointMap()
	Unit:RemoveEvents()
end
RegisterUnitEvent(Akilzon.cn_akilzon,1,"Akilzon_OnCombat")
RegisterUnitEvent(Akilzon.cn_akilzon,4,"Akilzon_OnDeath")
RegisterUnitEvent(Akilzon.cn_akilzon,21,"Akilzon_AIUpdate")
RegisterUnitEvent(Akilzon.cn_akilzon,2,"Akilzon_OnWipe")
RegisterUnitEvent(Akilzon.cn_akilzon,3,"Akilzon_OnKilledTarget")

RegisterUnitEvent(Akilzon.soaring_eagle,1,"Akilzon_SoaringEagleOnSpawn")
RegisterUnitEvent(Akilzon.soaring_eagle,2,"Akilzon_SoaringEagleOnWipe")
RegisterUnitEvent(Akilzon.soaring_eagle,4,"Akilzon_SoaringEagleOnDeath")
RegisterUnitEvent(Akilzon.soaring_eagle,18,"Akilzon_SoaringEagleOnSpawn")
RegisterUnitEvent(Akilzon.soaring_eagle,19,"Akilzon_SoaringEagleOnReachWp")
	