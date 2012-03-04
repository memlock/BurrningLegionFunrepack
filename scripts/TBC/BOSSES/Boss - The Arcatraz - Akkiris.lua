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

function Akkiris_OnCombat(Unit, Event)
	Unit:RegisterEvent("Akkiris_Red",10000,0)
	Unit:RegisterEvent("Akkiris_Wave",13000,0)
	Unit:RegisterEvent("Akkiris_FireBolt",21000,0)
end

function Akkiris_Red(pUnit, Event)
	pUnit:FullCastSpellOnTarget(14264, pUnit:GetClosestPlayer())
	pUnit:SendChatMessage(14, 0, "You will pay the price...")
end

function Akkiris_Wave(pUnit, Event)
	pUnit:FullCastSpellOnTarget(23331, pUnit:GetClosestPlayer())
	pUnit:SendChatMessage(12, 0, "Pain is coming for you...")
end

function Akkiris_FireBolt(pUnit, Event)
	pUnit:FullCastSpellOnTarget(36906, pUnit:GetClosestPlayer())
	pUnit:SendChatMessage(12, 0, "Let's put some heat...")
end

function Akkiris_OnLeaveCombat(pUnit, Event)
	pUnit:RemoveEvents()
end

function Akkiris_OnDead(pUnit, Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(20908,1,"Akkiris_OnCombat")
RegisterUnitEvent(20908,2,"Akkiris_OnLeaveCombat")
RegisterUnitEvent(20908,4,"Akkiris_OnDead")