--[[ Silithus -- Huricanian.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]


function Huricanian_OnCombat(Unit, Event)
Unit:RegisterEvent("Huricanian_ChainLightning", 8000, 0)
end

function Huricanian_ChainLightning(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15659, pUnit:GetRandomPlayer(0)) 
end

function Huricanian_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Huricanian_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Huricanian_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(14478, 1, "Huricanian_OnCombat")
RegisterUnitEvent(14478, 2, "Huricanian_OnLeaveCombat")
RegisterUnitEvent(14478, 3, "Huricanian_OnKilledTarget")
RegisterUnitEvent(14478, 4, "Huricanian_OnDied")