--[[ Shadowmoon Valley -- Asghar.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 17th, 2008. ]]

function Asghar_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("Asghar_Cleave", 3300, 0)
	pUnit:RegisterEvent("Asghar_DarkMending", 15000, 0)
end

function Asghar_Cleave(pUnit,Event)
	pUnit:FullCastSpellOnTarget(15496,pUnit:GetClosestPlayer())
end

function Asghar_DarkMending(pUnit,Event)
	pUnit:CastSpell(16588)
end

function Asghar_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Asghar_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (22025, 1, "Asgarhar_OnEnterCombat")
RegisterUnitEvent (22025, 2, "Asgarhar_OnLeaveCombat")
RegisterUnitEvent (22025, 4, "Asgarhar_OnDied")