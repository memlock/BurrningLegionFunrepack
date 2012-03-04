--[[ Borean Tundra -- Darkfallen Bloodbearer.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function DarkfallenBloodbearer_OnCombat(Unit, Event)
Unit:RegisterEvent("DarkfallenBloodbearer_DeathCoil", 8000, 0)
Unit:RegisterEvent("DarkfallenBloodbearer_IcyTouch", 10000, 0)
end

function DarkfallenBloodbearer_DeathCoil(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50668, pUnit:GetMainTank()) 
end

function DarkfallenBloodbearer_IcyTouch(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50349, pUnit:GetMainTank()) 
end

function DarkfallenBloodbearer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DarkfallenBloodbearer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DarkfallenBloodbearer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26115, 1, "DarkfallenBloodbearer_OnCombat")
RegisterUnitEvent(26115, 2, "DarkfallenBloodbearer_OnLeaveCombat")
RegisterUnitEvent(26115, 3, "DarkfallenBloodbearer_OnKilledTarget")
RegisterUnitEvent(26115, 4, "DarkfallenBloodbearer_OnDied")