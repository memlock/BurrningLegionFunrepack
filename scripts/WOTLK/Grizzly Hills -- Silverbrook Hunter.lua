--[[ Grizzly Hills -- Silverbrook Hunter.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function SilverbrookHunter_OnCombat(Unit, Event)
Unit:RegisterEvent("SilverbrookHunter_ImprovedWingClip", 14000, 0)
Unit:RegisterEvent("SilverbrookHunter_Shoot", 6000, 0)
end

function SilverbrookHunter_ImprovedWingClip(pUnit, Event) 
pUnit:FullCastSpellOnTarget(47168, pUnit:GetMainTank()) 
end

function SilverbrookHunter_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function SilverbrookHunter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SilverbrookHunter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SilverbrookHunter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27546, 1, "SilverbrookHunter_OnCombat")
RegisterUnitEvent(27546, 2, "SilverbrookHunter_OnLeaveCombat")
RegisterUnitEvent(27546, 3, "SilverbrookHunter_OnKilledTarget")
RegisterUnitEvent(27546, 4, "SilverbrookHunter_OnDied")