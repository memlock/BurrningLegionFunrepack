--[[ Dragonblight -- Nexus Guardian.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function NexusGuardian_OnCombat(Unit, Event)
Unit:RegisterEvent("NexusGuardian_FrostBreath", 6500, 0)
Unit:RegisterEvent("NexusGuardian_FrostCleave", 8000, 0)
end

function NexusGuardian_FrostBreath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(47425, pUnit:GetMainTank()) 
end

function NexusGuardian_FrostCleave(pUnit, Event) 
pUnit:CastSpell(51857) 
end

function NexusGuardian_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function NexusGuardian_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function NexusGuardian_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26276, 1, "NexusGuardian_OnCombat")
RegisterUnitEvent(26276, 2, "NexusGuardian_OnLeaveCombat")
RegisterUnitEvent(26276, 3, "NexusGuardian_OnKilledTarget")
RegisterUnitEvent(26276, 4, "NexusGuardian_OnDied")