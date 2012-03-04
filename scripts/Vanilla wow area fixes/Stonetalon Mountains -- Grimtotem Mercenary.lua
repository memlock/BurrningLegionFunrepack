--[[ Stonetalon Mountains -- Grimtotem Mercenary.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function GrimtotemMercenary_OnCombat(Unit, Event)
Unit:RegisterEvent("GrimtotemMercenary_Pummel", 10000, 0)
Unit:RegisterEvent("GrimtotemMercenary_Throw", 6000, 0)
end

function GrimtotemMercenary_Pummel(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12555, pUnit:GetMainTank()) 
end

function GrimtotemMercenary_Throw(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15607, pUnit:GetMainTank()) 
end

function GrimtotemMercenary_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GrimtotemMercenary_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GrimtotemMercenary_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11911, 1, "GrimtotemMercenary_OnCombat")
RegisterUnitEvent(11911, 2, "GrimtotemMercenary_OnLeaveCombat")
RegisterUnitEvent(11911, 3, "GrimtotemMercenary_OnKilledTarget")
RegisterUnitEvent(11911, 4, "GrimtotemMercenary_OnDied")