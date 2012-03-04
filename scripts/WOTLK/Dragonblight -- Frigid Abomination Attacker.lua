--[[ Dragonblight -- Frigid Abomination Attacker.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function FrigidAbominationAttacker_OnCombat(Unit, Event)
Unit:RegisterEvent("FrigidAbominationAttacker_Cleave", 8000, 0)
end

function FrigidAbominationAttacker_Cleave(pUnit, Event) 
pUnit:CastSpell(40504) 
end

function FrigidAbominationAttacker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FrigidAbominationAttacker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FrigidAbominationAttacker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27531, 1, "FrigidAbominationAttacker_OnCombat")
RegisterUnitEvent(27531, 2, "FrigidAbominationAttacker_OnLeaveCombat")
RegisterUnitEvent(27531, 3, "FrigidAbominationAttacker_OnKilledTarget")
RegisterUnitEvent(27531, 4, "FrigidAbominationAttacker_OnDied")