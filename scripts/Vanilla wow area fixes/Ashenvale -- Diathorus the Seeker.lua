--[[ Ashenvale -- Diathorus the Seeker.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function DiathorustheSeeker_OnCombat(Unit, Event)
Unit:RegisterEvent("DiathorustheSeeker_DrainLife", 8000, 0)
end

function DiathorustheSeeker_DrainLife(pUnit, Event) 
pUnit:FullCastSpellOnTarget(18557, pUnit:GetMainTank()) 
end

function DiathorustheSeeker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DiathorustheSeeker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DiathorustheSeeker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6072, 1, "DiathorustheSeeker_OnCombat")
RegisterUnitEvent(6072, 2, "DiathorustheSeeker_OnLeaveCombat")
RegisterUnitEvent(6072, 3, "DiathorustheSeeker_OnKilledTarget")
RegisterUnitEvent(6072, 4, "DiathorustheSeeker_OnDied")