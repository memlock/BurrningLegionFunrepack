--[[ Borean Tundra -- Aged Magnataur.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function AgedMagnataur_OnCombat(Unit, Event)
Unit:RegisterEvent("AgedMagnataur_PlagueCloud", 2000, 2)
end

function AgedMagnataur_PlagueCloud(pUnit, Event) 
pUnit:CastSpell(50366) 
end

function AgedMagnataur_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AgedMagnataur_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AgedMagnataur_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24954, 1, "AgedMagnataur_OnCombat")
RegisterUnitEvent(24954, 2, "AgedMagnataur_OnLeaveCombat")
RegisterUnitEvent(24954, 3, "AgedMagnataur_OnKilledTarget")
RegisterUnitEvent(24954, 4, "AgedMagnataur_OnDied")