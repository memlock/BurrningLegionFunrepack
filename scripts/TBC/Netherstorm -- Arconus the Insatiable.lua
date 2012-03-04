--[[ Netherstorm -- Arconus the Insatiable.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 21th, 2008. ]]

function Arconus_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Arconus_Shadows",10000,0)
    pUnit:RegisterEvent("Arconus_Desecration",1000,0)
end

function Arconus_Shadows(pUnit,Event)
    pUnit:CastSpell(36472)
end

function Arconus_Desecration(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36473, pUnit:GetClosestPlayer())
end

function Arconus_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Arconus_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20554, 1, "Arconus_OnEnterCombat")
RegisterUnitEvent (20554, 2, "Arconus_OnLeaveCombat")
RegisterUnitEvent (20554, 4, "Arconus_OnDied")