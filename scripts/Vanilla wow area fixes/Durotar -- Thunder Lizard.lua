--[[ Durotar -- Thunder Lizard.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function ThunderLizard_OnCombat(Unit, Event)
Unit:RegisterEvent("ThunderLizard_LizardBolt", 5000, 0)
end

function ThunderLizard_LizardBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5401, pUnit:GetMainTank()) 
end

function ThunderLizard_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ThunderLizard_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ThunderLizard_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3130, 1, "ThunderLizard_OnCombat")
RegisterUnitEvent(3130, 2, "ThunderLizard_OnLeaveCombat")
RegisterUnitEvent(3130, 3, "ThunderLizard_OnKilledTarget")
RegisterUnitEvent(3130, 4, "ThunderLizard_OnDied")