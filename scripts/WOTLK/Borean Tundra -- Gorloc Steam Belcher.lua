--[[ Borean Tundra -- Gorloc Steam Belcher.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function GorlocSteamBelcher_OnCombat(Unit, Event)
Unit:RegisterEvent("GorlocSteamBelcher_BelchBlast", 7000, 0)
end

function GorlocSteamBelcher_BelchBlast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50538, pUnit:GetMainTank()) 
end

function GorlocSteamBelcher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GorlocSteamBelcher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GorlocSteamBelcher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25687, 1, "GorlocSteamBelcher_OnCombat")
RegisterUnitEvent(25687, 2, "GorlocSteamBelcher_OnLeaveCombat")
RegisterUnitEvent(25687, 3, "GorlocSteamBelcher_OnKilledTarget")
RegisterUnitEvent(25687, 4, "GorlocSteamBelcher_OnDied")