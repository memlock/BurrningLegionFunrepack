--[[ Hellfire Peninsula -- Bonechewer Riding Wolf.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 23th, 2008. ]]

function BCRW_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("BCRW_Howl", 30000, 0)
	pUnit:RegisterEvent("BCRW_Bite", 120000, 0)
end

function BCRW_Howl(pUnit,Event)
	pUnit:FullCastSpellOnTarget(3149,pUnit:GetClosestPlayer())
end

function BCRW_Bite(pUnit,Event)
	pUnit:FullCastSpellOnTarget(16460,pUnit:GetClosestPlayer())
end

function BCRW_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function BCRW_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(18706, 1, "BCRW_OnEnterCombat")
RegisterUnitEvent(18706, 2, "BCRW_OnLeaveCombat")
RegisterUnitEvent(18706, 4, "BCRW_OnDied")