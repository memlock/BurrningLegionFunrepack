--[[ Shadowmoon Valley -- Akama.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 16th, 2008. ]]

function Akama_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("Akama_Lightning", 1540, 0)
end

function Akama_Lightning(pUnit,Event)
	pUnit:FullCastSpellOnTarget(39945,pUnit:GetClosestPlayer())
end

function Akama_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Akama_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (21700, 1, "Akama_OnEnterCombat")
RegisterUnitEvent (21700, 2, "Akama_OnLeaveCombat")
RegisterUnitEvent (21700, 4, "Akama_OnDied")