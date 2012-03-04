--[[ Silithus -- Twilight Stonecaller.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]


function TwilightStonecaller_OnCombat(Unit, Event)
Unit:RegisterEvent("TwilightStonecaller_Fireball", 8000, 0)
Unit:RegisterEvent("TwilightStonecaller_Petrify", 10000, 0)
end

function TwilightStonecaller_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9053, pUnit:GetMainTank()) 
end

function TwilightStonecaller_Petrify(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11020, pUnit:GetMainTank()) 
end

function TwilightStonecaller_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TwilightStonecaller_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TwilightStonecaller_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11882, 1, "TwilightStonecaller_OnCombat")
RegisterUnitEvent(11882, 2, "TwilightStonecaller_OnLeaveCombat")
RegisterUnitEvent(11882, 3, "TwilightStonecaller_OnKilledTarget")
RegisterUnitEvent(11882, 4, "TwilightStonecaller_OnDied")