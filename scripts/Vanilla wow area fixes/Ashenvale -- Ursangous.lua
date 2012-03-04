--[[ Ashenvale -- Ursangous.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function Ursangous_OnCombat(Unit, Event)
Unit:RegisterEvent("Ursangous_KnockAway", 8000, 0)
Unit:RegisterEvent("Ursangous_Rend", 10000, 0)
end

function Ursangous_KnockAway(pUnit, Event) 
pUnit:FullCastSpellOnTarget(10101, pUnit:GetMainTank()) 
end

function Ursangous_Rend(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13443, pUnit:GetMainTank()) 
end

function Ursangous_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Ursangous_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Ursangous_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12678, 1, "Ursangous_OnCombat")
RegisterUnitEvent(12678, 2, "Ursangous_OnLeaveCombat")
RegisterUnitEvent(12678, 3, "Ursangous_OnKilledTarget")
RegisterUnitEvent(12678, 4, "Ursangous_OnDied")