--[[ The Barrens -- Theramore Marine.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function TheramoreMarine_OnCombat(Unit, Event)
Unit:RegisterEvent("TheramoreMarine_DefensiveStance", 2000, 1)
Unit:RegisterEvent("TheramoreMarine_Disarm", 6000, 0)
Unit:RegisterEvent("TheramoreMarine_ShieldBash", 8000, 0)
end

function TheramoreMarine_DefensiveStance(pUnit, Event) 
pUnit:CastSpell(7164) 
end

function TheramoreMarine_Disarm(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6713, pUnit:GetMainTank()) 
end

function TheramoreMarine_ShieldBash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(72, pUnit:GetMainTank()) 
end

function TheramoreMarine_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TheramoreMarine_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TheramoreMarine_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3385, 1, "TheramoreMarine_OnCombat")
RegisterUnitEvent(3385, 2, "TheramoreMarine_OnLeaveCombat")
RegisterUnitEvent(3385, 3, "TheramoreMarine_OnKilledTarget")
RegisterUnitEvent(3385, 4, "TheramoreMarine_OnDied")