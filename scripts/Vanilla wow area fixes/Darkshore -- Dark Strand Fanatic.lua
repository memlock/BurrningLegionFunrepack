--[[ Darkshore -- Dark Strand Fanatic.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 30th, 2008. ]]

function DarkStrandFanatic_OnCombat(Unit, Event)
Unit:RegisterEvent("DarkStrandFanatic_CurseofMending", 5000, 1)
end

function DarkStrandFanatic_CurseofMending(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7098, pUnit:GetMainTank()) 
end

function DarkStrandFanatic_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DarkStrandFanatic_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DarkStrandFanatic_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2336, 1, "DarkStrandFanatic_OnCombat")
RegisterUnitEvent(2336, 2, "DarkStrandFanatic_OnLeaveCombat")
RegisterUnitEvent(2336, 3, "DarkStrandFanatic_OnKilledTarget")
RegisterUnitEvent(2336, 4, "DarkStrandFanatic_OnDied")