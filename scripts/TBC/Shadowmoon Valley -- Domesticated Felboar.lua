--[[ Shadowmoon Valley -- Domesticated Felboar.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 28th, 2008. ]]

function DFelboar_OnEnterCombat(pUnit,Event)
	pUnit:CastSpell(36462)
	pUnit:FullCastSpellOnTarget(22120,pUnit:GetClosestPlayer())
end

function DFelboar_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

function DFelboar_LeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21195, 1, "DFelboar_OnEnterCombat")
RegisterUnitEvent(21195, 2, "DFelboar_LeaveCombat")
RegisterUnitEvent(21195, 4, "DFelboar_OnDied")