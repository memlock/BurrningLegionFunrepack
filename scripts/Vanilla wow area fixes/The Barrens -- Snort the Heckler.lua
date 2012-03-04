--[[ The Barrens -- Snort the Heckler.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function SnorttheHeckler_OnCombat(Unit, Event)
Unit:RegisterEvent("SnorttheHeckler_ToxicSpit", 6000, 0)
end

function SnorttheHeckler_ToxicSpit(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7951, pUnit:GetMainTank()) 
end

function SnorttheHeckler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SnorttheHeckler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SnorttheHeckler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5829, 1, "SnorttheHeckler_OnCombat")
RegisterUnitEvent(5829, 2, "SnorttheHeckler_OnLeaveCombat")
RegisterUnitEvent(5829, 3, "SnorttheHeckler_OnKilledTarget")
RegisterUnitEvent(5829, 4, "SnorttheHeckler_OnDied")