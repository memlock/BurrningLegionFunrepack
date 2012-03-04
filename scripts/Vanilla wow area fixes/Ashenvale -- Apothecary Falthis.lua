--[[ Ashenvale -- Apothecary Falthis.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function ApothecaryFalthis_OnCombat(Unit, Event)
Unit:RegisterEvent("ApothecaryFalthis_ShadowBolt", 8000, 0)
end

function ApothecaryFalthis_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20791, pUnit:GetMainTank()) 
end

function ApothecaryFalthis_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ApothecaryFalthis_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ApothecaryFalthis_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3735, 1, "ApothecaryFalthis_OnCombat")
RegisterUnitEvent(3735, 2, "ApothecaryFalthis_OnLeaveCombat")
RegisterUnitEvent(3735, 3, "ApothecaryFalthis_OnKilledTarget")
RegisterUnitEvent(3735, 4, "ApothecaryFalthis_OnDied")