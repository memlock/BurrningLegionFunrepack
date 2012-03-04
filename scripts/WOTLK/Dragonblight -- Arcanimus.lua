--[[ Dragonblight -- Arcanimus.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function Arcanimus_OnCombat(Unit, Event)
Unit:RegisterEvent("Arcanimus_ArcaneExplosion", 6000, 0)
end

function Arcanimus_ArcaneExplosion(pUnit, Event) 
pUnit:CastSpell(51820) 
end

function Arcanimus_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Arcanimus_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Arcanimus_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26370, 1, "Arcanimus_OnCombat")
RegisterUnitEvent(26370, 2, "Arcanimus_OnLeaveCombat")
RegisterUnitEvent(26370, 3, "Arcanimus_OnKilledTarget")
RegisterUnitEvent(26370, 4, "Arcanimus_OnDied")