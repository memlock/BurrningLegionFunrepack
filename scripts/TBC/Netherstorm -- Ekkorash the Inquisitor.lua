--[[ Netherstorm -- Ekkorash the Inquisitor.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 26th, 2008. ]]

function Inquisitor_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Inquisitor_Weakness",1000,0)
    pUnit:RegisterEvent("Inquisitor_Flamestrike",3000,0)
end

function Inquisitor_Weakness(pUnit,Event)
    pUnit:FullCastSpellOnTarget(11980,pUnit:GetClosestPlayer())
end

function Inquisitor_Flamestrike(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36040,pUnit:GetClosestPlayer())
end

function Inquisitor_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Inquisitor_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (19493, 1, "Inquisitor_OnEnterCombat")
RegisterUnitEvent (19493, 2, "Inquisitor_OnEnterCombat")
RegisterUnitEvent (19493, 4, "Inquisitor_OnEnterCombat")