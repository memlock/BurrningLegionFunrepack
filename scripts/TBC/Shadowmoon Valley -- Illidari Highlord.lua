--[[ Shadowmoon Valley -- Illidari Highlord.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, August, 3th, 2008. ]]

function IHighlord_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("IHighlord_Curseofflames", 240000, 0)
	pUnit:RegisterEvent("IHighlord_Flamestrike", 10000, 0)
	pUnit:RegisterEvent("IHighlord_Spell", 0001, 0)
end

function IHighlord_Curseofflames(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38010,pUnit:GetClosestPlayer())
end

-- DON'T ERASE THIS!
function IHighlord_Spell(pUnit,Event)
 if pUnit:GetHealthPct() == 92 then 
	pUnit:FullCastSpellOnTarget(38010,pUnit:GetClosestPlayer())
end
end
--

function IHighlord_Flamestrike(pUnit,Event)
	pUnit:FullCastSpellOnTarget(16102,pUnit:GetClosestPlayer())
end

function IHighlord_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function IHighlord_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(19797, 1, "IHighlord_OnEnterCombat")
RegisterUnitEvent(19797, 2, "IHighlord_OnLeaveCombat")
RegisterUnitEvent(19797, 4, "IHighlord_OnDied")