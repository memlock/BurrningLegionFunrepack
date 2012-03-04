--[[ Netherstorm -- Nether Dragon.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 29th, 2008. ]]

function Dragon_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Dragon_Presence",1000,0)
    pUnit:RegisterEvent("Dragon_Netherbreath",2500,0)
end

function Dragon_Presence(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36513,pUnit:GetClosestPlayer())
end

function Dragon_Netherbreath(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36631,pUnit:GetClosestPlayer())
end

function Dragon_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Dragon_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20332, 1, "Dragon_OnEnterCombat")
RegisterUnitEvent (20332, 2, "Dragon_OnLeaveCombat")
RegisterUnitEvent (20332, 4, "Dragon_OnDied")