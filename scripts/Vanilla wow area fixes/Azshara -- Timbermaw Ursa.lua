--[[ Azshara -- Timbermaw Ursa.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function TimbermawUrsa_OnCombat(Unit, Event)
Unit:RegisterEvent("TimbermawUrsa_Thunderclap", 8000, 0)
end

function TimbermawUrsa_Thunderclap(pUnit, Event) 
pUnit:CastSpell(8078) 
end

function TimbermawUrsa_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TimbermawUrsa_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TimbermawUrsa_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6189, 1, "TimbermawUrsa_OnCombat")
RegisterUnitEvent(6189, 2, "TimbermawUrsa_OnLeaveCombat")
RegisterUnitEvent(6189, 3, "TimbermawUrsa_OnKilledTarget")
RegisterUnitEvent(6189, 4, "TimbermawUrsa_OnDied")