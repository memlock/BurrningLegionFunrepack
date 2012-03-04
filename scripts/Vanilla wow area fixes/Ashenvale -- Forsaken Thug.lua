--[[ Ashenvale -- Forsaken Thug.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function ForsakenThug_OnCombat(Unit, Event)
Unit:RegisterEvent("ForsakenThug_Backhand", 7000, 0)
end

function ForsakenThug_Backhand(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6253, pUnit:GetMainTank()) 
end

function ForsakenThug_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ForsakenThug_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ForsakenThug_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3734, 1, "ForsakenThug_OnCombat")
RegisterUnitEvent(3734, 2, "ForsakenThug_OnLeaveCombat")
RegisterUnitEvent(3734, 3, "ForsakenThug_OnKilledTarget")
RegisterUnitEvent(3734, 4, "ForsakenThug_OnDied")