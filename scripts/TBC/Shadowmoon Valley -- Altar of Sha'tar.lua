--[[ Shadowmoon Valley -- AltarOfSha'tar

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 16th, 2008. ]]

function AltarOfShatar_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("AltarOfShatar_Net", 20000, 0)
end

function AltarofShatar_Net(pUnit,Event)
	pUnit:FullCastSpellOnTarget(12024,pUnit:GetClosestPlayer())
end

function AltarofShatar_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function AltarofShatar_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (21986, 1, "Alandien_OnEnterCombat")
RegisterUnitEvent (21986, 2, "Alandien_OnLeaveCombat")
RegisterUnitEvent (21986, 4, "Alandien_OnDied")