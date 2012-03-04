--[[ Grizzly Hills -- Runic Lightning Gunner.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function RunicLightningGunner_OnCombat(Unit, Event)
Unit:RegisterEvent("RunicLightningGunner_LightningGunShot", 6000, 0)
end

function RunicLightningGunner_LightningGunShot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(46982, pUnit:GetMainTank()) 
end

function RunicLightningGunner_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RunicLightningGunner_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RunicLightningGunner_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26414, 1, "RunicLightningGunner_OnCombat")
RegisterUnitEvent(26414, 2, "RunicLightningGunner_OnLeaveCombat")
RegisterUnitEvent(26414, 3, "RunicLightningGunner_OnKilledTarget")
RegisterUnitEvent(26414, 4, "RunicLightningGunner_OnDied")