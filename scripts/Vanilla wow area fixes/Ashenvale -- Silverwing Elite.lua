--[[ Ashenvale -- Silverwing Elite.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function SilverwingElite_OnCombat(Unit, Event)
Unit:RegisterEvent("SilverwingElite_Shoot", 6000, 0)
end

function SilverwingElite_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function SilverwingElite_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SilverwingElite_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SilverwingElite_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(14715, 1, "SilverwingElite_OnCombat")
RegisterUnitEvent(14715, 2, "SilverwingElite_OnLeaveCombat")
RegisterUnitEvent(14715, 3, "SilverwingElite_OnKilledTarget")
RegisterUnitEvent(14715, 4, "SilverwingElite_OnDied")