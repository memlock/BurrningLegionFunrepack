--[[ Grizzly Hills -- Iron Thane Furyhammer.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function IronThaneFuryhammer_OnCombat(Unit, Event)
Unit:RegisterEvent("IronThaneFuryhammer_Furyhammer", 8000, 0)
Unit:RegisterEvent("IronThaneFuryhammer_FuryhammersImmunity", 15000, 1)
end

function IronThaneFuryhammer_Furyhammer(pUnit, Event) 
pUnit:CastSpell(61576) 
end

function IronThaneFuryhammer_FuryhammersImmunity(pUnit, Event) 
pUnit:CastSpell(47922) 
end

function IronThaneFuryhammer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function IronThaneFuryhammer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function IronThaneFuryhammer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26405, 1, "IronThaneFuryhammer_OnCombat")
RegisterUnitEvent(26405, 2, "IronThaneFuryhammer_OnLeaveCombat")
RegisterUnitEvent(26405, 3, "IronThaneFuryhammer_OnKilledTarget")
RegisterUnitEvent(26405, 4, "IronThaneFuryhammer_OnDied")