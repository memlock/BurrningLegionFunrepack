--[[ Azuremyst Isle -- Blood Elf Scout.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]


function BloodElfScout_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodElfScout_FaerieFire", 8000, 0)
end

function BloodElfScout_FaerieFire(pUnit, Event) 
pUnit:FullCastSpellOnTarget(25602, pUnit:GetMainTank()) 
end

function BloodElfScout_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodElfScout_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodElfScout_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(16521, 1, "BloodElfScout_OnCombat")
RegisterUnitEvent(16521, 2, "BloodElfScout_OnLeaveCombat")
RegisterUnitEvent(16521, 3, "BloodElfScout_OnKilledTarget")
RegisterUnitEvent(16521, 4, "BloodElfScout_OnDied")