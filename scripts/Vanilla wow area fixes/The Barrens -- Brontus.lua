--[[ The Barrens -- Brontus.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function Brontus_OnCombat(Unit, Event)
Unit:RegisterEvent("Brontus_PierceArmor", 10000, 0)
Unit:RegisterEvent("Brontus_RushingCharge", 8000, 0)
end

function Brontus_PierceArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6016, pUnit:GetMainTank()) 
end

function Brontus_RushingCharge(pUnit, Event) 
pUnit:CastSpell(6268) 
end

function Brontus_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Brontus_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Brontus_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5827, 1, "Brontus_OnCombat")
RegisterUnitEvent(5827, 2, "Brontus_OnLeaveCombat")
RegisterUnitEvent(5827, 3, "Brontus_OnKilledTarget")
RegisterUnitEvent(5827, 4, "Brontus_OnDied")