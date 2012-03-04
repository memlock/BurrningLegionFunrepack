--[[ Netherstorm -- Ethereum Gladiator.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 29th, 2008. ]]

function Gladiator_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Gladiator_Cleave",1000,0)
    pUnit:RegisterEvent("Gladiator_Hamstring",1000,0)
    pUnit:RegisterEvent("Gladiator_Strike",1000,0)
end

function Gladiator_Cleave(pUnit,Event)
    pUnit:FullCastSpellOnTarget(15284,pUnit:GetClosestPlayer())
end

function Gladiator_Hamstring(pUnit,Event)
    pUnit:FullCastSpellOnTarget(9080,pUnit:GetClosestPlayer())
end

function Gladiator_Strike(pUnit,Event)
    pUnit:FullCastSpellOnTarget(16856,pUnit:GetClosestPlayer())
end

function Gladiator_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Gladiator_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20854, 1, "Gladiator_OnEnterCombat")
RegisterUnitEvent (20854, 2, "Gladiator_OnEnterCombat")
RegisterUnitEvent (20854, 4, "Gladiator_OnEnterCombat")