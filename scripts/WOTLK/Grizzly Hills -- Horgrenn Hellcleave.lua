--[[ Grizzly Hills -- Horgrenn Hellcleave.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function HorgrennHellcleave_OnCombat(Unit, Event)
Unit:RegisterEvent("HorgrennHellcleave_IntimidatingRoar", 12000, 1)
Unit:RegisterEvent("HorgrennHellcleave_MortalStrike", 7000, 0)
Unit:RegisterEvent("HorgrennHellcleave_SunderArmor", 6000, 0)
Unit:RegisterEvent("HorgrennHellcleave_Whirlwind", 8000, 0)
end

function HorgrennHellcleave_IntimidatingRoar(pUnit, Event) 
pUnit:FullCastSpellOnTarget(16508, pUnit:GetMainTank()) 
end

function HorgrennHellcleave_MortalStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(39171, pUnit:GetMainTank()) 
end

function HorgrennHellcleave_SunderArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15572, pUnit:GetMainTank()) 
end

function HorgrennHellcleave_Whirlwind(pUnit, Event) 
pUnit:CastSpell(38619) 
end

function HorgrennHellcleave_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HorgrennHellcleave_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HorgrennHellcleave_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27718, 1, "HorgrennHellcleave_OnCombat")
RegisterUnitEvent(27718, 2, "HorgrennHellcleave_OnLeaveCombat")
RegisterUnitEvent(27718, 3, "HorgrennHellcleave_OnKilledTarget")
RegisterUnitEvent(27718, 4, "HorgrennHellcleave_OnDied")