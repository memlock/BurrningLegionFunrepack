--[[ Tanaris -- Scorpid Tail Lasher.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function ScorpidTailLasher_OnCombat(Unit, Event)
Unit:RegisterEvent("ScorpidTailLasher_Lash", 8000, 0)
end

function ScorpidTailLasher_Lash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6607, pUnit:GetMainTank()) 
end

function ScorpidTailLasher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ScorpidTailLasher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ScorpidTailLasher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5423, 1, "ScorpidTailLasher_OnCombat")
RegisterUnitEvent(5423, 2, "ScorpidTailLasher_OnLeaveCombat")
RegisterUnitEvent(5423, 3, "ScorpidTailLasher_OnKilledTarget")
RegisterUnitEvent(5423, 4, "ScorpidTailLasher_OnDied")