--[[ Netherstorm -- Netherstorm Agent.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, September, 29th, 2008. ]]

function Agent_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Agent_Shoot",1000,0)
end

function Agent_Shoot(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36246,pUnit:GetClosestPlayer())
end

function Agent_OnLeaveCombat(Unit,Event)
	Unit:RemoveEvents()
end

function Agent_OnDied(Unit,Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent (19541, 1, "Agent_OnEnterCombat")
RegisterUnitEvent (19541, 2, "Agent_OnLeaveCombat")
RegisterUnitEvent (19541, 4, "Agent_OnDied")