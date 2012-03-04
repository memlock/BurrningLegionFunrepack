--[[ Ashenvale -- Withered Ancient.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function WitheredAncient_OnCombat(Unit, Event)
Unit:RegisterEvent("WitheredAncient_CurseofThorns", 8000, 0)
end

function WitheredAncient_CurseofThorns(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6909, pUnit:GetMainTank()) 
end

function WitheredAncient_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WitheredAncient_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WitheredAncient_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3919, 1, "WitheredAncient_OnCombat")
RegisterUnitEvent(3919, 2, "WitheredAncient_OnLeaveCombat")
RegisterUnitEvent(3919, 3, "WitheredAncient_OnKilledTarget")
RegisterUnitEvent(3919, 4, "WitheredAncient_OnDied")