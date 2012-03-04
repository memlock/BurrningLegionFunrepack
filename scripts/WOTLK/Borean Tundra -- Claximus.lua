--[[ Borean Tundra -- Claximus.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function Claximus_OnCombat(Unit, Event)
Unit:RegisterEvent("Claximus_ArcaneBarrage", 8000, 0)
Unit:RegisterEvent("Claximus_StabilizedMagic", 2000, 1)
end

function Claximus_ArcaneBarrage(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50273, pUnit:GetMainTank()) 
end

function Claximus_StabilizedMagic(pUnit, Event) 
pUnit:CastSpell(50275) 
end

function Claximus_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Claximus_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Claximus_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25209, 1, "Claximus_OnCombat")
RegisterUnitEvent(25209, 2, "Claximus_OnLeaveCombat")
RegisterUnitEvent(25209, 3, "Claximus_OnKilledTarget")
RegisterUnitEvent(25209, 4, "Claximus_OnDied")