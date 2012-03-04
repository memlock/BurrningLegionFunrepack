--[[ Borean Tundra -- En'kilah Abomination.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function EnkilahAbomination_OnCombat(Unit, Event)
Unit:RegisterEvent("EnkilahAbomination_Cleave", 8000, 0)
Unit:RegisterEvent("EnkilahAbomination_ScourgeHook", 6000, 0)
end

function EnkilahAbomination_Cleave(pUnit, Event) 
pUnit:CastSpell(40504) 
end

function EnkilahAbomination_ScourgeHook(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50335, pUnit:GetMainTank()) 
end

function EnkilahAbomination_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function EnkilahAbomination_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function EnkilahAbomination_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25383, 1, "EnkilahAbomination_OnCombat")
RegisterUnitEvent(25383, 2, "EnkilahAbomination_OnLeaveCombat")
RegisterUnitEvent(25383, 3, "EnkilahAbomination_OnKilledTarget")
RegisterUnitEvent(25383, 4, "EnkilahAbomination_OnDied")