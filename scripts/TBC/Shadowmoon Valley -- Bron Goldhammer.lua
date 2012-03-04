--[[ Shadowmoon Valley -- Bron Goldhammer.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 23th, 2008. ]]

function Bron_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("Bron_ThrowHammer", 15000, 0)
end

function Bron_ThrowHammer(pUnit,Event)
	pUnit:FullCastSpellOnTarget(33822,pUnit:GetClosestPlayer())
end

function Bron_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Bron_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(19395, 1, "Bron_OnEnterCombat")
RegisterUnitEvent(19395, 2, "Bron_OnLeaveCombat")
RegisterUnitEvent(19395, 4, "Bron_OnDied")