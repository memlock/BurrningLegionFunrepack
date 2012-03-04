--[[ Grizzly Hills -- Bambina.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function Bambina_OnCombat(Unit, Event)
Unit:RegisterEvent("Bambina_BambinasVengeance", 4000, 1)
end

function Bambina_BambinasVengeance(pUnit, Event) 
pUnit:CastSpell(48869) 
end

function Bambina_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Bambina_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Bambina_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27461, 1, "Bambina_OnCombat")
RegisterUnitEvent(27461, 2, "Bambina_OnLeaveCombat")
RegisterUnitEvent(27461, 3, "Bambina_OnKilledTarget")
RegisterUnitEvent(27461, 4, "Bambina_OnDied")