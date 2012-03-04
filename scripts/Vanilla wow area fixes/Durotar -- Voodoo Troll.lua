--[[ Durotar -- Voodoo Troll.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function VoodooTroll_OnCombat(Unit, Event)
Unit:RegisterEvent("VoodooTroll_LightningShield", 5000, 0)
Unit:RegisterEvent("VoodooTroll_HealingWave", 12000, 0)
end

function VoodooTroll_LightningShield(pUnit, Event) 
pUnit:CastSpell(324) 
end

function VoodooTroll_HealingWave(pUnit, Event) 
pUnit:CastSpell(332) 
end

function VoodooTroll_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function VoodooTroll_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function VoodooTroll_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3206, 1, "VoodooTroll_OnCombat")
RegisterUnitEvent(3206, 2, "VoodooTroll_OnLeaveCombat")
RegisterUnitEvent(3206, 3, "VoodooTroll_OnKilledTarget")
RegisterUnitEvent(3206, 4, "VoodooTroll_OnDied")