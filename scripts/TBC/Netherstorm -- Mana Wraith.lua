--[[ Netherstorm -- Mana Wraith.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, August, 2th, 2008. ]]

function Wraith_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Wraith_Mana",2000,0)
end

function Wraith_Mana(pUnit,Event)
    pUnit:FullCastSpellOnTarget(29054,pUnit:GetClosestPlayer())
end

function Wraith_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Wraith_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (18864, 1, "Wraith_OnEnterCombat")
RegisterUnitEvent (18864, 2, "Wraith_OnLeaveCombat")
RegisterUnitEvent (18864, 4, "Wraith_OnDied")