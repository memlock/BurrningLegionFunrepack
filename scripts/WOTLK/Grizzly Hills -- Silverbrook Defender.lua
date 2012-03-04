--[[ Grizzly Hills -- Silverbrook Defender.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function SilverbrookDefender_OnCombat(Unit, Event)
Unit:RegisterEvent("SilverbrookDefender_LumberjackSlam", 8000, 0)
Unit:RegisterEvent("SilverbrookDefender_Rend", 10000, 0)
end

function SilverbrookDefender_LumberjackSlam(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52318, pUnit:GetMainTank()) 
end

function SilverbrookDefender_Rend(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12054, pUnit:GetMainTank()) 
end

function SilverbrookDefender_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SilverbrookDefender_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SilverbrookDefender_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27676, 1, "SilverbrookDefender_OnCombat")
RegisterUnitEvent(27676, 2, "SilverbrookDefender_OnLeaveCombat")
RegisterUnitEvent(27676, 3, "SilverbrookDefender_OnKilledTarget")
RegisterUnitEvent(27676, 4, "SilverbrookDefender_OnDied")