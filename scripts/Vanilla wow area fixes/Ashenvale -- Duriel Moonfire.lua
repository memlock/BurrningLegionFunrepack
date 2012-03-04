--[[ Ashenvale -- Duriel Moonfire.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function DurielMoonfire_OnCombat(Unit, Event)
Unit:RegisterEvent("DurielMoonfire_Knockdown", 8000, 0)
Unit:RegisterEvent("DurielMoonfire_PierceArmor", 6000, 0)
end

function DurielMoonfire_Knockdown(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11428, pUnit:GetMainTank()) 
end

function DurielMoonfire_PierceArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12097, pUnit:GetMainTank()) 
end

function DurielMoonfire_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DurielMoonfire_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DurielMoonfire_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12860, 1, "DurielMoonfire_OnCombat")
RegisterUnitEvent(12860, 2, "DurielMoonfire_OnLeaveCombat")
RegisterUnitEvent(12860, 3, "DurielMoonfire_OnKilledTarget")
RegisterUnitEvent(12860, 4, "DurielMoonfire_OnDied")