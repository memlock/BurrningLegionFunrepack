--[[ Durotar -- Lightning Hide.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function LightningHide_OnCombat(Unit, Event)
Unit:RegisterEvent("LightningHide_LizardBolt", 5000, 0)
end

function LightningHide_LizardBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5401, pUnit:GetMainTank()) 
end

function LightningHide_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LightningHide_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LightningHide_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3131, 1, "LightningHide_OnCombat")
RegisterUnitEvent(3131, 2, "LightningHide_OnLeaveCombat")
RegisterUnitEvent(3131, 3, "LightningHide_OnKilledTarget")
RegisterUnitEvent(3131, 4, "LightningHide_OnDied")