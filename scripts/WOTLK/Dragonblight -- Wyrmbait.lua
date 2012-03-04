--[[ Dragonblight -- Wyrmbait.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function Wyrmbait_OnCombat(Unit, Event)
Unit:RegisterEvent("Wyrmbait_Shoot", 6000, 0)
end

function Wyrmbait_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15620, pUnit:GetMainTank()) 
end

function Wyrmbait_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Wyrmbait_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Wyrmbait_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27843, 1, "Wyrmbait_OnCombat")
RegisterUnitEvent(27843, 2, "Wyrmbait_OnLeaveCombat")
RegisterUnitEvent(27843, 3, "Wyrmbait_OnKilledTarget")
RegisterUnitEvent(27843, 4, "Wyrmbait_OnDied")