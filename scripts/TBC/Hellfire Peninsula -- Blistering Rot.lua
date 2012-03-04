--[[ Hellfire Peninsula -- Blistering Rot.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 23th, 2008. ]]

function BR_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("BR_Spell", 120000, 0)
end

function BR_Spell(pUnit,Event)
	pUnit:FullCastSpellOnTarget(32722,pUnit:GetClosestPlayer())
end

function BR_OnEnterCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function BR_OnEnterCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(16901, 1, "BR_OnEnterCombat")
RegisterUnitEvent(16901, 2, "BR_OnLeaveCombat")
RegisterUnitEvent(16901, 4, "BR_OnDied")