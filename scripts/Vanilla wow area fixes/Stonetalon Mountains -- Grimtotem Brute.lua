--[[ Stonetalon Mountains -- Grimtotem Brute.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function GrimtotemBrute_OnCombat(Unit, Event)
Unit:RegisterEvent("GrimtotemBrute_RushingCharge", 8000, 0)
end

function GrimtotemBrute_RushingCharge(pUnit, Event) 
pUnit:CastSpell(6268) 
end

function GrimtotemBrute_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GrimtotemBrute_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GrimtotemBrute_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11912, 1, "GrimtotemBrute_OnCombat")
RegisterUnitEvent(11912, 2, "GrimtotemBrute_OnLeaveCombat")
RegisterUnitEvent(11912, 3, "GrimtotemBrute_OnKilledTarget")
RegisterUnitEvent(11912, 4, "GrimtotemBrute_OnDied")