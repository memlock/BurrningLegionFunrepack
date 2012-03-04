--[[ Ashenvale -- Forsaken Dark Stalker.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function ForsakenDarkStalker_OnCombat(Unit, Event)
Unit:RegisterEvent("ForsakenDarkStalker_Throw", 6000, 0)
end

function ForsakenDarkStalker_Throw(pUnit, Event) 
pUnit:FullCastSpellOnTarget(10277, pUnit:GetMainTank()) 
end

function ForsakenDarkStalker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ForsakenDarkStalker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ForsakenDarkStalker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3808, 1, "ForsakenDarkStalker_OnCombat")
RegisterUnitEvent(3808, 2, "ForsakenDarkStalker_OnLeaveCombat")
RegisterUnitEvent(3808, 3, "ForsakenDarkStalker_OnKilledTarget")
RegisterUnitEvent(3808, 4, "ForsakenDarkStalker_OnDied")