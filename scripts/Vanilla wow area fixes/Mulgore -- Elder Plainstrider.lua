--[[ Mulgore -- Elder Plainstrider.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 31th, 2008. ]]

function ElderPlainstrider_OnCombat(Unit, Event)
Unit:RegisterEvent("ElderPlainstrider_DustCloud", 20000, 0)
end

function ElderPlainstrider_DustCloud(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7272, pUnit:GetClosestPlayer()) 
end

function ElderPlainstrider_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ElderPlainstrider_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ElderPlainstrider_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2957, 1, "ElderPlainstrider_OnCombat")
RegisterUnitEvent(2957, 2, "ElderPlainstrider_OnLeaveCombat")
RegisterUnitEvent(2957, 3, "ElderPlainstrider_OnKilledTarget")
RegisterUnitEvent(2957, 4, "ElderPlainstrider_OnDied")