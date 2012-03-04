--[[ Dragonblight -- Arcane Wyrm.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function ArcaneWyrm_OnCombat(Unit, Event)
Unit:RegisterEvent("ArcaneWyrm_ArcaneInfusion", 5000, 2)
end

function ArcaneWyrm_ArcaneInfusion(pUnit, Event) 
pUnit:CastSpell(51732) 
end

function ArcaneWyrm_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ArcaneWyrm_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ArcaneWyrm_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26322, 1, "ArcaneWyrm_OnCombat")
RegisterUnitEvent(26322, 2, "ArcaneWyrm_OnLeaveCombat")
RegisterUnitEvent(26322, 3, "ArcaneWyrm_OnKilledTarget")
RegisterUnitEvent(26322, 4, "ArcaneWyrm_OnDied")