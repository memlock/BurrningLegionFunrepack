--[[ Ashenvale -- Silverwing Sentinel.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function SilverwingSentinel_OnCombat(Unit, Event)
Unit:RegisterEvent("SilverwingSentinel_Shoot", 6000, 0)
end

function SilverwingSentinel_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function SilverwingSentinel_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SilverwingSentinel_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SilverwingSentinel_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12896, 1, "SilverwingSentinel_OnCombat")
RegisterUnitEvent(12896, 2, "SilverwingSentinel_OnLeaveCombat")
RegisterUnitEvent(12896, 3, "SilverwingSentinel_OnKilledTarget")
RegisterUnitEvent(12896, 4, "SilverwingSentinel_OnDied")