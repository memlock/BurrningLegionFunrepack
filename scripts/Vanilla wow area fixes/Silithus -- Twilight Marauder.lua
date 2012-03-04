--[[ Silithus -- Twilight Marauder.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]


function TwilightMarauder_OnCombat(Unit, Event)
Unit:RegisterEvent("TwilightMarauder_PiercingHowl", 10000, 0)
Unit:RegisterEvent("TwilightMarauder_Enrage", 12000, 1)
end

function TwilightMarauder_PiercingHowl(pUnit, Event) 
pUnit:CastSpell(23600) 
end

function TwilightMarauder_Enrage(pUnit, Event) 
pUnit:CastSpell(8599) 
end

function TwilightMarauder_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TwilightMarauder_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TwilightMarauder_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(15542, 1, "TwilightMarauder_OnCombat")
RegisterUnitEvent(15542, 2, "TwilightMarauder_OnLeaveCombat")
RegisterUnitEvent(15542, 3, "TwilightMarauder_OnKilledTarget")
RegisterUnitEvent(15542, 4, "TwilightMarauder_OnDied")