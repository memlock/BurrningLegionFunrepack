--[[ Teldrassil -- Bloodfeather Wind Witch.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function BloodfeatherWindWitch_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodfeatherWindWitch_GustofWind", 8000, 0)
end

function BloodfeatherWindWitch_GustofWind(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6982, pUnit:GetMainTank()) 
end

function BloodfeatherWindWitch_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodfeatherWindWitch_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodfeatherWindWitch_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2020, 1, "BloodfeatherWindWitch_OnCombat")
RegisterUnitEvent(2020, 2, "BloodfeatherWindWitch_OnLeaveCombat")
RegisterUnitEvent(2020, 3, "BloodfeatherWindWitch_OnKilledTarget")
RegisterUnitEvent(2020, 4, "BloodfeatherWindWitch_OnDied")