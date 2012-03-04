--[[ Borean Tundra -- Gerald Green.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function GeraldGreen_OnCombat(Unit, Event)
Unit:RegisterEvent("GeraldGreen_Cleave", 7000, 0)
end

function GeraldGreen_Cleave(pUnit, Event) 
pUnit:FullCastSpellOnTarget(40504, pUnit:GetMainTank()) 
end

function GeraldGreen_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GeraldGreen_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GeraldGreen_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26083, 1, "GeraldGreen_OnCombat")
RegisterUnitEvent(26083, 2, "GeraldGreen_OnLeaveCombat")
RegisterUnitEvent(26083, 3, "GeraldGreen_OnKilledTarget")
RegisterUnitEvent(26083, 4, "GeraldGreen_OnDied")