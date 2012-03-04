--[[ Grizzly Hills -- Vladek.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 4th, 2009. ]]


function Vladek_OnCombat(Unit, Event)
Unit:RegisterEvent("Vladek_Enrage", 10000, 0)
end

function Vladek_Enrage(pUnit, Event) 
pUnit:CastSpell(32714) 
end

function Vladek_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Vladek_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Vladek_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27547, 1, "Vladek_OnCombat")
RegisterUnitEvent(27547, 2, "Vladek_OnLeaveCombat")
RegisterUnitEvent(27547, 3, "Vladek_OnKilledTarget")
RegisterUnitEvent(27547, 4, "Vladek_OnDied")