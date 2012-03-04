--[[ Silithus -- Twilight Avenger.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]


function TwilightAvenger_OnCombat(Unit, Event)
Unit:RegisterEvent("TwilightAvenger_Enrage", 10000, 1)
end

function TwilightAvenger_Enrage(pUnit, Event) 
pUnit:CastSpell(8599) 
end

function TwilightAvenger_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TwilightAvenger_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TwilightAvenger_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11880, 1, "TwilightAvenger_OnCombat")
RegisterUnitEvent(11880, 2, "TwilightAvenger_OnLeaveCombat")
RegisterUnitEvent(11880, 3, "TwilightAvenger_OnKilledTarget")
RegisterUnitEvent(11880, 4, "TwilightAvenger_OnDied")