--[[ Shadowmoon Valley -- Illidari Dreadlord.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, August, 3th, 2008. ]]

function IDreadlord_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("IDreadlord_PsychicScream", 23000, 0)
	pUnit:RegisterEvent("IDreadlord_MindBlast", 7000, 0)
	pUnit:RegisterEvent("IDreadlord_Sleep", 50000, 0)
end

function IDreadlord_PsychicScream(pUnit,Event)
	pUnit:FullCastSpellOnTarget(13704,pUnit:GetClosestPlayer())
end

function IDreadlord_MindBlast(pUnit,Event)
	pUnit:FullCastSpellOnTarget(17287,pUnit:GetClosestPlayer())
end

function IDreadlord_Sleep(pUnit,Event)
	pUnit:FullCastSpellOnTarget(12098,pUnit:GetClosestPlayer())
end

function IDreadlord_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function IDreadlord_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end


RegisterUnitEvent(21166, 1, "IDreadlord_OnEnterCombat")
RegisterUnitEvent(21166, 2, "IDreadlord_OnLeaveCombat")
RegisterUnitEvent(21166, 4, "IDreadlord_OnDied")