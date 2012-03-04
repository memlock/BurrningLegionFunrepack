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

function Soccothrates_OnCombat(Unit, Event)
	Unit:RegisterEvent("Soccothrates_Immolation", 8000, 0)
	Unit:RegisterEvent("Soccothrates_Shock", 11000, 0)
	Unit:RegisterEvent("Soccothrates_Charge", 21000, 0)
end

function Soccothrates_Immolation(pUnit, Event)
	pUnit:FullCastSpellOnTarget(36051, pUnit:GetClosestPlayer())
	pUnit:SendChatMessage(12, 0, "You will suffer...")
end

function Soccothrates_Shock(pUnit, Event)
	pUnit:FullCastSpellOnTarget(22423, pUnit:GetClosestPlayer())
	pUnit:SendChatMessage(12, 0, "Let's the lightning crush you...")
end

function Soccothrates_Charge(pUnit, Event)
	pUnit:FullCastSpellOnTarget(36058, pUnit:GetClosestPlayer())
	pUnit:SendChatMessage(12, 0, "I will send you over the wall...")
end

function Soccothrates_OnLeaveCombat(Unit, Event)
	Unit:RemoveEvents()
end

function Soccothrates_OnDead(Unit, Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent(20886, 1, "Soccothrates_OnCombat")
RegisterUnitEvent(20886, 2, "Soccothrates_OnLeaveCombat")
RegisterUnitEvent(20886, 4, "Soccothrates_OnDead")