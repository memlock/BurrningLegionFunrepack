--[[ Azshara -- Blood Elf Reclaimer.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function BloodElfReclaimer_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodElfReclaimer_Fireball", 8000, 0)
Unit:RegisterEvent("BloodElfReclaimer_Heal", 14000, 0)
Unit:RegisterEvent("BloodElfReclaimer_Renew", 10000, 0)
end

function BloodElfReclaimer_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20823, pUnit:GetMainTank()) 
end

function BloodElfReclaimer_Heal(pUnit, Event) 
pUnit:CastSpell(11642) 
end

function BloodElfReclaimer_Renew(pUnit, Event) 
pUnit:CastSpell(11640) 
end

function BloodElfReclaimer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodElfReclaimer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodElfReclaimer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6199, 1, "BloodElfReclaimer_OnCombat")
RegisterUnitEvent(6199, 2, "BloodElfReclaimer_OnLeaveCombat")
RegisterUnitEvent(6199, 3, "BloodElfReclaimer_OnKilledTarget")
RegisterUnitEvent(6199, 4, "BloodElfReclaimer_OnDied")