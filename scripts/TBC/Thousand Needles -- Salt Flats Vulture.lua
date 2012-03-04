--[[ Thousand Needles -- Salt Flats Vulture.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function SaltFlatsVulture_OnCombat(Unit, Event)
Unit:RegisterEvent("SaltFlatsVulture_Execute", 6000, 0)
end

function SaltFlatsVulture_Execute(pUnit, Event) 
if Unit:GetHealthEnemy() < 20 then
pUnit:FullCastSpellOnTarget(7160, pUnit:GetMainTank()) 
end
end

function SaltFlatsVulture_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SaltFlatsVulture_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SaltFlatsVulture_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4158, 1, "SaltFlatsVulture_OnCombat")
RegisterUnitEvent(4158, 2, "SaltFlatsVulture_OnLeaveCombat")
RegisterUnitEvent(4158, 3, "SaltFlatsVulture_OnKilledTarget")
RegisterUnitEvent(4158, 4, "SaltFlatsVulture_OnDied")