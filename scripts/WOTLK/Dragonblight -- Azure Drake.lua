--[[ Dragonblight -- Azure Drake.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function AzureDrake_OnCombat(Unit, Event)
Unit:RegisterEvent("AzureDrake_FrostBreath", 10000, 1)
end

function AzureDrake_FrostBreath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49111, pUnit:GetMainTank()) 
end

function AzureDrake_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AzureDrake_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AzureDrake_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27682, 1, "AzureDrake_OnCombat")
RegisterUnitEvent(27682, 2, "AzureDrake_OnLeaveCombat")
RegisterUnitEvent(27682, 3, "AzureDrake_OnKilledTarget")
RegisterUnitEvent(27682, 4, "AzureDrake_OnDied")