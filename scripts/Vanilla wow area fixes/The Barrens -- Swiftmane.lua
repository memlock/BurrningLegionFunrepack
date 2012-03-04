--[[ The Barrens -- Swiftmane.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function Swiftmane_OnCombat(Unit, Event)
Unit:RegisterEvent("Swiftmane_PierceArmor", 10000, 0)
end

function Swiftmane_PierceArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6016, pUnit:GetMainTank()) 
end

function Swiftmane_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Swiftmane_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Swiftmane_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5831, 1, "Swiftmane_OnCombat")
RegisterUnitEvent(5831, 2, "Swiftmane_OnLeaveCombat")
RegisterUnitEvent(5831, 3, "Swiftmane_OnKilledTarget")
RegisterUnitEvent(5831, 4, "Swiftmane_OnDied")