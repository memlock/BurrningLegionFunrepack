--[[ Stonetalon Mountains -- Gogger Rock Keeper.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function GoggerRockKeeper_OnCombat(Unit, Event)
Unit:RegisterEvent("GoggerRockKeeper_EarthShock", 8000, 0)
end

function GoggerRockKeeper_EarthShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13281, pUnit:GetMainTank()) 
end

function GoggerRockKeeper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GoggerRockKeeper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GoggerRockKeeper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11915, 1, "GoggerRockKeeper_OnCombat")
RegisterUnitEvent(11915, 2, "GoggerRockKeeper_OnLeaveCombat")
RegisterUnitEvent(11915, 3, "GoggerRockKeeper_OnKilledTarget")
RegisterUnitEvent(11915, 4, "GoggerRockKeeper_OnDied")