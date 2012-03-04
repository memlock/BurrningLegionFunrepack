--[[ Grizzly Hills -- Serpent Defender.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function SerpentDefender_OnCombat(Unit, Event)
Unit:RegisterEvent("SerpentDefender_TailLash", 8000, 0)
end

function SerpentDefender_TailLash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(34811, pUnit:GetMainTank()) 
end

function SerpentDefender_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SerpentDefender_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SerpentDefender_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(29693, 1, "SerpentDefender_OnCombat")
RegisterUnitEvent(29693, 2, "SerpentDefender_OnLeaveCombat")
RegisterUnitEvent(29693, 3, "SerpentDefender_OnKilledTarget")
RegisterUnitEvent(29693, 4, "SerpentDefender_OnDied")