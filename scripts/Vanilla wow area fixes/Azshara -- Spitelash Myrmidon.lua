--[[ Azshara -- Spitelash Myrmidon.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function SpitelashMyrmidon_OnCombat(Unit, Event)
Unit:RegisterEvent("SpitelashMyrmidon_Strike", 5000, 0)
end

function SpitelashMyrmidon_Strike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11976, pUnit:GetMainTank()) 
end

function SpitelashMyrmidon_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SpitelashMyrmidon_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SpitelashMyrmidon_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6196, 1, "SpitelashMyrmidon_OnCombat")
RegisterUnitEvent(6196, 2, "SpitelashMyrmidon_OnLeaveCombat")
RegisterUnitEvent(6196, 3, "SpitelashMyrmidon_OnKilledTarget")
RegisterUnitEvent(6196, 4, "SpitelashMyrmidon_OnDied")