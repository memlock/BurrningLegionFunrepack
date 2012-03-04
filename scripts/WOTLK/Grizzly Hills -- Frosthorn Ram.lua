--[[ Grizzly Hills -- Frosthorn Ram.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function FrosthornRam_OnCombat(Unit, Event)
Unit:RegisterEvent("FrosthornRam_HoofStrike", 7000, 0)
end

function FrosthornRam_HoofStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(29577, pUnit:GetMainTank()) 
end

function FrosthornRam_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FrosthornRam_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FrosthornRam_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(23740, 1, "FrosthornRam_OnCombat")
RegisterUnitEvent(23740, 2, "FrosthornRam_OnLeaveCombat")
RegisterUnitEvent(23740, 3, "FrosthornRam_OnKilledTarget")
RegisterUnitEvent(23740, 4, "FrosthornRam_OnDied")