--[[ Durotar -- Felweaver Scornn.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function FelweaverScornn_OnCombat(Unit, Event)
Unit:RegisterEvent("FelweaverScornn_ShadowBolt", 8000, 0)
end

function FelweaverScornn_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9613, pUnit:GetMainTank()) 
end

function FelweaverScornn_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FelweaverScornn_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FelweaverScornn_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5822, 1, "FelweaverScornn_OnCombat")
RegisterUnitEvent(5822, 2, "FelweaverScornn_OnLeaveCombat")
RegisterUnitEvent(5822, 3, "FelweaverScornn_OnKilledTarget")
RegisterUnitEvent(5822, 4, "FelweaverScornn_OnDied")