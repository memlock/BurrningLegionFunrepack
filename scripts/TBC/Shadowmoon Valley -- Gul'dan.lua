--[[ Shadowmoon Valley -- Gul'dan.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, August, 3th, 2008. ]]

function Guldan_Channel(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:CastSpell(35996)
end

function Guldan_Start(pUnit, Event)
	pUnit:RegisterEvent("Guldan_Channel", 1000, 0)
end

RegisterUnitEvent(17008, 6, "Guldan_Start")