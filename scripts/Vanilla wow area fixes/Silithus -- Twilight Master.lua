--[[ Silithus -- Twilight Master.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]


function TwilightMaster_OnCombat(Unit, Event)
Unit:RegisterEvent("TwilightMaster_ChainLightning", 10000, 0)
Unit:RegisterEvent("TwilightMaster_Frostbolt", 7000, 0)
end

function TwilightMaster_ChainLightning(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12058, pUnit:GetMainTank()) 
end

function TwilightMaster_Frostbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9672, pUnit:GetMainTank()) 
end

function TwilightMaster_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TwilightMaster_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TwilightMaster_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11883, 1, "TwilightMaster_OnCombat")
RegisterUnitEvent(11883, 2, "TwilightMaster_OnLeaveCombat")
RegisterUnitEvent(11883, 3, "TwilightMaster_OnKilledTarget")
RegisterUnitEvent(11883, 4, "TwilightMaster_OnDied")