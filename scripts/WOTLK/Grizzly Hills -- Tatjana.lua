--[[ Grizzly Hills -- Tatjana.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 4th, 2009. ]]


function Tatjana_OnCombat(Unit, Event)
Unit:RegisterEvent("Tatjana_Cutdown", 8000, 0)
end

function Tatjana_Cutdown(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32009, pUnit:GetMainTank()) 
end

function Tatjana_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Tatjana_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Tatjana_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27627, 1, "Tatjana_OnCombat")
RegisterUnitEvent(27627, 2, "Tatjana_OnLeaveCombat")
RegisterUnitEvent(27627, 3, "Tatjana_OnKilledTarget")
RegisterUnitEvent(27627, 4, "Tatjana_OnDied")