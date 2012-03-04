--[[ Stonetalon Mountains -- Singed Basilisk.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function SingedBasilisk_OnCombat(Unit, Event)
Unit:RegisterEvent("SingedBasilisk_CrystallineSlumber", 15000, 1)
end

function SingedBasilisk_CrystallineSlumber(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3636, pUnit:GetMainTank()) 
end

function SingedBasilisk_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SingedBasilisk_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SingedBasilisk_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4042, 1, "SingedBasilisk_OnCombat")
RegisterUnitEvent(4042, 2, "SingedBasilisk_OnLeaveCombat")
RegisterUnitEvent(4042, 3, "SingedBasilisk_OnKilledTarget")
RegisterUnitEvent(4042, 4, "SingedBasilisk_OnDied")