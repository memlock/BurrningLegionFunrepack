--[[ Thousand Needles -- Sparkleshell Snapper.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function SparkleshellSnapper_OnCombat(Unit, Event)
Unit:RegisterEvent("SparkleshellSnapper_HeadButt", 10000, 0)
end

function SparkleshellSnapper_HeadButt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6730, pUnit:GetClosestPlayer()) 
end

function SparkleshellSnapper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SparkleshellSnapper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SparkleshellSnapper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4143, 1, "SparkleshellSnapper_OnCombat")
RegisterUnitEvent(4143, 2, "SparkleshellSnapper_OnLeaveCombat")
RegisterUnitEvent(4143, 3, "SparkleshellSnapper_OnKilledTarget")
RegisterUnitEvent(4143, 4, "SparkleshellSnapper_OnDied")