--[[ Grizzly Hills -- Silverbrook Trapper.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function SilverbrookTrapper_OnCombat(Unit, Event)
Unit:RegisterEvent("SilverbrookTrapper_HookedNet", 12000, 0)
Unit:RegisterEvent("SilverbrookTrapper_Shoot", 6000, 0)
end

function SilverbrookTrapper_HookedNet(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13608, pUnit:GetMainTank()) 
end

function SilverbrookTrapper_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function SilverbrookTrapper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SilverbrookTrapper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SilverbrookTrapper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26679, 1, "SilverbrookTrapper_OnCombat")
RegisterUnitEvent(26679, 2, "SilverbrookTrapper_OnLeaveCombat")
RegisterUnitEvent(26679, 3, "SilverbrookTrapper_OnKilledTarget")
RegisterUnitEvent(26679, 4, "SilverbrookTrapper_OnDied")