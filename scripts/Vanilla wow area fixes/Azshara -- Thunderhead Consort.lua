--[[ Azshara -- Thunderhead Consort.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function ThunderheadConsort_OnCombat(Unit, Event)
Unit:RegisterEvent("ThunderheadConsort_LightningBreath", 8000, 0)
end

function ThunderheadConsort_LightningBreath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(36594, pUnit:GetMainTank()) 
end

function ThunderheadConsort_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ThunderheadConsort_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ThunderheadConsort_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6380, 1, "ThunderheadConsort_OnCombat")
RegisterUnitEvent(6380, 2, "ThunderheadConsort_OnLeaveCombat")
RegisterUnitEvent(6380, 3, "ThunderheadConsort_OnKilledTarget")
RegisterUnitEvent(6380, 4, "ThunderheadConsort_OnDied")