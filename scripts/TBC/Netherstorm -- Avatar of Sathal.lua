--[[ Netherstorm -- Avatar of Sathal.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 23th, 2008. ]]

function Avatar_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Avatar_Rain",1000,0)
    pUnit:RegisterEvent("Avatar_Bolt",3000,0)
end

function Avatar_Rain(pUnit,Event)
    pUnit:FullCastSpellOnTarget(34017, pUnit:GetClosestPlayer())
end

function Avatar_Bolt(pUnit,Event)
    pUnit:FullCastSpellOnTarget(12471, pUnit:GetClosestPlayer())
end

function Avatar_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Avatar_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (21925, 1, "Avatar_OnEnterCombat")
RegisterUnitEvent (21925, 2, "Avatar_OnLeaveCombat")
RegisterUnitEvent (21925, 4, "Avatar_OnDied")
