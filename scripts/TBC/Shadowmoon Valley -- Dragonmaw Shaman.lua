--[[ Shadowmoon Valley -- Dragonmaw Shaman.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 30th, 2008. ]]

function DShaman_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("DShaman_LShield", 20000, 0)
	pUnit:RegisterEvent("DShaman_Bloodlust", 33000, 0)
end

function DShaman_LShield(pUnit,Event)
	pUnit:CastSpell(12550)
end

function DShaman_Bloodlust(pUnit,Event)
	pUnit:CastSpell(6742)
end

function DShaman_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

function DShaman_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21720, 1, "DShaman_OnEnterCombat")
RegisterUnitEvent(21720, 2, "DShaman_OnLeaveCombat")
RegisterUnitEvent(21720, 4, "DShaman_OnDied")