--[[ Borean Tundra -- Aspatha the Broodmother.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function AspathatheBroodmother_OnCombat(Unit, Event)
Unit:RegisterEvent("AspathatheBroodmother_Pollen", 8000, 0)
Unit:RegisterEvent("AspathatheBroodmother_WingBuffet", 9000, 0)
end

function AspathatheBroodmother_Pollen(pUnit, Event) 
pUnit:CastSpell(45610) 
end

function AspathatheBroodmother_WingBuffet(pUnit, Event) 
pUnit:CastSpell(32914) 
end

function AspathatheBroodmother_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AspathatheBroodmother_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AspathatheBroodmother_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25498, 1, "AspathatheBroodmother_OnCombat")
RegisterUnitEvent(25498, 2, "AspathatheBroodmother_OnLeaveCombat")
RegisterUnitEvent(25498, 3, "AspathatheBroodmother_OnKilledTarget")
RegisterUnitEvent(25498, 4, "AspathatheBroodmother_OnDied")