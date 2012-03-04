--[[ Borean Tundra -- Scalder.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function Scalder_OnCombat(Unit, Event)
Unit:RegisterEvent("Scalder_ScaldingBlast", 8000, 0)
Unit:RegisterEvent("Scalder_WaterBolt", 5500, 0)
end

function Scalder_ScaldingBlast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50257, pUnit:GetMainTank()) 
end

function Scalder_WaterBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32011, pUnit:GetMainTank()) 
end

function Scalder_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Scalder_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Scalder_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25226, 1, "Scalder_OnCombat")
RegisterUnitEvent(25226, 2, "Scalder_OnLeaveCombat")
RegisterUnitEvent(25226, 3, "Scalder_OnKilledTarget")
RegisterUnitEvent(25226, 4, "Scalder_OnDied")