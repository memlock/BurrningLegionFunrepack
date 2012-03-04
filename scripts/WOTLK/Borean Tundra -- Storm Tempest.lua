--[[ Borean Tundra -- Storm Tempest.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function StormTempest_OnCombat(Unit, Event)
Unit:RegisterEvent("StormTempest_ChainLightning", 8000, 0)
Unit:RegisterEvent("StormTempest_WindShock", 6000, 0)
end

function StormTempest_ChainLightning(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15659, pUnit:GetMainTank()) 
end

function StormTempest_WindShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(31272, pUnit:GetMainTank()) 
end

function StormTempest_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function StormTempest_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function StormTempest_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26045, 1, "StormTempest_OnCombat")
RegisterUnitEvent(26045, 2, "StormTempest_OnLeaveCombat")
RegisterUnitEvent(26045, 3, "StormTempest_OnKilledTarget")
RegisterUnitEvent(26045, 4, "StormTempest_OnDied")