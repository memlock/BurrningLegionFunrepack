--[[ Stonetalon Mountains -- Charred Ancient.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function CharredAncient_OnCombat(Unit, Event)
Unit:RegisterEvent("CharredAncient_EntanglingRoots", 10000, 0)
end

function CharredAncient_EntanglingRoots(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12747, pUnit:GetMainTank()) 
end

function CharredAncient_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CharredAncient_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CharredAncient_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4028, 1, "CharredAncient_OnCombat")
RegisterUnitEvent(4028, 2, "CharredAncient_OnLeaveCombat")
RegisterUnitEvent(4028, 3, "CharredAncient_OnKilledTarget")
RegisterUnitEvent(4028, 4, "CharredAncient_OnDied")