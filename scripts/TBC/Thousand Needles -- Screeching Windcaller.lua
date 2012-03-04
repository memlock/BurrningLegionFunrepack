--[[ Thousand Needles -- Screeching Windcaller.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function ScreechingWindcaller_OnCombat(Unit, Event)
Unit:RegisterEvent("ScreechingWindcaller_GustofWind", 10000, 0)
end

function ScreechingWindcaller_GustofWind(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6982, pUnit:GetMainTank()) 
end

function ScreechingWindcaller_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ScreechingWindcaller_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ScreechingWindcaller_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4104, 1, "ScreechingWindcaller_OnCombat")
RegisterUnitEvent(4104, 2, "ScreechingWindcaller_OnLeaveCombat")
RegisterUnitEvent(4104, 3, "ScreechingWindcaller_OnKilledTarget")
RegisterUnitEvent(4104, 4, "ScreechingWindcaller_OnDied")