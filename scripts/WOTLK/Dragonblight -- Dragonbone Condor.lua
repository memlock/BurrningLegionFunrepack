--[[ Dragonblight -- Dragonbone Condor.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function DragonboneCondor_OnCombat(Unit, Event)
Unit:RegisterEvent("DragonboneCondor_EvasiveManeuver", 6000, 0)
end

function DragonboneCondor_EvasiveManeuver(pUnit, Event) 
pUnit:CastSpell(51946) 
end

function DragonboneCondor_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DragonboneCondor_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DragonboneCondor_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26483, 1, "DragonboneCondor_OnCombat")
RegisterUnitEvent(26483, 2, "DragonboneCondor_OnLeaveCombat")
RegisterUnitEvent(26483, 3, "DragonboneCondor_OnKilledTarget")
RegisterUnitEvent(26483, 4, "DragonboneCondor_OnDied")