--[[ Netherstorm -- Master Daellis Dawnstrike.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, August, 2th, 2008. ]]

function Master_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Master_Arrow",1000,0)
    pUnit:RegisterEvent("Master_Clip",1000,0)
    pUnit:RegisterEvent("Master_Shoot",1000,0)
end

function Master_Arrow(pUnit,Event)
    pUnit:FullCastSpellOnTarget(35964,pUnit:GetClosestPlayer())
end

function Master_Clip(pUnit,Event)
    pUnit:FullCastSpellOnTarget(35963,pUnit:GetClosestPlayer())
end

function Master_Shoot(pUnit,Event)
    pUnit:FullCastSpellOnTarget(6660,pUnit:GetClosestPlayer())
end

function Master_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Master_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (19705, 1, "Master_OnEnterCombat")
RegisterUnitEvent (19705, 2, "Master_OnLeaveCombat")
RegisterUnitEvent (19705, 4, "Master_OnDied")