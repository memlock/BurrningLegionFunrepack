--[[ Bloodmyst Isle -- Sunhawk Agent.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 29th, 2008. ]]

function SunhawkAgent_OnCombat(Unit, Event)
Unit:RegisterEvent("SunhawkAgent_Eviscerate", 10000, 0)
Unit:RegisterEvent("SunhawkAgent_MarkoftheSunhawk", 8000, 0)
Unit:RegisterEvent("SunhawkAgent_SinisterStrike", 6000, 0)
end

function SunhawkAgent_Eviscerate(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15691, pUnit:GetMainTank()) 
end

function SunhawkAgent_MarkoftheSunhawk(pUnit, Event) 
pUnit:CastSpell(31734) 
end

function SunhawkAgent_SinisterStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(14873, pUnit:GetMainTank()) 
end

function SunhawkAgent_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SunhawkAgent_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SunhawkAgent_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17610, 1, "SunhawkAgent_OnCombat")
RegisterUnitEvent(17610, 2, "SunhawkAgent_OnLeaveCombat")
RegisterUnitEvent(17610, 3, "SunhawkAgent_OnKilledTarget")
RegisterUnitEvent(17610, 4, "SunhawkAgent_OnDied")