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

function Drakonaar_OnCombat(Unit, Event)
	Unit:RegisterEvent("Drakonaar_Red", 11000, 0)
	Unit:RegisterEvent("Drakonaar_Blue", 15000, 0)
	Unit:RegisterEvent("Drakonaar_Green", 21000, 0)
	Unit:RegisterEvent("Drakonaar_Black", 27000, 0)
	Unit:RegisterEvent("Drakonaar_Bronze", 31000, 0)
end

function Drakonaar_Red(pUnit, Event)
	pUnit:FullCastSpellOnTarget(14264, pUnit:GetClosestPlayer())
	pUnit:SendChatMessage(12, 0, "This spell will kill you...")
end

function Drakonaar_Blue(pUnit, Event)
	pUnit:FullCastSpellOnTarget(14261, pUnit:GetClosestPlayer())
	pUnit:SendChatMessage(12, 0, "Look behind you...")
end

function Drakonaar_Green(pUnit, Event)
	pUnit:FullCastSpellOnTarget(14262, pUnit:GetClosestPlayer())
	pUnit:SendChatMessage(12, 0, "Look your face, you are afraid...")
end

function Drakonaar_Black(pUnit, Event)
	pUnit:FullCastSpellOnTarget(14265, pUnit:GetClosestPlayer())
	pUnit:SendChatMessage(12, 0, "Now the final blast...")
end

function Drakonaar_Bronze(pUnit, Event)
	pUnit:FullCastSpellOnTarget(14263, pUnit:GetClosestPlayer())
	pUnit:SendChatMessage(12, 0, "I will crush you in my hand...")
end

function Drakonaar_OnLeaveCombat(Unit, Event)
	Unit:RemoveEvents()
end

function Drakonaar_OnDead(Unit, Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent(20910, 1, "Drakonaar_OnCombat")
RegisterUnitEvent(20910, 2, "Drakonaar_OnLeaveCombat")
RegisterUnitEvent(20910, 4, "Drakonaar_OnDead")