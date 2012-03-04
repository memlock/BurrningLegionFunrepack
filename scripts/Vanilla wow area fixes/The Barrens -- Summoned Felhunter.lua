--[[ The Barrens -- Summoned Felhunter.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function SummonedFelhunter_OnCombat(Unit, Event)
Unit:RegisterEvent("SummonedFelhunter_ManaBurn", 6000, 0)
end

function SummonedFelhunter_ManaBurn(pUnit, Event) 
pUnit:FullCastSpellOnTarget(2691, pUnit:GetRandomPlayer(4)) 
end

function SummonedFelhunter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SummonedFelhunter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SummonedFelhunter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6268, 1, "SummonedFelhunter_OnCombat")
RegisterUnitEvent(6268, 2, "SummonedFelhunter_OnLeaveCombat")
RegisterUnitEvent(6268, 3, "SummonedFelhunter_OnKilledTarget")
RegisterUnitEvent(6268, 4, "SummonedFelhunter_OnDied")