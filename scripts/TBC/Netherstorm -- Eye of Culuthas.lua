--[[ Netherstorm -- Eye of Culuthas.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 29th, 2008. ]]

function Eye_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Eye_Bursts",1000,0)
end

function Eye_Bursts(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36414,pUnit:GetClosestPlayer())
end

function Eye_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Eye_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20394, 1, "Eye_OnEnterCombat")
RegisterUnitEvent (20394, 2, "Eye_OnLeaveCombat")
RegisterUnitEvent (20394, 4, "Eye_OnDied")