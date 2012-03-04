--[[ The Barrens -- Ambassador Malcin.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]


function AmbassadorMalcin_OnCombat(Unit, Event)
Unit:RegisterEvent("AmbassadorMalcin_Shadowbolt", 8000, 0)
end

function AmbassadorMalcin_Shadowbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9613, pUnit:GetMainTank()) 
end

function AmbassadorMalcin_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AmbassadorMalcin_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AmbassadorMalcin_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12865, 1, "AmbassadorMalcin_OnCombat")
RegisterUnitEvent(12865, 2, "AmbassadorMalcin_OnLeaveCombat")
RegisterUnitEvent(12865, 3, "AmbassadorMalcin_OnKilledTarget")
RegisterUnitEvent(12865, 4, "AmbassadorMalcin_OnDied")