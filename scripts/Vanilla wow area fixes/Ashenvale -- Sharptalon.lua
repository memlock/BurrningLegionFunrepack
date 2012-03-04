--[[ Ashenvale -- Sharptalon.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function Sharptalon_OnCombat(Unit, Event)
Unit:RegisterEvent("Sharptalon_PierceArmor", 6000, 0)
end

function Sharptalon_PierceArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12097, pUnit:GetMainTank()) 
end

function Sharptalon_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Sharptalon_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Sharptalon_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12676, 1, "Sharptalon_OnCombat")
RegisterUnitEvent(12676, 2, "Sharptalon_OnLeaveCombat")
RegisterUnitEvent(12676, 3, "Sharptalon_OnKilledTarget")
RegisterUnitEvent(12676, 4, "Sharptalon_OnDied")