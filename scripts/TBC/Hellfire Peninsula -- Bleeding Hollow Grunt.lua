--[[ Hellfire Peninsula -- Bleeding Hollow Grunt.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 20th, 2008. ]]

function BHGrunt_OnEnterCombat(pUnit,Event)
	pUnit:CastSpell(8599)
	pUnit:RegisterEvent("BHGrunt_Strike", 6000, 0)
end

function BHGrunt_Strike(pUnit,Event)
	pUnit:FullCastSpellOnTarget(11976,pUnit:GetClosestPlayer())
end

function BHGrunt_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function BHGrunt_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(16871, 1, "BHGrunt_OnEnterCombat")
RegisterUnitEvent(16871, 2, "BHGrunt_OnLeaveCombat")
RegisterUnitEvent(16871, 4, "BHGrunt_OnDied")