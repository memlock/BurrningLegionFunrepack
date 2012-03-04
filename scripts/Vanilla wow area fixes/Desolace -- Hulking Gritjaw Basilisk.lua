--[[ Desolace -- Hulking Gritjaw Basilisk.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function HulkingGritjawBasilisk_OnCombat(Unit, Event)
Unit:RegisterEvent("HulkingGritjawBasilisk_CrystallineSlumber", 15000, 1)
end

function HulkingGritjawBasilisk_CrystallineSlumber(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3636, pUnit:GetMainTank()) 
end

function HulkingGritjawBasilisk_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HulkingGritjawBasilisk_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HulkingGritjawBasilisk_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4729, 1, "HulkingGritjawBasilisk_OnCombat")
RegisterUnitEvent(4729, 2, "HulkingGritjawBasilisk_OnLeaveCombat")
RegisterUnitEvent(4729, 3, "HulkingGritjawBasilisk_OnKilledTarget")
RegisterUnitEvent(4729, 4, "HulkingGritjawBasilisk_OnDied")