--[[ Borean Tundra -- Plagued Scavenger.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function PlaguedScavengerr_OnCombat(Unit, Event)
Unit:RegisterEvent("PlaguedScavengerr_InfectedBite", 10000, 0)
end

function PlaguedScavengerr_InfectedBite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49861, pUnit:GetMainTank()) 
end

function PlaguedScavengerr_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function PlaguedScavengerr_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function PlaguedScavengerr_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25650, 1, "PlaguedScavengerr_OnCombat")
RegisterUnitEvent(25650, 2, "PlaguedScavengerr_OnLeaveCombat")
RegisterUnitEvent(25650, 3, "PlaguedScavengerr_OnKilledTarget")
RegisterUnitEvent(25650, 4, "PlaguedScavengerr_OnDied")