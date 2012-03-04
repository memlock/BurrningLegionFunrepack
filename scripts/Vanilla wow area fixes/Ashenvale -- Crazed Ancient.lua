--[[ Ashenvale -- Crazed Ancient.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function CrazedAncient_OnCombat(Unit, Event)
Unit:RegisterEvent("CrazedAncient_CurseofThorns", 3000, 2)
end

function CrazedAncient_CurseofThorns(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6909, pUnit:GetMainTank()) 
end

function CrazedAncient_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CrazedAncient_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CrazedAncient_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3834, 1, "CrazedAncient_OnCombat")
RegisterUnitEvent(3834, 2, "CrazedAncient_OnLeaveCombat")
RegisterUnitEvent(3834, 3, "CrazedAncient_OnKilledTarget")
RegisterUnitEvent(3834, 4, "CrazedAncient_OnDied")