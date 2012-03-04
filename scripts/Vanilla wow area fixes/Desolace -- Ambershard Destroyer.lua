--[[ Desolace -- Ambershard Destroyer.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function AmbershardDestroyer_OnCombat(Unit, Event)
Unit:RegisterEvent("AmbershardDestroyer_Boulder", 8000, 0)
Unit:RegisterEvent("AmbershardDestroyer_EarthShock", 11000, 0)
end

function AmbershardDestroyer_Boulder(pUnit, Event) 
pUnit:FullCastSpellOnTarget(19701, pUnit:GetMainTank()) 
end

function AmbershardDestroyer_EarthShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13728, pUnit:GetMainTank()) 
end

function AmbershardDestroyer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AmbershardDestroyer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AmbershardDestroyer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11782, 1, "AmbershardDestroyer_OnCombat")
RegisterUnitEvent(11782, 2, "AmbershardDestroyer_OnLeaveCombat")
RegisterUnitEvent(11782, 3, "AmbershardDestroyer_OnKilledTarget")
RegisterUnitEvent(11782, 4, "AmbershardDestroyer_OnDied")