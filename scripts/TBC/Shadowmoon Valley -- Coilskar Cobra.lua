--[[ Shadowmoon Valley -- Coilskar Cobra.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 24th, 2008. ]]

function Cobra_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("Cobra_Spell", 11000, 0)
end

function Cobra_Spell(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38030,pUnit:GetClosestPlayer())
end

function Cobra_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Cobra_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end
RegisterUnitEvent(19784, 1, "Cobra_OnEnterCombat")
RegisterUnitEvent(19784, 2, "Cobra_OnLeaveCombat")
RegisterUnitEvent(19784, 4, "Cobra_OnDied")