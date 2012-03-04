--[[ Netherstorm -- Ambassador Solannas.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 21th, 2008. ]]

function Ambassador_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Ambassador_Fireball", 3000, 0)
end

function Ambassador_Fireball(pUnit,Event)
    pUnit:FullCastSpellOnTarget(9053,pUnit:GetClosestPlayer())
end

function Ambassador_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Ambassador_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20163, 1, "Ambassador_OnEnterCombat")
RegisterUnitEvent (20163, 2, "Ambassador_OnLeaveCombat")
RegisterUnitEvent (20163, 4, "Ambassador_OnDied")
