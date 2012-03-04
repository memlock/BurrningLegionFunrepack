--[[ Ashenvale -- Foulweald Ursa.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function FoulwealdUrsa_OnCombat(Unit, Event)
Unit:RegisterEvent("FoulwealdUrsa_Hamstring", 10000, 0)
end

function FoulwealdUrsa_Hamstring(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9080, pUnit:GetMainTank()) 
end

function FoulwealdUrsa_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FoulwealdUrsa_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FoulwealdUrsa_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3749, 1, "FoulwealdUrsa_OnCombat")
RegisterUnitEvent(3749, 2, "FoulwealdUrsa_OnLeaveCombat")
RegisterUnitEvent(3749, 3, "FoulwealdUrsa_OnKilledTarget")
RegisterUnitEvent(3749, 4, "FoulwealdUrsa_OnDied")