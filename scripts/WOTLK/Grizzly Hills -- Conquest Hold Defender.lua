--[[ Grizzly Hills -- Conquest Hold Defender.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function ConquestHoldDefender_OnCombat(Unit, Event)
Unit:RegisterEvent("ConquestHoldDefender_HeroicStrike", 5000, 0)
end

function ConquestHoldDefender_HeroicStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(29426, pUnit:GetMainTank()) 
end

function ConquestHoldDefender_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ConquestHoldDefender_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ConquestHoldDefender_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27748, 1, "ConquestHoldDefender_OnCombat")
RegisterUnitEvent(27748, 2, "ConquestHoldDefender_OnLeaveCombat")
RegisterUnitEvent(27748, 3, "ConquestHoldDefender_OnKilledTarget")
RegisterUnitEvent(27748, 4, "ConquestHoldDefender_OnDied")