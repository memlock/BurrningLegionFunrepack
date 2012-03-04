--[[ Netherstorm -- Negatron.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 29th, 2008. ]]

function Negatron_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Negatron_Charge",1000,(1))
    pUnit:RegisterEvent("Negatron_Demolish",1000,0)
    pUnit:RegisterEvent("Negatron_Quake",1000,0)
    pUnit:RegisterEvent("Negatron_Enrage",1000,0)
end

function Negatron_Charge(pUnit,Event)
    pUnit:FullCastSpellOnTarget(35570,pUnit:GetClosestPlayer())
end

function Negatron_Demolish(pUnit,Event)
    pUnit:FullCastSpellOnTarget(34625,pUnit:GetClosestPlayer())
end

function Negatron_Quake(pUnit,Event)
    pUnit:FullCastSpellOnTarget(35565,pUnit:GetClosestPlayer())
end

function Negatron_Enrage(pUnit,Event)
    pUnit:CastSpell(34624)
end

function Negatron_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Negatron_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (19851, 1, "Negatron_OnEnterCombat")
RegisterUnitEvent (19851, 2, "Negatron_OnLeaveCombat")
RegisterUnitEvent (19851, 4, "Negatron_OnDied")