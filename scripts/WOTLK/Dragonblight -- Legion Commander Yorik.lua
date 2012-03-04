--[[ Dragonblight -- Legion Commander Yorik.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function LegionCommanderYorik_OnCombat(Unit, Event)
Unit:RegisterEvent("LegionCommanderYorik_Shoot", 5000, 0)
end

function LegionCommanderYorik_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15620, pUnit:GetMainTank()) 
end

function LegionCommanderYorik_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LegionCommanderYorik_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LegionCommanderYorik_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27857, 1, "LegionCommanderYorik_OnCombat")
RegisterUnitEvent(27857, 2, "LegionCommanderYorik_OnLeaveCombat")
RegisterUnitEvent(27857, 3, "LegionCommanderYorik_OnKilledTarget")
RegisterUnitEvent(27857, 4, "LegionCommanderYorik_OnDied")