--[[ Netherstorm -- Mana Snapper.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, August, 2th, 2008. ]]

function Snapper_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Snapper_DeMaterialize",1000,0)
    pUnit:RegisterEvent("Snapper_Burn",1000,0)
end

function Snapper_DeMaterialize(pUnit,Event)
    pUnit:CastSpell(34814)
end

function Snapper_Burn(pUnit,Event)
    pUnit:FullCastSpellOnTarget(37176,pUnit:GetMainTank())
end

function Snapper_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Snapper_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (18883, 1, "Snapper_OnEnterCombat")
RegisterUnitEvent (18883, 2, "Snapper_OnLeaveCombat")
RegisterUnitEvent (18883, 4, "Snapper_OnDied")