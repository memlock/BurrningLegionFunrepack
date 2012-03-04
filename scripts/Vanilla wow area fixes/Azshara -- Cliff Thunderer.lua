--[[ Azshara -- Cliff Thunderer.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function CliffThunderer_OnCombat(Unit, Event)
Unit:RegisterEvent("CliffThunderer_Thunderclap", 8000, 0)
end

function CliffThunderer_Thunderclap(pUnit, Event) 
pUnit:CastSpell(8147) 
end

function CliffThunderer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CliffThunderer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CliffThunderer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6147, 1, "CliffThunderer_OnCombat")
RegisterUnitEvent(6147, 2, "CliffThunderer_OnLeaveCombat")
RegisterUnitEvent(6147, 3, "CliffThunderer_OnKilledTarget")
RegisterUnitEvent(6147, 4, "CliffThunderer_OnDied")