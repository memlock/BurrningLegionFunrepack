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

Yerney - 5 June 2008 - Trickster
--]]

function Trickster_OnCombat(Unit, Event)
	Unit:RegisterEvent("Trickster_FireBolt", 10000, 0)
	Unit:RegisterEvent("Trickster_FireShield", 15000, 0)
	Unit:RegisterEvent("Trickster_Charge", 21000, 0)
end

function Trickster_FireBolt(pUnit, Event)
	pUnit:FullCastSpellOnTarget(36906, pUnit:GetClosestPlayer())
	pUnit:SendChatMessage(12, 0, "Try to catch that...")
end

function Trickster_FireShield(Unit, Event)
	Unit:FullCastSpell(36907)
	Unit:SendChatMessage(12, 0, "Now I will be protected by fire!")
end

function Trickster_Charge(pUnit, Event)
	pUnit:FullCastSpellOnTarget(36058, pUnit:GetClosestPlayer())
	pUnit:SendChatMessage(12, 0, "I will send you over the wall...")
end

function Trickster_OnLeaveCombat(Unit, Event)
	Unit:RemoveEvents()
end

function Trickster_OnDead(Unit, Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent(20905, 1, "Trickster_OnCombat")
RegisterUnitEvent(20905, 2, "Trickster_OnLeaveCombat")
RegisterUnitEvent(20905, 4, "Trickster_OnDead")