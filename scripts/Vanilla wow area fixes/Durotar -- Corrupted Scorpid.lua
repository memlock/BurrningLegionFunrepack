--[[ Durotar -- Corrupted Scorpid.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function CorruptedScorpid_OnCombat(Unit, Event)
Unit:RegisterEvent("CorruptedScorpid_NoxiousCatalyst", 10000, 0)
end

function CorruptedScorpid_NoxiousCatalyst(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5413, pUnit:GetMainTank()) 
end

function CorruptedScorpid_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CorruptedScorpid_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CorruptedScorpid_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3226, 1, "CorruptedScorpid_OnCombat")
RegisterUnitEvent(3226, 2, "CorruptedScorpid_OnLeaveCombat")
RegisterUnitEvent(3226, 3, "CorruptedScorpid_OnKilledTarget")
RegisterUnitEvent(3226, 4, "CorruptedScorpid_OnDied")