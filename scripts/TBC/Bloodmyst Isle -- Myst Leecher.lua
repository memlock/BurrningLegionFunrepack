--[[ Bloodmyst Isle -- Myst Leecher.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 29th, 2008. ]]

function MystLeecher_OnCombat(Unit, Event)
Unit:RegisterEvent("MystLeecher_LeechPoison", 10000, 0)
end

function MystLeecher_LeechPoison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(31288, pUnit:GetMainTank()) 
end

function MystLeecher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MystLeecher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MystLeecher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17523, 1, "MystLeecher_OnCombat")
RegisterUnitEvent(17523, 2, "MystLeecher_OnLeaveCombat")
RegisterUnitEvent(17523, 3, "MystLeecher_OnKilledTarget")
RegisterUnitEvent(17523, 4, "MystLeecher_OnDied")