--[[ Hellfire Peninsula -- Bonestripper Buzzard.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 23th, 2008. ]]

function Buzzard_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("Buzzard_Spell", 5000, 0)
end

function Buzzard_Spell(pUnit,Event)
	pUnit:FullCastSpellOnTarget(37012,pUnit:GetClosestPlayer())
end

function Buzzard_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Buzzard_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
	pUnit:CastSpell(33985)
end

RegisterUnitEvent(16972, 1, "Buzzard_OnEnterCombat")
RegisterUnitEvent(16972, 2, "Buzzard_OnLeaveCombat")
RegisterUnitEvent(16972, 4, "Buzzard_Death")