--[[ Thousand Needles -- Scorpid Reaver.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function ScorpidReaver_OnCombat(Unit, Event)
Unit:RegisterEvent("ScorpidReaver_Cleave", 4000, 0)
end

function ScorpidReaver_Cleave(pUnit, Event) 
pUnit:CastSpell(40505) 
end

function ScorpidReaver_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ScorpidReaver_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ScorpidReaver_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4140, 1, "ScorpidReaver_OnCombat")
RegisterUnitEvent(4140, 2, "ScorpidReaver_OnLeaveCombat")
RegisterUnitEvent(4140, 3, "ScorpidReaver_OnKilledTarget")
RegisterUnitEvent(4140, 4, "ScorpidReaver_OnDied")