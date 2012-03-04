--[[ Shadowmoon Valley -- Illidari Jailor.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, August, 3th, 2008. ]]

function IJailor_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("IJailor_FelShackles", 24000, 0)
end

function IJailor_FelShackles(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38051,pUnit:GetClosestPlayer())
end

function IJailor_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function IJailor_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21520, 1, "IJailor_OnEnterCombat")
RegisterUnitEvent(21520, 2, "IJailor_OnLeaveCombat")
RegisterUnitEvent(21520, 4, "IJailor_OnDied")