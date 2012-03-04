--[[ The Barrens -- Tazan.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function Tazan_OnCombat(Unit, Event)
Unit:RegisterEvent("Tazan_Backhand", 8000, 0)
end

function Tazan_Backhand(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6253, pUnit:GetMainTank()) 
end

function Tazan_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Tazan_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Tazan_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6494, 1, "Tazan_OnCombat")
RegisterUnitEvent(6494, 2, "Tazan_OnLeaveCombat")
RegisterUnitEvent(6494, 3, "Tazan_OnKilledTarget")
RegisterUnitEvent(6494, 4, "Tazan_OnDied")