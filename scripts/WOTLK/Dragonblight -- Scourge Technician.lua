--[[ Dragonblight -- Scourge Technician.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function ScourgeTechnician_OnCombat(Unit, Event)
Unit:RegisterEvent("ScourgeTechnician_Lobotomize", 6000, 0)
end

function ScourgeTechnician_Lobotomize(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51316, pUnit:GetMainTank()) 
end

function ScourgeTechnician_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ScourgeTechnician_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ScourgeTechnician_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27799, 1, "ScourgeTechnician_OnCombat")
RegisterUnitEvent(27799, 2, "ScourgeTechnician_OnLeaveCombat")
RegisterUnitEvent(27799, 3, "ScourgeTechnician_OnKilledTarget")
RegisterUnitEvent(27799, 4, "ScourgeTechnician_OnDied")