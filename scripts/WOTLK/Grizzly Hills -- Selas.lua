--[[ Grizzly Hills -- Selas.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function Selas_OnCombat(Unit, Event)
Unit:RegisterEvent("Selas_AxeVolley", 6000, 0)
Unit:RegisterEvent("Selas_KillingRage", 5000, 0)
end

function Selas_AxeVolley(pUnit, Event) 
pUnit:CastSpell(53239) 
end

function Selas_KillingRage(pUnit, Event) 
pUnit:CastSpell(52071) 
end

function Selas_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Selas_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Selas_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27580, 1, "Selas_OnCombat")
RegisterUnitEvent(27580, 2, "Selas_OnLeaveCombat")
RegisterUnitEvent(27580, 3, "Selas_OnKilledTarget")
RegisterUnitEvent(27580, 4, "Selas_OnDied")