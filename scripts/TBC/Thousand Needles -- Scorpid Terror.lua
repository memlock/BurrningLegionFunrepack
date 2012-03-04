--[[ Thousand Needles -- Scorpid Terror.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function ScorpidTerror_OnCombat(Unit, Event)
Unit:RegisterEvent("ScorpidTerror_Terrify", 10000, 0)
end

function ScorpidTerror_Terrify(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7399, pUnit:GetMainTank()) 
end

function ScorpidTerror_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ScorpidTerror_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ScorpidTerror_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4139, 1, "ScorpidTerror_OnCombat")
RegisterUnitEvent(4139, 2, "ScorpidTerror_OnLeaveCombat")
RegisterUnitEvent(4139, 3, "ScorpidTerror_OnKilledTarget")
RegisterUnitEvent(4139, 4, "ScorpidTerror_OnDied")