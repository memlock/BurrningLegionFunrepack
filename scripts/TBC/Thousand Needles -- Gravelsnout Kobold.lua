--[[ Thousand Needles -- Gravelsnout Kobold.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function GravelsnoutKobold_OnCombat(Unit, Event)
Unit:RegisterEvent("GravelsnoutKobold_Strike", 4000, 0)
end

function GravelsnoutKobold_Strike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11976, pUnit:GetMainTank()) 
end

function GravelsnoutKobold_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GravelsnoutKobold_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GravelsnoutKobold_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4111, 1, "GravelsnoutKobold_OnCombat")
RegisterUnitEvent(4111, 2, "GravelsnoutKobold_OnLeaveCombat")
RegisterUnitEvent(4111, 3, "GravelsnoutKobold_OnKilledTarget")
RegisterUnitEvent(4111, 4, "GravelsnoutKobold_OnDied")