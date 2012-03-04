--[[ Shadowmoon Valley -- Illidari Watcher.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, August, 10th, 2008. ]]

function IWatcher_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("IWatcher_MStrike", 35000, 0)
end

function IWatcher_MStrike(pUnit,Event)
	pUnit:FullCastSpellOnTarget(32736,pUnit:GetClosestPlayer())
end

function IWatcher_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function IWatcher_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(22093, 1, "IWatcher_OnEnterCombat")
RegisterUnitEvent(22093, 2, "IWatcher_OnLeaveCombat")
RegisterUnitEvent(22093, 4, "IWatcher_OnDied")