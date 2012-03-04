--[[ Grizzly Hills -- Amberpine Scout.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function AmberpineScout_OnCombat(Unit, Event)
Unit:RegisterEvent("AmberpineScout_Deterrence", 10000, 0)
Unit:RegisterEvent("AmberpineScout_PunctureArmor", 2000, 1)
Unit:RegisterEvent("AmberpineScout_Shoot", 6000, 0)
end

function AmberpineScout_Deterrence(pUnit, Event) 
pUnit:CastSpell(31567) 
end

function AmberpineScout_PunctureArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(35918, pUnit:GetMainTank()) 
end

function AmberpineScout_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15547, pUnit:GetMainTank()) 
end

function AmberpineScout_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AmberpineScout_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AmberpineScout_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27117, 1, "AmberpineScout_OnCombat")
RegisterUnitEvent(27117, 2, "AmberpineScout_OnLeaveCombat")
RegisterUnitEvent(27117, 3, "AmberpineScout_OnKilledTarget")
RegisterUnitEvent(27117, 4, "AmberpineScout_OnDied")