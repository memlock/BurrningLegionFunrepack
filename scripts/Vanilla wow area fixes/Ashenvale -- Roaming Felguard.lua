--[[ Ashenvale -- Roaming Felguard.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function RoamingFelguard_OnCombat(Unit, Event)
Unit:RegisterEvent("RoamingFelguard_Knockdown", 8000, 0)
end

function RoamingFelguard_Knockdown(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11428, pUnit:GetMainTank()) 
end

function RoamingFelguard_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RoamingFelguard_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RoamingFelguard_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6115, 1, "RoamingFelguard_OnCombat")
RegisterUnitEvent(6115, 2, "RoamingFelguard_OnLeaveCombat")
RegisterUnitEvent(6115, 3, "RoamingFelguard_OnKilledTarget")
RegisterUnitEvent(6115, 4, "RoamingFelguard_OnDied")