--[[ Netherstorm -- Legion Fel Cannon.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, August, 2th, 2008. ]]

function Cannon_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Cannon_Blast",3000,0)
end

function Cannon_Blast(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36238,pUnit:GetClosestPlayer())
end

function Cannon_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Cannon_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (21233, 1, "Cannon_OnEnterCombat")
RegisterUnitEvent (21233, 2, "Cannon_OnLeaveCombat")
RegisterUnitEvent (21233, 4, "Cannon_OnDied")