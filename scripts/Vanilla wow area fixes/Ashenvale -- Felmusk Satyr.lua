--[[ Ashenvale -- Felmusk Satyr.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function FelmuskSatyr_OnCombat(Unit, Event)
Unit:RegisterEvent("FelmuskSatyr_OverwhelmingStench", 10000, 0)
end

function FelmuskSatyr_OverwhelmingStench(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6942, pUnit:GetMainTank()) 
end

function FelmuskSatyr_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FelmuskSatyr_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FelmuskSatyr_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3758, 1, "FelmuskSatyr_OnCombat")
RegisterUnitEvent(3758, 2, "FelmuskSatyr_OnLeaveCombat")
RegisterUnitEvent(3758, 3, "FelmuskSatyr_OnKilledTarget")
RegisterUnitEvent(3758, 4, "FelmuskSatyr_OnDied")