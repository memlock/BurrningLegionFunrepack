--[[ Netherstorm -- Gan'arg Warp-Tinker.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, August, 2th, 2008. ]]

function Tinker_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Tinker_Bomb",2000,0)
    pUnit:RegisterEvent("Tinker_Steal",1000,0)
end

function Tinker_Bomb(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36846,pUnit:GetClosestPlayer())
end

function Tinker_Steal(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36208,pUnit:GetClosestPlayer())
end

function Tinker_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Tinker_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20285, 1, "Tinker_OnEnterCombat")
RegisterUnitEvent (20285, 2, "Tinker_OnLeaveCombat")
RegisterUnitEvent (20285, 4, "Tinker_OnDied")