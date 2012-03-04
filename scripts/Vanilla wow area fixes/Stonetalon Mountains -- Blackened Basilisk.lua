--[[ Stonetalon Mountains -- Blackened Basilisk.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function BlackenedBasilisk_OnCombat(Unit, Event)
Unit:RegisterEvent("BlackenedBasilisk_CrystallineSlumber", 15000, 1)
end

function BlackenedBasilisk_CrystallineSlumber(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3636, pUnit:GetMainTank()) 
end

function BlackenedBasilisk_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BlackenedBasilisk_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BlackenedBasilisk_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4044, 1, "BlackenedBasilisk_OnCombat")
RegisterUnitEvent(4044, 2, "BlackenedBasilisk_OnLeaveCombat")
RegisterUnitEvent(4044, 3, "BlackenedBasilisk_OnKilledTarget")
RegisterUnitEvent(4044, 4, "BlackenedBasilisk_OnDied")