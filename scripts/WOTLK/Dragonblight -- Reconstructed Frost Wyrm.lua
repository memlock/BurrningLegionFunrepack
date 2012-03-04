--[[ Dragonblight -- Reconstructed Frost Wyrm.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function ReconstructedFrostWyrm_OnCombat(Unit, Event)
Unit:RegisterEvent("ReconstructedFrostWyrm_FrostBreath", 6500, 0)
end

function ReconstructedFrostWyrm_FrostBreath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(47425, pUnit:GetMainTank()) 
end

function ReconstructedFrostWyrm_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ReconstructedFrostWyrm_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ReconstructedFrostWyrm_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27285, 1, "ReconstructedFrostWyrm_OnCombat")
RegisterUnitEvent(27285, 2, "ReconstructedFrostWyrm_OnLeaveCombat")
RegisterUnitEvent(27285, 3, "ReconstructedFrostWyrm_OnKilledTarget")
RegisterUnitEvent(27285, 4, "ReconstructedFrostWyrm_OnDied")