--[[ Desolace -- Elder Thunder Lizard.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function ElderThunderLizard_OnCombat(Unit, Event)
Unit:RegisterEvent("ElderThunderLizard_LizardBolt", 8000, 0)
end

function ElderThunderLizard_LizardBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5401, pUnit:GetMainTank()) 
end

function ElderThunderLizard_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ElderThunderLizard_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ElderThunderLizard_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4727, 1, "ElderThunderLizard_OnCombat")
RegisterUnitEvent(4727, 2, "ElderThunderLizard_OnLeaveCombat")
RegisterUnitEvent(4727, 3, "ElderThunderLizard_OnKilledTarget")
RegisterUnitEvent(4727, 4, "ElderThunderLizard_OnDied")