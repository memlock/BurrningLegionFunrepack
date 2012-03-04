--[[ Terokkar Forest -- Accursed Apparition.lua

This script was written and is protected
by the GPL v2. This script was released
by Mager of the BLUA Scripting Project. 
Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- Mager, July, 27th, 2008. ]]

function AuchenaiInitiate_KnockDown(pUnit)
	pUnit:CastSpellOnTarget(37592)
end

function AuchenaiInitiate_Whirlwind(pUnit)
	pUnit:CastSpellOnTarget(38619)
end
	
function AuchenaiInitiate_OnCombat(pUnit, event)
	local cast1 = math.random(7800,12000)
	local cast2 = math.random(12000,14000)
	pUnit:RegisterEvent("AuchenaiInitiate_Whirlwind", cast1, 0)
	pUnit:RegisterEvent("AuchenaiInitiate_KnockDown", cast2, 0)
end

RegisterUnitEvent(21284, 1, "AuchenaiInitiate_OnCombat")
