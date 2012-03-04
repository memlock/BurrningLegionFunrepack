--[[ Hellfire Peninsula -- Avruu.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 18th, 2008. ]]

function Avruu_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("Avruu_Darkness", 18000, 0)
end

function Avruu_Darkness(pUnit,Event)
	pUnit:FullCastSpellOnTarget(34112,pUnit:GetClosestPlayer())
end

function Avruu_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Avruu_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (17084, 1, "Avruu_OnEnterCombat")
RegisterUnitEvent (17084, 2, "Avruu_OnLeaveCombat")
RegisterUnitEvent (17084, 4, "Avruu_OnDied")