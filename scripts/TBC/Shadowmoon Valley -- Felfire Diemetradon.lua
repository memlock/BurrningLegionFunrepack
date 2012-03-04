--[[ Shadowmoon Valley -- Felfire Diemetradon.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 30th, 2008. ]]

function FDiemetradon_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("FDiemetradon_Spell", 40000, 0)
end

function FDiemetradon_Spell(pUnit,Event)
	pUnit:FullCastSpellOnTarget(37941,pUnit:GetClosestPlayer())
end

function FDiemetradon_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function FDiemetradon_OnDeath(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21408, 1, "FDiemetradon_OnEnterCombat")
RegisterUnitEvent(21408, 2, "FDiemetradon_OnLeaveCombat")
RegisterUnitEvent(21408, 4, "FDiemetradon_OnDeath")