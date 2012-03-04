--[[ Bloodmyst Isle -- Myst Spinner.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 29th, 2008. ]]

function MystSpinner_OnCombat(Unit, Event)
Unit:RegisterEvent("MystSpinner_Web", 10000, 0)
end

function MystSpinner_Web(pUnit, Event) 
pUnit:FullCastSpellOnTarget(745, pUnit:GetMainTank()) 
end

function MystSpinner_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MystSpinner_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MystSpinner_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17522, 1, "MystSpinner_OnCombat")
RegisterUnitEvent(17522, 2, "MystSpinner_OnLeaveCombat")
RegisterUnitEvent(17522, 3, "MystSpinner_OnKilledTarget")
RegisterUnitEvent(17522, 4, "MystSpinner_OnDied")