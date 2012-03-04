--[[ Thousand Needles -- Sparkleshell Borer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function SparkleshellBorer_OnCombat(Unit, Event)
Unit:RegisterEvent("SparkleshellBorer_PierceArmor", 10000, 0)
end

function SparkleshellBorer_PierceArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6016, pUnit:GetMainTank()) 
end

function SparkleshellBorer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SparkleshellBorer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SparkleshellBorer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4144, 1, "SparkleshellBorer_OnCombat")
RegisterUnitEvent(4144, 2, "SparkleshellBorer_OnLeaveCombat")
RegisterUnitEvent(4144, 3, "SparkleshellBorer_OnKilledTarget")
RegisterUnitEvent(4144, 4, "SparkleshellBorer_OnDied")