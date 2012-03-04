--[[ Dragonblight -- Rattlebore.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function Rattlebore_OnCombat(Unit, Event)
Unit:RegisterEvent("Rattlebore_CorrodedMind", 10000, 0)
Unit:RegisterEvent("Rattlebore_CorrosiveSpit", 9000, 0)
Unit:RegisterEvent("Rattlebore_PowerfulBite", 7000, 0)
end

function Rattlebore_CorrodedMind(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51203, pUnit:GetMainTank()) 
end

function Rattlebore_CorrosiveSpit(pUnit, Event) 
pUnit:FullCastSpellOnTarget(47447, pUnit:GetMainTank()) 
end

function Rattlebore_PowerfulBite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(48287, pUnit:GetMainTank()) 
end

function Rattlebore_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Rattlebore_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Rattlebore_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26360, 1, "Rattlebore_OnCombat")
RegisterUnitEvent(26360, 2, "Rattlebore_OnLeaveCombat")
RegisterUnitEvent(26360, 3, "Rattlebore_OnKilledTarget")
RegisterUnitEvent(26360, 4, "Rattlebore_OnDied")