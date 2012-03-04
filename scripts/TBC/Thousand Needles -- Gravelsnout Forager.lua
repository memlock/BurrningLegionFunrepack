--[[ Thousand Needles -- Gravelsnout Forager.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function GravelsnoutForager_OnCombat(Unit, Event)
Unit:RegisterEvent("GravelsnoutForager_CorrosiveAcid", 10000, 0)
end

function GravelsnoutForager_CorrosiveAcid(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8245, pUnit:GetMainTank()) 
end

function GravelsnoutForager_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GravelsnoutForager_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GravelsnoutForager_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4114, 1, "GravelsnoutForager_OnCombat")
RegisterUnitEvent(4114, 2, "GravelsnoutForager_OnLeaveCombat")
RegisterUnitEvent(4114, 3, "GravelsnoutForager_OnKilledTarget")
RegisterUnitEvent(4114, 4, "GravelsnoutForager_OnDied")