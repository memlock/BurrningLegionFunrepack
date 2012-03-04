--[[ Dragonblight -- Goramosh.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function Goramosh_OnCombat(Unit, Event)
Unit:RegisterEvent("Goramosh_ConeofCold", 6000, 0)
Unit:RegisterEvent("Goramosh_Frostbolt", 8000, 0)
end

function Goramosh_ConeofCold(pUnit, Event) 
pUnit:CastSpell(20828) 
end

function Goramosh_Frostbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9672, pUnit:GetMainTank()) 
end

function Goramosh_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Goramosh_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Goramosh_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26349, 1, "Goramosh_OnCombat")
RegisterUnitEvent(26349, 2, "Goramosh_OnLeaveCombat")
RegisterUnitEvent(26349, 3, "Goramosh_OnKilledTarget")
RegisterUnitEvent(26349, 4, "Goramosh_OnDied")