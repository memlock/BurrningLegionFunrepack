--[[ Darkshore -- Stormscale Myrmidon.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 04th, 2008. ]]


function StormscaleMyrmidon_OnCombat(Unit, Event)
Unit:RegisterEvent("StormscaleMyrmidon_Knockdown", 8000, 0)
end

function StormscaleMyrmidon_Knockdown(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5164, pUnit:GetMainTank()) 
end

function StormscaleMyrmidon_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function StormscaleMyrmidon_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function StormscaleMyrmidon_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2181, 1, "StormscaleMyrmidon_OnCombat")
RegisterUnitEvent(2181, 2, "StormscaleMyrmidon_OnLeaveCombat")
RegisterUnitEvent(2181, 3, "StormscaleMyrmidon_OnKilledTarget")
RegisterUnitEvent(2181, 4, "StormscaleMyrmidon_OnDied")