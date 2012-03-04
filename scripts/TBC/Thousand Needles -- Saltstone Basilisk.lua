--[[ Thousand Needles -- Saltstone Basilisk.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function SaltstoneBasilisk_OnCombat(Unit, Event)
Unit:RegisterEvent("SaltstoneBasilisk_CrystallineSlumber", 12000, 0)
end

function SaltstoneBasilisk_CrystallineSlumber(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3636, pUnit:GetMainTank()) 
end

function SaltstoneBasilisk_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SaltstoneBasilisk_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SaltstoneBasilisk_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4147, 1, "SaltstoneBasilisk_OnCombat")
RegisterUnitEvent(4147, 2, "SaltstoneBasilisk_OnLeaveCombat")
RegisterUnitEvent(4147, 3, "SaltstoneBasilisk_OnKilledTarget")
RegisterUnitEvent(4147, 4, "SaltstoneBasilisk_OnDied")