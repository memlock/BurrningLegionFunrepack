--[[ Shadowmoon Valley -- Dark Conclave Ravenguard.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 27th, 2008. ]]

function DCRavenguard_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("DCRavenguard_Enrage", 120000, 0)
	pUnit:RegisterEvent("DCRavenguard_Howl", 27000, 0)
end

function DCRavenguard_Enrage(pUnit,Event)
	pUnit:FullCastSpellOnTarget(8599,pUnit:GetClosestPlayer())
end

function DCRavenguard_Howl(pUnit,Event)
	pUnit:FullCastSpellOnTarget(23600,pUnit:GetClosestPlayer())
end

function DCRavenguard_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

function DCRavenguard_LeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(19827, 1, "DCRavenguard_OnEnterCombat")
RegisterUnitEvent(19827, 2, "DCRavenguard_LeaveCombat")
RegisterUnitEvent(19827, 4, "DCRavenguard_OnDied")