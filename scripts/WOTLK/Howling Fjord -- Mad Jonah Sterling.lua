--[[ Howling Fjord -- Mad Jonah Sterling.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 4th, 2009. ]]


function MadJonahSterling_OnCombat(Unit, Event)
Unit:RegisterEvent("MadJonahSterling_WildlyFlailing", 6000, 0)
end

function MadJonahSterling_WildlyFlailing(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50188, pUnit:GetMainTank()) 
end

function MadJonahSterling_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MadJonahSterling_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MadJonahSterling_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24742, 1, "MadJonahSterling_OnCombat")
RegisterUnitEvent(24742, 2, "MadJonahSterling_OnLeaveCombat")
RegisterUnitEvent(24742, 3, "MadJonahSterling_OnKilledTarget")
RegisterUnitEvent(24742, 4, "MadJonahSterling_OnDied")