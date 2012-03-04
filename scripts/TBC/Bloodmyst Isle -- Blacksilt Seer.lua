--[[ Bloodmyst Isle -- Blacksilt Seer.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 28th, 2008. ]]

function BlacksiltSeer_OnCombat(Unit, Event)
Unit:RegisterEvent("BlacksiltSeer_Rejuvenation", 10000, 0)
Unit:RegisterEvent("BlacksiltSeer_Wrath", 7000, 0)
end

function BlacksiltSeer_Rejuvenation(pUnit, Event) 
pUnit:CastSpell(12160) 
end

function BlacksiltSeer_Wrath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9739, pUnit:GetMainTank()) 
end

function BlacksiltSeer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BlacksiltSeer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BlacksiltSeer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17330, 1, "BlacksiltSeer_OnCombat")
RegisterUnitEvent(17330, 2, "BlacksiltSeer_OnLeaveCombat")
RegisterUnitEvent(17330, 3, "BlacksiltSeer_OnKilledTarget")
RegisterUnitEvent(17330, 4, "BlacksiltSeer_OnDied")