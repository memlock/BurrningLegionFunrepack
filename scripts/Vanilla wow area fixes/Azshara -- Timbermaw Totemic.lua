--[[ Azshara -- Timbermaw Totemic.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function TimbermawTotemic_OnCombat(Unit, Event)
Unit:RegisterEvent("TimbermawTotemic_HealingWard", 13000, 0)
end

function TimbermawTotemic_HealingWard(pUnit, Event) 
pUnit:CastSpell(5605) 
end

function TimbermawTotemic_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TimbermawTotemic_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TimbermawTotemic_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6186, 1, "TimbermawTotemic_OnCombat")
RegisterUnitEvent(6186, 2, "TimbermawTotemic_OnLeaveCombat")
RegisterUnitEvent(6186, 3, "TimbermawTotemic_OnKilledTarget")
RegisterUnitEvent(6186, 4, "TimbermawTotemic_OnDied")