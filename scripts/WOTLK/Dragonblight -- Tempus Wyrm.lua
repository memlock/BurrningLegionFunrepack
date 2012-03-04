--[[ Dragonblight -- Tempus Wyrm.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function TempusWyrm_OnCombat(Unit, Event)
Unit:RegisterEvent("TempusWyrm_TimeShock", 5000, 0)
end

function TempusWyrm_TimeShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(60076, pUnit:GetMainTank()) 
end

function TempusWyrm_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TempusWyrm_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TempusWyrm_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(32180, 1, "TempusWyrm_OnCombat")
RegisterUnitEvent(32180, 2, "TempusWyrm_OnLeaveCombat")
RegisterUnitEvent(32180, 3, "TempusWyrm_OnKilledTarget")
RegisterUnitEvent(32180, 4, "TempusWyrm_OnDied")