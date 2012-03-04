--[[ Silithus -- Zora.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]


function Zora_OnCombat(Unit, Event)
Unit:RegisterEvent("Zora_PoisonBolt", 8000, 0)
end

function Zora_PoisonBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(21067, pUnit:GetMainTank()) 
end

function Zora_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Zora_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Zora_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(14474, 1, "Zora_OnCombat")
RegisterUnitEvent(14474, 2, "Zora_OnLeaveCombat")
RegisterUnitEvent(14474, 3, "Zora_OnKilledTarget")
RegisterUnitEvent(14474, 4, "Zora_OnDied")