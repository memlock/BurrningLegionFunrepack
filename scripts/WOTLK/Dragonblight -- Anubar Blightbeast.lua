--[[ Dragonblight -- Anubar Blightbeast.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function AnubarBlightbeast_OnCombat(Unit, Event)
Unit:RegisterEvent("AnubarBlightbeast_BlightedShriek", 8000, 0)
Unit:RegisterEvent("AnubarBlightbeast_PoisonBolt", 6000, 0)
end

function AnubarBlightbeast_BlightedShriek(pUnit, Event) 
pUnit:CastSpell(47443) 
end

function AnubarBlightbeast_PoisonBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(21971, pUnit:GetMainTank()) 
end

function AnubarBlightbeast_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AnubarBlightbeast_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AnubarBlightbeast_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26607, 1, "AnubarBlightbeast_OnCombat")
RegisterUnitEvent(26607, 2, "AnubarBlightbeast_OnLeaveCombat")
RegisterUnitEvent(26607, 3, "AnubarBlightbeast_OnKilledTarget")
RegisterUnitEvent(26607, 4, "AnubarBlightbeast_OnDied")