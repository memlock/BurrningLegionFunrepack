--[[ Ashenvale -- Mystlash Hydra.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function MystlashHydra_OnCombat(Unit, Event)
Unit:RegisterEvent("MystlashHydra_VenomSpit", 8000, 0)
end

function MystlashHydra_VenomSpit(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6917, pUnit:GetMainTank()) 
end

function MystlashHydra_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MystlashHydra_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MystlashHydra_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3721, 1, "MystlashHydra_OnCombat")
RegisterUnitEvent(3721, 2, "MystlashHydra_OnLeaveCombat")
RegisterUnitEvent(3721, 3, "MystlashHydra_OnKilledTarget")
RegisterUnitEvent(3721, 4, "MystlashHydra_OnDied")