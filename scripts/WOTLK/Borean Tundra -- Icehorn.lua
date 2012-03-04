--[[ Borean Tundra -- Icehorn.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function Icehorn_OnCombat(Unit, Event)
Unit:RegisterEvent("Icehorn_Romp", 8000, 0)
end

function Icehorn_Romp(pUnit, Event) 
pUnit:CastSpell(57468) 
end

function Icehorn_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Icehorn_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Icehorn_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(32361, 1, "Icehorn_OnCombat")
RegisterUnitEvent(32361, 2, "Icehorn_OnLeaveCombat")
RegisterUnitEvent(32361, 3, "Icehorn_OnKilledTarget")
RegisterUnitEvent(32361, 4, "Icehorn_OnDied")