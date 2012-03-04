--[[ Shadowmoon Valley -- Borak, Son of Oronok.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 23th, 2008. ]]

function Borak_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("Borak_SliceAndDice", 15000, 0)
	pUnit:RegisterEvent("Borak_Eviscerate", 5000, 0)
end

function Borak_SliceAndDice(pUnit,Event)
	pUnit:FullCastSpellOnTarget(30470,pUnit:GetClosestPlayer())
end

function Borak_Eviscerate(pUnit,Event)
	pUnit:FullCastSpellOnTarget(27611,pUnit:GetClosestPlayer())
end

function Borak_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Borak_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21245, 1, "Borak_OnEnterCombat")
RegisterUnitEvent(21245, 2, "Borak_OnLeaveCombat")
RegisterUnitEvent(21245, 4, "Borak_OnDied")