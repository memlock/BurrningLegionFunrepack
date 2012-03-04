--[[ Tanaris -- Sandfury Hideskinner.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function SandfuryHideskinner_OnCombat(Unit, Event)
Unit:RegisterEvent("SandfuryHideskinner_Backstab", 4000, 0)
end

function SandfuryHideskinner_Backstab(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7159, pUnit:GetMainTank()) 
end

function SandfuryHideskinner_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SandfuryHideskinner_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SandfuryHideskinner_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5645, 1, "SandfuryHideskinner_OnCombat")
RegisterUnitEvent(5645, 2, "SandfuryHideskinner_OnLeaveCombat")
RegisterUnitEvent(5645, 3, "SandfuryHideskinner_OnKilledTarget")
RegisterUnitEvent(5645, 4, "SandfuryHideskinner_OnDied")