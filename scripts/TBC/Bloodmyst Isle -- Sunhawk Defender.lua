--[[ Bloodmyst Isle -- Sunhawk Defender.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 29th, 2008. ]]

function SunhawkDefender_OnCombat(Unit, Event)
Unit:RegisterEvent("SunhawkDefender_Cleave", 9000, 0)
Unit:RegisterEvent("SunhawkDefender_MarkoftheSunhawk", 7500, 0)
Unit:RegisterEvent("SunhawkDefender_Whirlwind", 6000, 0)
end

function SunhawkDefender_Cleave(pUnit, Event) 
pUnit:CastSpell(15284) 
end

function SunhawkDefender_MarkoftheSunhawk(pUnit, Event) 
pUnit:CastSpell(31734) 
end

function SunhawkDefender_Whirlwind(pUnit, Event) 
pUnit:CastSpell(31738) 
end

function SunhawkDefender_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SunhawkDefender_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SunhawkDefender_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17607, 1, "SunhawkDefender_OnCombat")
RegisterUnitEvent(17607, 2, "SunhawkDefender_OnLeaveCombat")
RegisterUnitEvent(17607, 3, "SunhawkDefender_OnKilledTarget")
RegisterUnitEvent(17607, 4, "SunhawkDefender_OnDied")