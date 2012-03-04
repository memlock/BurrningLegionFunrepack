--[[ Netherstorm -- Ambassador's Honor Guard.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 21th, 2008. ]]

function Honor_OnEnterCombat(pUnit, Event)
    pUnit:RegisterEvent("Honor_Cleave",1000,0)
end

function Honor_Cleave(pUnit, Event)
    pUnit:FullCastSpellOnTarget(15284,pUnit:GetClosestPlayer())
end

function Honor_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Honor_OnDied(pUnit,Event)
    pUnit:RemoveEvents()
end

RegisterUnitEvent (20199, 1, "Honor_OnEnterCombat")
RegisterUnitEvent (20199, 2, "Honor_OnLeaveCombat")
RegisterUnitEvent (20199, 4, "Honor_OnDied")