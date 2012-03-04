--[[ Azshara -- Highborne Apparition.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function HighborneApparition_OnCombat(Unit, Event)
Unit:RegisterEvent("HighborneApparition_Fear", 12000, 0)
end

function HighborneApparition_Fear(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12542, pUnit:GetMainTank()) 
end

function HighborneApparition_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HighborneApparition_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HighborneApparition_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6116, 1, "HighborneApparition_OnCombat")
RegisterUnitEvent(6116, 2, "HighborneApparition_OnLeaveCombat")
RegisterUnitEvent(6116, 3, "HighborneApparition_OnKilledTarget")
RegisterUnitEvent(6116, 4, "HighborneApparition_OnDied")