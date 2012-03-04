--[[ Durotar -- Dustwind Pillager.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function DustwindPillager_OnCombat(Unit, Event)
Unit:RegisterEvent("DustwindPillager_RendFlesh", 8000, 0)
end

function DustwindPillager_RendFlesh(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3147, pUnit:GetMainTank()) 
end

function DustwindPillager_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DustwindPillager_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DustwindPillager_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3116, 1, "DustwindPillager_OnCombat")
RegisterUnitEvent(3116, 2, "DustwindPillager_OnLeaveCombat")
RegisterUnitEvent(3116, 3, "DustwindPillager_OnKilledTarget")
RegisterUnitEvent(3116, 4, "DustwindPillager_OnDied")