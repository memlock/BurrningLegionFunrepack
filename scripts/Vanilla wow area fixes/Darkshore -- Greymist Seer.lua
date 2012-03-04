--[[ Darkshore -- Greymist Seer.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 04th, 2008. ]]


function GreymistSeer_OnCombat(Unit, Event)
Unit:RegisterEvent("GreymistSeer_HealingWave", 13000, 0)
Unit:RegisterEvent("GreymistSeer_LightningShield", 5000, 0)
end

function GreymistSeer_HealingWave(pUnit, Event) 
pUnit:CastSpell(547) 
end

function GreymistSeer_LightningShield(pUnit, Event) 
pUnit:CastSpell(324) 
end

function GreymistSeer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GreymistSeer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GreymistSeer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2203, 1, "GreymistSeer_OnCombat")
RegisterUnitEvent(2203, 2, "GreymistSeer_OnLeaveCombat")
RegisterUnitEvent(2203, 3, "GreymistSeer_OnKilledTarget")
RegisterUnitEvent(2203, 4, "GreymistSeer_OnDied")