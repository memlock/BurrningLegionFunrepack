--[[ The Barrens -- Razorfen Thornweaver.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function RazorfenThornweaver_OnCombat(Unit, Event)
Unit:RegisterEvent("RazorfenThornweaver_HealingTouch", 15000, 0)
Unit:RegisterEvent("RazorfenThornweaver_Thorns", 4000, 1)
end

function RazorfenThornweaver_HealingTouch(pUnit, Event) 
pUnit:CastSpell(11431) 
end

function RazorfenThornweaver_Thorns(pUnit, Event) 
pUnit:CastSpell(7966) 
end

function RazorfenThornweaver_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RazorfenThornweaver_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RazorfenThornweaver_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(7874, 1, "RazorfenThornweaver_OnCombat")
RegisterUnitEvent(7874, 2, "RazorfenThornweaver_OnLeaveCombat")
RegisterUnitEvent(7874, 3, "RazorfenThornweaver_OnKilledTarget")
RegisterUnitEvent(7874, 4, "RazorfenThornweaver_OnDied")