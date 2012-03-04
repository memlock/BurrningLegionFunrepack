--[[ Darkshore -- Licillin.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 04th, 2008. ]]


function Licillin_OnCombat(Unit, Event)
Unit:RegisterEvent("Licillin_CurseofWeakness", 3000, 1)
Unit:RegisterEvent("Licillin_ShadowBolt", 8000, 0)
end

function Licillin_CurseofWeakness(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11980, pUnit:GetMainTank()) 
end

function Licillin_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20791, pUnit:GetMainTank()) 
end

function Licillin_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Licillin_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Licillin_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2191, 1, "Licillin_OnCombat")
RegisterUnitEvent(2191, 2, "Licillin_OnLeaveCombat")
RegisterUnitEvent(2191, 3, "Licillin_OnKilledTarget")
RegisterUnitEvent(2191, 4, "Licillin_OnDied")