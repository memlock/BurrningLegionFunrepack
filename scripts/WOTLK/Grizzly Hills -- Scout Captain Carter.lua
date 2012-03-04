--[[ Grizzly Hills -- Scout Captain Carter.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function ScoutCaptainCarter_OnCombat(Unit, Event)
Unit:RegisterEvent("ScoutCaptainCarter_DebilitatingStrike", 7000, 0)
end

function ScoutCaptainCarter_DebilitatingStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(38621, pUnit:GetMainTank()) 
end

function ScoutCaptainCarter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ScoutCaptainCarter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ScoutCaptainCarter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27783, 1, "ScoutCaptainCarter_OnCombat")
RegisterUnitEvent(27783, 2, "ScoutCaptainCarter_OnLeaveCombat")
RegisterUnitEvent(27783, 3, "ScoutCaptainCarter_OnKilledTarget")
RegisterUnitEvent(27783, 4, "ScoutCaptainCarter_OnDied")