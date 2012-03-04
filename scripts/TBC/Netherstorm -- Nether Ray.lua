--[[ Netherstorm -- Nether Ray.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 29th, 2008. ]]

function Ray_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Ray_Drain",1000,0)
    pUnit:RegisterEvent("Ray_Shock",1000,0)
    pUnit:RegisterEvent("Ray_Sting",1000,0)
end

function Ray_Drain(pUnit,Event)
    pUnit:FullCastSpellOnTarget(17008,pUnit:GetClosestPlayer())
end

function Ray_Shock(pUnit,Event)
    pUnit:FullCastSpellOnTarget(35334,pUnit:GetClosestPlayer())
end

function Ray_Sting(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36659,pUnit:GetClosestPlayer())
end

function Ray_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Ray_OnDied(Unit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (18880, 1, "Ray_OnEnterCombat")
RegisterUnitEvent (18880, 2, "Ray_OnLeaveCombat")
RegisterUnitEvent (18880, 4, "Ray_OnDied")