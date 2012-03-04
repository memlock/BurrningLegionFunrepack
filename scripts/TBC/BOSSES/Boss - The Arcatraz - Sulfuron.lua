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

Yerney - 5 June 2008 - Sulfuron
--]]

function Sulfuron_OnCombat(Unit, Event)
	Unit:RegisterEvent("Sulfuron_FireBolt",9000,0)
	Unit:RegisterEvent("Sulfuron_FireShield",13000,0)
	Unit:RegisterEvent("Sulfuron_Charge",21000,0)
end

function Sulfuron_FireBolt(pUnit, Event)
	pUnit:FullCastSpellOnTarget(23331, pUnit:GetRandomPlayer(0))
	pUnit:SendChatMessage(12, 0, "This wave will send you in ValHalla...")
end

function Sulfuron_FireShield(pUnit, Event)
	pUnit:FullCastSpellOnTarget(24573, pUnit:GetClosestPlayer())
	pUnit:SendChatMessage(12, 0, "My strike will crash your head...")
end

function Sulfuron_Charge(pUnit, Event)
	pUnit:FullCastSpellOnTarget(36058, pUnit:GetClosestPlayer())
	pUnit:SendChatMessage(12, 0, "I will send you over the wall...")
end

function Sulfuron_OnLeaveCombat(Unit, Event)
	Unit:RemoveEvents()
end

function Sulfuron_OnDead(Unit, Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent(20909, 1, "Sulfuron_OnCombat")
RegisterUnitEvent(20909, 2, "Sulfuron_OnLeaveCombat")
RegisterUnitEvent(20909, 4, "Sulfuron_OnDead")