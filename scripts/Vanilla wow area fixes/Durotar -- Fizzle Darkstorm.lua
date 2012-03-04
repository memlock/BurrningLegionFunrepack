--[[ Durotar -- Fizzle Darkstorm.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function FizzleDarkstorm_OnCombat(Unit, Event)
Unit:RegisterEvent("FizzleDarkstorm_SoulSiphon", 13000, 0)
Unit:RegisterEvent("FizzleDarkstorm_ShadowBolt", 8000, 0)
Unit:RegisterEvent("FizzleDarkstorm_SummonImp", 1000, 1)
end

function FizzleDarkstorm_SummonImp(pUnit, Event) 
pUnit:CastSpell(11939) 
end

function FizzleDarkstorm_SoulSiphon(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7290, pUnit:GetMainTank()) 
end

function FizzleDarkstorm_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20791, pUnit:GetMainTank()) 
end

function FizzleDarkstorm_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FizzleDarkstorm_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FizzleDarkstorm_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3203, 1, "FizzleDarkstorm_OnCombat")
RegisterUnitEvent(3203, 2, "FizzleDarkstorm_OnLeaveCombat")
RegisterUnitEvent(3203, 3, "FizzleDarkstorm_OnKilledTarget")
RegisterUnitEvent(3203, 4, "FizzleDarkstorm_OnDied")