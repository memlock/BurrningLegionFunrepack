--[[ Grizzly Hills -- Drakkari Witch Doctor.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function DrakkariWitchDoctor_OnCombat(Unit, Event)
Unit:RegisterEvent("DrakkariWitchDoctor_SuperiorHealingWard", 4000, 1)
Unit:RegisterEvent("DrakkariWitchDoctor_VoodooDoll", 7000, 0)
end

function DrakkariWitchDoctor_SuperiorHealingWard(pUnit, Event) 
pUnit:CastSpell(32194) 
end

function DrakkariWitchDoctor_VoodooDoll(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52695, pUnit:GetMainTank()) 
end

function DrakkariWitchDoctor_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DrakkariWitchDoctor_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DrakkariWitchDoctor_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27555, 1, "DrakkariWitchDoctor_OnCombat")
RegisterUnitEvent(27555, 2, "DrakkariWitchDoctor_OnLeaveCombat")
RegisterUnitEvent(27555, 3, "DrakkariWitchDoctor_OnKilledTarget")
RegisterUnitEvent(27555, 4, "DrakkariWitchDoctor_OnDied")