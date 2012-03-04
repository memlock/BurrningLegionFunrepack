--[[ Shadowmoon Valley -- Deathforge Mine.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 27th, 2008. ]]

function Dmine_OnEnterCombat(pUnit,Event)
	pUnit:GetMainTank()
	pUnit:CastSpell(5)
end

function Dmine_LeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Dmine_OnDied(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38108,pUnit:GetMainTank())
end

RegisterUnitEvent(22315, 2, "Dmine_OnEnterCombat")
RegisterUnitEvent(22315, 2, "Dmine_LeaveCombat")
RegisterUnitEvent(22315, 4, "Dmine_OnDied")