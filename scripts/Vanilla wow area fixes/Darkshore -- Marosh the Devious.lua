--[[ Darkshore -- Marosh the Devious.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 04th, 2008. ]]


function MaroshtheDevious_OnCombat(Unit, Event)
Unit:RegisterEvent("MaroshtheDevious_FaerieFire", 4000, 1)
Unit:RegisterEvent("MaroshtheDevious_Thrash", 6000, 0)
end

function MaroshtheDevious_FaerieFire(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6950, pUnit:GetMainTank()) 
end

function MaroshtheDevious_Thrash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3391, pUnit:GetMainTank()) 
end

function MaroshtheDevious_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MaroshtheDevious_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MaroshtheDevious_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11714, 1, "MaroshtheDevious_OnCombat")
RegisterUnitEvent(11714, 2, "MaroshtheDevious_OnLeaveCombat")
RegisterUnitEvent(11714, 3, "MaroshtheDevious_OnKilledTarget")
RegisterUnitEvent(11714, 4, "MaroshtheDevious_OnDied")