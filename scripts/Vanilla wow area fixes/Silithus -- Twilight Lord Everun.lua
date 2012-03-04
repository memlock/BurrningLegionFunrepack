--[[ Silithus -- Twilight Lord Everun.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]


function TwilightLordEverun_OnCombat(Unit, Event)
Unit:RegisterEvent("TwilightLordEverun_Fireball", 8000, 0)
Unit:RegisterEvent("TwilightLordEverun_ShadowShock", 6000, 0)
end

function TwilightLordEverun_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(19816, pUnit:GetMainTank()) 
end

function TwilightLordEverun_ShadowShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(17439, pUnit:GetMainTank()) 
end

function TwilightLordEverun_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TwilightLordEverun_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TwilightLordEverun_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(14479, 1, "TwilightLordEverun_OnCombat")
RegisterUnitEvent(14479, 2, "TwilightLordEverun_OnLeaveCombat")
RegisterUnitEvent(14479, 3, "TwilightLordEverun_OnKilledTarget")
RegisterUnitEvent(14479, 4, "TwilightLordEverun_OnDied")