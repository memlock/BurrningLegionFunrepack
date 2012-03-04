--[[ Borean Tundra -- Plagued Magnataur.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function PlaguedMagnataur_OnCombat(Unit, Event)
Unit:RegisterEvent("PlaguedMagnataur_PlagueCloud", 2000, 2)
end

function PlaguedMagnataur_PlagueCloud(pUnit, Event) 
pUnit:CastSpell(50366) 
end

function PlaguedMagnataur_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function PlaguedMagnataur_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function PlaguedMagnataur_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25615, 1, "PlaguedMagnataur_OnCombat")
RegisterUnitEvent(25615, 2, "PlaguedMagnataur_OnLeaveCombat")
RegisterUnitEvent(25615, 3, "PlaguedMagnataur_OnKilledTarget")
RegisterUnitEvent(25615, 4, "PlaguedMagnataur_OnDied")