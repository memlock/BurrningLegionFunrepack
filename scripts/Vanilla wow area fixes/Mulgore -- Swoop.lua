--[[ Mulgore -- Swoop.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function Swoop_OnCombat(Unit, Event)
Unit:RegisterEvent("Swoop_Swoop", 6000, 0)
end

function Swoop_Swoop(pUnit, Event) 
pUnit:CastSpell(5708) 
end

function Swoop_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Swoop_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Swoop_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2970, 1, "Swoop_OnCombat")
RegisterUnitEvent(2970, 2, "Swoop_OnLeaveCombat")
RegisterUnitEvent(2970, 3, "Swoop_OnKilledTarget")
RegisterUnitEvent(2970, 4, "Swoop_OnDied")