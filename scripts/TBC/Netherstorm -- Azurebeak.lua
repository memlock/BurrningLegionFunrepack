--[[ Netherstorm -- Azurebeak.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 23th, 2008. ]]

function Azure_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Azure_Screech", 1000,0)
end

function Azure_Screech(pUnit,Event)
    pUnit:FullCastSpellOnTarget(31273, pUnit:GetClosestPlayer())
end

function Azure_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Azure_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (21005, 1, "Azure_OnEnterCombat")
RegisterUnitEvent (21005, 2, "Azure_OnLeaveCombat")
RegisterUnitEvent (21005, 4, "Azure_OnDied")