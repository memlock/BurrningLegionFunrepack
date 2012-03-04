--[[ Ashenvale -- Tideress.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function Tideress_OnCombat(Unit, Event)
Unit:RegisterEvent("Tideress_Frostbolt", 7000, 0)
end

function Tideress_Frostbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9672, pUnit:GetMainTank()) 
end

function Tideress_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Tideress_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Tideress_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12759, 1, "Tideress_OnCombat")
RegisterUnitEvent(12759, 2, "Tideress_OnLeaveCombat")
RegisterUnitEvent(12759, 3, "Tideress_OnKilledTarget")
RegisterUnitEvent(12759, 4, "Tideress_OnDied")