--[[ The Barrens -- Ambassador Bloodrage.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]


function AmbassadorBloodrage_OnCombat(Unit, Event)
Unit:RegisterEvent("AmbassadorBloodrage_Shadowbolt", 8000, 0)
end

function AmbassadorBloodrage_Shadowbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9613, pUnit:GetMainTank()) 
end

function AmbassadorBloodrage_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AmbassadorBloodrage_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AmbassadorBloodrage_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(7895, 1, "AmbassadorBloodrage_OnCombat")
RegisterUnitEvent(7895, 2, "AmbassadorBloodrage_OnLeaveCombat")
RegisterUnitEvent(7895, 3, "AmbassadorBloodrage_OnKilledTarget")
RegisterUnitEvent(7895, 4, "AmbassadorBloodrage_OnDied")