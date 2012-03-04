--[[ Dragonblight -- Icestorm.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function Icestorm_OnCombat(Unit, Event)
Unit:RegisterEvent("Icestorm_FrostBreath", 7000, 0)
end

function Icestorm_FrostBreath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(47428, pUnit:GetMainTank()) 
end

function Icestorm_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Icestorm_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Icestorm_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26287, 1, "Icestorm_OnCombat")
RegisterUnitEvent(26287, 2, "Icestorm_OnLeaveCombat")
RegisterUnitEvent(26287, 3, "Icestorm_OnKilledTarget")
RegisterUnitEvent(26287, 4, "Icestorm_OnDied")