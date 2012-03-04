--[[ Dragonblight -- Legion Commander Tyralion.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function LegionCommanderTyralion_OnCombat(Unit, Event)
Unit:RegisterEvent("LegionCommanderTyralion_Shoot", 5000, 0)
end

function LegionCommanderTyralion_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15620, pUnit:GetMainTank()) 
end

function LegionCommanderTyralion_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LegionCommanderTyralion_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LegionCommanderTyralion_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27844, 1, "LegionCommanderTyralion_OnCombat")
RegisterUnitEvent(27844, 2, "LegionCommanderTyralion_OnLeaveCombat")
RegisterUnitEvent(27844, 3, "LegionCommanderTyralion_OnKilledTarget")
RegisterUnitEvent(27844, 4, "LegionCommanderTyralion_OnDied")