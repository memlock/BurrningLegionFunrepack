--[[ Grizzly Hills -- Entropic Ooze.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function EntropicOoze_OnCombat(Unit, Event)
Unit:RegisterEvent("EntropicOoze_CrudeOoze", 7000, 0)
end

function EntropicOoze_CrudeOoze(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52334, pUnit:GetMainTank()) 
end

function EntropicOoze_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function EntropicOoze_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function EntropicOoze_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26366, 1, "EntropicOoze_OnCombat")
RegisterUnitEvent(26366, 2, "EntropicOoze_OnLeaveCombat")
RegisterUnitEvent(26366, 3, "EntropicOoze_OnKilledTarget")
RegisterUnitEvent(26366, 4, "EntropicOoze_OnDied")