--[[ Shadowmoon Valley -- Deathforge Infernal.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 27th, 2008. ]]

function DInfernal_Yell(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:CastSpell(36658)
end

function DInfernal_Start(pUnit, Event)
	pUnit:RegisterEvent("DInfernal_Yell", 1000, 0)
end

RegisterUnitEvent(21316, 6, "DInfernal_Start")