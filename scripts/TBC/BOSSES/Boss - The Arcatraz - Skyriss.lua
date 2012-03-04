--[[ 
*******************************************************
*          LASP - LUA AREA SCRIPTING PROJECT          *
*                      License                        *
*******************************************************
This software is provided as free and open source by the
staff of The Lua Area Scripting Project, in accordance with 
the AGPL license. This means we provide the software we have 
created freely and it has been thoroughly tested to work for 
the developers, but NO GUARANTEE is made it will work for you 
as well. Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

Originally made by the MOON++ Team, but the Boss lua scripts are kinda outdated/messy imo, so I have
edited them. They should probaly work now with the new core.

Yerney - 3 June 2008
--]]

function Skyriss_OnCombat(Unit, Event)
	Unit:RegisterEvent("Skyriss_Red",11000,0)
	Unit:RegisterEvent("Skyriss_Blue",15000,0)
	Unit:RegisterEvent("Skyriss_Rend",21000,0)
	Unit:RegisterEvent("Skyriss_Control",27000,0)
	Unit:RegisterEvent("Skyriss_Fear",31000,0)
end

function Skyriss_Red(pUnit, Event)
	pUnit:FullCastSpellOnTarget(14264, pUnit:GetClosestPlayer())
	pUnit:SendChatMessage(12, 0, "Kill...")
end

function Skyriss_Blue(pUnit, Event)
	pUnit:FullCastSpellOnTarget(14261, pUnit:GetClosestPlayer())
	pUnit:SendChatMessage(12, 0, "Kill...")
end

function Skyriss_Rend(pUnit, Event)
	pUnit:FullCastSpellOnTarget(36924, pUnit:GetClosestPlayer())
	pUnit:SendChatMessage(12, 0, "Die...")
end

function Skyriss_Control(pUnit, Event)
	pUnit:FullCastSpellOnTarget(11446, pUnit:GetClosestPlayer())
	pUnit:SendChatMessage(12, 0, "I will take your Mind...")
end

function Skyriss_Fear(pUnit, Event)
	pUnit:FullCastSpellOnTarget(30584, pUnit:GetClosestPlayer())
	pUnit:SendChatMessage(12, 0, "Let's fear you guys...")
end

function Skyriss_OnLeaveCombat(Unit, Event)
	Unit:RemoveEvents()
end

function Skyriss_OnDead(Unit, Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent(20912,1,"Skyriss_OnCombat")
RegisterUnitEvent(20912,2,"Skyriss_OnLeaveCombat")
RegisterUnitEvent(20912,4,"Skyriss_OnDead")