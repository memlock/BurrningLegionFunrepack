--[[ The Barrens -- Bristleback Water Seeker.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function BristlebackWaterSeeker_OnCombat(Unit, Event)
Unit:RegisterEvent("BristlebackWaterSeeker_FrostNova", 8000, 0)
end

function BristlebackWaterSeeker_FrostNova(pUnit, Event) 
pUnit:CastSpell(12748) 
end

function BristlebackWaterSeeker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BristlebackWaterSeeker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BristlebackWaterSeeker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3260, 1, "BristlebackWaterSeeker_OnCombat")
RegisterUnitEvent(3260, 2, "BristlebackWaterSeeker_OnLeaveCombat")
RegisterUnitEvent(3260, 3, "BristlebackWaterSeeker_OnKilledTarget")
RegisterUnitEvent(3260, 4, "BristlebackWaterSeeker_OnDied")