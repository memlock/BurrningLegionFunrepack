--[[ Netherstorm -- Fel Imp.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 29th, 2008. ]]

function Imp_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Imp_Bolt",2000,0)
end

function Imp_Bolt(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36227,pUnit:GetClosestPlayer())
end

function Imp_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Imp_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (21135, 1, "Imp_OnEnterCombat")
RegisterUnitEvent (21135, 2, "Imp_OnLeaveCombat")
RegisterUnitEvent (21135, 4, "Imp_OnDied")
