--[[ Azshara -- Legashi Rogue.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function LegashiRogue_OnCombat(Unit, Event)
Unit:RegisterEvent("LegashiRogue_Gouge", 10000, 0)
end

function LegashiRogue_Gouge(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12540, pUnit:GetMainTank()) 
end

function LegashiRogue_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LegashiRogue_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LegashiRogue_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6201, 1, "LegashiRogue_OnCombat")
RegisterUnitEvent(6201, 2, "LegashiRogue_OnLeaveCombat")
RegisterUnitEvent(6201, 3, "LegashiRogue_OnKilledTarget")
RegisterUnitEvent(6201, 4, "LegashiRogue_OnDied")