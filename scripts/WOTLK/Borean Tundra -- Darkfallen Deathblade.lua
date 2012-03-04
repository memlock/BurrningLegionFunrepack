--[[ Borean Tundra -- Darkfallen Deathblade.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function DarkfallenDeathblade_OnCombat(Unit, Event)
Unit:RegisterEvent("DarkfallenDeathblade_DeathCoil", 8000, 0)
Unit:RegisterEvent("DarkfallenDeathblade_IcyTouch", 10000, 0)
end

function DarkfallenDeathblade_DeathCoil(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50668, pUnit:GetMainTank()) 
end

function DarkfallenDeathblade_IcyTouch(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50349, pUnit:GetMainTank()) 
end

function DarkfallenDeathblade_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DarkfallenDeathblade_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DarkfallenDeathblade_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26103, 1, "DarkfallenDeathblade_OnCombat")
RegisterUnitEvent(26103, 2, "DarkfallenDeathblade_OnLeaveCombat")
RegisterUnitEvent(26103, 3, "DarkfallenDeathblade_OnKilledTarget")
RegisterUnitEvent(26103, 4, "DarkfallenDeathblade_OnDied")