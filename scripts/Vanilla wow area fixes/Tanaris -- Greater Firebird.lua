--[[ Tanaris -- Greater Firebird.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function GreaterFirebird_OnCombat(Unit, Event)
Unit:RegisterEvent("GreaterFirebird_CrimsonFury", 8000, 0)
Unit:RegisterEvent("GreaterFirebird_FireNova", 10000, 0)
end

function GreaterFirebird_CrimsonFury(pUnit, Event) 
pUnit:CastSpell(16843) 
end

function GreaterFirebird_FireNova(pUnit, Event) 
pUnit:CastSpell(11970) 
end

function GreaterFirebird_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GreaterFirebird_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GreaterFirebird_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(8207, 1, "GreaterFirebird_OnCombat")
RegisterUnitEvent(8207, 2, "GreaterFirebird_OnLeaveCombat")
RegisterUnitEvent(8207, 3, "GreaterFirebird_OnKilledTarget")
RegisterUnitEvent(8207, 4, "GreaterFirebird_OnDied")