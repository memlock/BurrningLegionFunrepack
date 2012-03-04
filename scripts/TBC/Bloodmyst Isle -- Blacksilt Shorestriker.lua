--[[ Bloodmyst Isle -- Blacksilt Shorestriker.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 28th, 2008. ]]

function BlacksiltShorestriker_OnCombat(Unit, Event)
Unit:RegisterEvent("BlacksiltShorestriker_Net", 8000, 0)
end

function BlacksiltShorestriker_Net(pUnit, Event) 
pUnit:FullCastSpellOnTarget(31290, pUnit:GetMainTank()) 
end

function BlacksiltShorestriker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BlacksiltShorestriker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BlacksiltShorestriker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17328, 1, "BlacksiltShorestriker_OnCombat")
RegisterUnitEvent(17328, 2, "BlacksiltShorestriker_OnLeaveCombat")
RegisterUnitEvent(17328, 3, "BlacksiltShorestriker_OnKilledTarget")
RegisterUnitEvent(17328, 4, "BlacksiltShorestriker_OnDied")