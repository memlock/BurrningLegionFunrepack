--[[ Hellfire Peninsula -- Bonechewer Scavenger.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 23th, 2008. ]]

function Scavenger_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("Scavenger_Spell", 5000, 0)
end

function Scavenger_Spell(pUnit,Event)
	pUnit:FullCastSpellOnTarget(13398,pUnit:GetClosestPlayer())
end

function Scavenger_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Scavenger_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(18952, 1, "Scavenger_OnEnterCombat")
RegisterUnitEvent(18952, 2, "Scavenger_OnLeaveCombat")
RegisterUnitEvent(18952, 4, "Scavenger_OnDied")