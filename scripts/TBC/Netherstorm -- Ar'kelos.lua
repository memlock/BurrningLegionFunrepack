--[[ Netherstorm -- Ar'kelos.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 21th, 2008, 2008. ]]

function Ark_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Ark_Explosion",1500,0)
end

function Ark_Explosion(pUnit,Event)
    pUnit:FullCastSpellOnTarget(11975, pUnit:GetClosestPlayer())
end

function Ark_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Ark_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (19494, 1, "Ark_OnEnterCombat")
RegisterUnitEvent (19494, 2, "Ark_OnLeaveCombat")
RegisterUnitEvent (19494, 4, "Ark_OnDied")
