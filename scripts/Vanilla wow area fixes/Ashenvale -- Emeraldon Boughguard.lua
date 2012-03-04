--[[ Ashenvale -- Emeraldon Boughguard.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function EmeraldonBoughguard_OnCombat(Unit, Event)
Unit:RegisterEvent("EmeraldonBoughguard_Cleave", 6000, 0)
Unit:RegisterEvent("EmeraldonBoughguard_Fixate", 8000, 0)
Unit:RegisterEvent("EmeraldonBoughguard_MortalStrike", 10000, 0)
end

function EmeraldonBoughguard_Cleave(pUnit, Event) 
pUnit:CastSpell(20666) 
end

function EmeraldonBoughguard_Fixate(pUnit, Event) 
pUnit:CastSpell(12021) 
end

function EmeraldonBoughguard_MortalStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15708, pUnit:GetMainTank()) 
end

function EmeraldonBoughguard_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function EmeraldonBoughguard_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function EmeraldonBoughguard_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12474, 1, "EmeraldonBoughguard_OnCombat")
RegisterUnitEvent(12474, 2, "EmeraldonBoughguard_OnLeaveCombat")
RegisterUnitEvent(12474, 3, "EmeraldonBoughguard_OnKilledTarget")
RegisterUnitEvent(12474, 4, "EmeraldonBoughguard_OnDied")