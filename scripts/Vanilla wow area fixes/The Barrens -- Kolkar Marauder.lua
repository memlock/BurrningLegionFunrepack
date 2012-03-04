--[[ The Barrens -- Kolkar Marauder.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function KolkarMarauder_OnCombat(Unit, Event)
Unit:RegisterEvent("KolkarMarauder_Strike", 6000, 0)
end

function KolkarMarauder_Strike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11976, pUnit:GetMainTank()) 
end

function KolkarMarauder_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function KolkarMarauder_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function KolkarMarauder_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3275, 1, "KolkarMarauder_OnCombat")
RegisterUnitEvent(3275, 2, "KolkarMarauder_OnLeaveCombat")
RegisterUnitEvent(3275, 3, "KolkarMarauder_OnKilledTarget")
RegisterUnitEvent(3275, 4, "KolkarMarauder_OnDied")