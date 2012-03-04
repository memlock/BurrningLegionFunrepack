--[[ Grizzly Hills -- Blood of the Old God.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function BloodoftheOldGod_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodoftheOldGod_CorruptionoftheOldGod", 7000, 0)
end

function BloodoftheOldGod_CorruptionoftheOldGod(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52564, pUnit:GetMainTank()) 
end

function BloodoftheOldGod_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodoftheOldGod_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodoftheOldGod_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(28854, 1, "BloodoftheOldGod_OnCombat")
RegisterUnitEvent(28854, 2, "BloodoftheOldGod_OnLeaveCombat")
RegisterUnitEvent(28854, 3, "BloodoftheOldGod_OnKilledTarget")
RegisterUnitEvent(28854, 4, "BloodoftheOldGod_OnDied")