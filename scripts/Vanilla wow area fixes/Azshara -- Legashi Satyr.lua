--[[ Azshara -- Legashi Satyr.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function LegashiSatyr_OnCombat(Unit, Event)
Unit:RegisterEvent("LegashiSatyr_ManaBurn", 8000, 0)
end

function LegashiSatyr_ManaBurn(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11981, pUnit:GetRandomPlayer(4)) 
end

function LegashiSatyr_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LegashiSatyr_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LegashiSatyr_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6200, 1, "LegashiSatyr_OnCombat")
RegisterUnitEvent(6200, 2, "LegashiSatyr_OnLeaveCombat")
RegisterUnitEvent(6200, 3, "LegashiSatyr_OnKilledTarget")
RegisterUnitEvent(6200, 4, "LegashiSatyr_OnDied")