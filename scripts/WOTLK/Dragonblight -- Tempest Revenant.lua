--[[ Dragonblight -- Tempest Revenant.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function TempestRevenant_OnCombat(Unit, Event)
Unit:RegisterEvent("TempestRevenant_SeethingFlames", 6000, 0)
end

function TempestRevenant_SeethingFlames(pUnit, Event) 
pUnit:FullCastSpellOnTarget(56620, pUnit:GetMainTank()) 
end

function TempestRevenant_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TempestRevenant_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TempestRevenant_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(30875, 1, "TempestRevenant_OnCombat")
RegisterUnitEvent(30875, 2, "TempestRevenant_OnLeaveCombat")
RegisterUnitEvent(30875, 3, "TempestRevenant_OnKilledTarget")
RegisterUnitEvent(30875, 4, "TempestRevenant_OnDied")