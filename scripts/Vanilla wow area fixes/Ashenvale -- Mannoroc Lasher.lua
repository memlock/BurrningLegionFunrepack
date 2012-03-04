--[[ Ashenvale -- Mannoroc Lasher.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function MannorocLasher_OnCombat(Unit, Event)
Unit:RegisterEvent("MannorocLasher_ShadowBolt", 8000, 0)
end

function MannorocLasher_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9613, pUnit:GetMainTank()) 
end

function MannorocLasher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MannorocLasher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MannorocLasher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11697, 1, "MannorocLasher_OnCombat")
RegisterUnitEvent(11697, 2, "MannorocLasher_OnLeaveCombat")
RegisterUnitEvent(11697, 3, "MannorocLasher_OnKilledTarget")
RegisterUnitEvent(11697, 4, "MannorocLasher_OnDied")