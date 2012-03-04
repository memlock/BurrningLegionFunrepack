--[[ Azshara -- Blood Elf Surveyor.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function BloodElfSurveyor_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodElfSurveyor_FireNova", 6000, 0)
end

function BloodElfSurveyor_FireNova(pUnit, Event) 
pUnit:CastSpell(11969) 
end

function BloodElfSurveyor_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodElfSurveyor_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodElfSurveyor_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6198, 1, "BloodElfSurveyor_OnCombat")
RegisterUnitEvent(6198, 2, "BloodElfSurveyor_OnLeaveCombat")
RegisterUnitEvent(6198, 3, "BloodElfSurveyor_OnKilledTarget")
RegisterUnitEvent(6198, 4, "BloodElfSurveyor_OnDied")