--[[ Ashenvale -- Vorsha the Lasher.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function VorshatheLasher_OnCombat(Unit, Event)
Unit:RegisterEvent("VorshatheLasher_Lash", 6000, 0)
Unit:RegisterEvent("VorshatheLasher_Thrash", 5000, 0)
end

function VorshatheLasher_Lash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6607, pUnit:GetMainTank()) 
end

function VorshatheLasher_Thrash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3391, pUnit:GetMainTank()) 
end

function VorshatheLasher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function VorshatheLasher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function VorshatheLasher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12940, 1, "VorshatheLasher_OnCombat")
RegisterUnitEvent(12940, 2, "VorshatheLasher_OnLeaveCombat")
RegisterUnitEvent(12940, 3, "VorshatheLasher_OnKilledTarget")
RegisterUnitEvent(12940, 4, "VorshatheLasher_OnDied")