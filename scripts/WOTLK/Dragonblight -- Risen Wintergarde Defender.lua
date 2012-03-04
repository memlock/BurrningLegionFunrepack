--[[ Dragonblight -- Risen Wintergarde Defender.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function RisenWintergardeDefender_OnCombat(Unit, Event)
Unit:RegisterEvent("RisenWintergardeDefender_UnwaveringWill", 4000, 1)
end

function RisenWintergardeDefender_UnwaveringWill(pUnit, Event) 
pUnit:CastSpell(51307) 
end

function RisenWintergardeDefender_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RisenWintergardeDefender_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RisenWintergardeDefender_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27284, 1, "RisenWintergardeDefender_OnCombat")
RegisterUnitEvent(27284, 2, "RisenWintergardeDefender_OnLeaveCombat")
RegisterUnitEvent(27284, 3, "RisenWintergardeDefender_OnKilledTarget")
RegisterUnitEvent(27284, 4, "RisenWintergardeDefender_OnDied")