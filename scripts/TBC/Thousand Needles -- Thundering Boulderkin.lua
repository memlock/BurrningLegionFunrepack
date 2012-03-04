--[[ Thousand Needles -- Thundering Boulderkin.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function ThunderingBoulderkin_OnCombat(Unit, Event)
Unit:RegisterEvent("ThunderingBoulderkin_GroundTremor", 10000, 0)
end

function ThunderingBoulderkin_GroundTremor(pUnit, Event) 
pUnit:CastSpell(6524) 
end

function ThunderingBoulderkin_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ThunderingBoulderkin_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ThunderingBoulderkin_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4120, 1, "ThunderingBoulderkin_OnCombat")
RegisterUnitEvent(4120, 2, "ThunderingBoulderkin_OnLeaveCombat")
RegisterUnitEvent(4120, 3, "ThunderingBoulderkin_OnKilledTarget")
RegisterUnitEvent(4120, 4, "ThunderingBoulderkin_OnDied")