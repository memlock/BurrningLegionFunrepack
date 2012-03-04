--[[ Dragonblight -- Torturer LeCraft.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function TorturerLeCraft_OnCombat(Unit, Event)
Unit:RegisterEvent("TorturerLeCraft_Hemorrhage", 5000, 0)
Unit:RegisterEvent("TorturerLeCraft_KidneyShot", 10000, 0)
end

function TorturerLeCraft_Hemorrhage(pUnit, Event) 
pUnit:FullCastSpellOnTarget(30478) 
end

function TorturerLeCraft_KidneyShot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(30621, pUnit:GetMainTank()) 
end

function TorturerLeCraft_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TorturerLeCraft_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TorturerLeCraft_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27209, 1, "TorturerLeCraft_OnCombat")
RegisterUnitEvent(27209, 2, "TorturerLeCraft_OnLeaveCombat")
RegisterUnitEvent(27209, 3, "TorturerLeCraft_OnKilledTarget")
RegisterUnitEvent(27209, 4, "TorturerLeCraft_OnDied")