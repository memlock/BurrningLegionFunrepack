--[[ The Barrens -- Serena Bloodfeather.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function SerenaBloodfeather_OnCombat(Unit, Event)
Unit:RegisterEvent("SerenaBloodfeather_BloodHowl", 10000, 0)
end

function SerenaBloodfeather_BloodHowl(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3264, pUnit:GetMainTank()) 
end

function SerenaBloodfeather_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SerenaBloodfeather_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SerenaBloodfeather_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3452, 1, "SerenaBloodfeather_OnCombat")
RegisterUnitEvent(3452, 2, "SerenaBloodfeather_OnLeaveCombat")
RegisterUnitEvent(3452, 3, "SerenaBloodfeather_OnKilledTarget")
RegisterUnitEvent(3452, 4, "SerenaBloodfeather_OnDied")