--[[ Netherstorm -- Sunfury Flamekeeper.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 27th, 2008. ]]

function Flamekeeper_OnCombat(Unit, Event)
Unit:RegisterEvent("Flamekeeper_Enrage", 25000, 0)
Unit:RegisterEvent("Flamekeeper_Flame", 10000, 0)
Unit:RegisterEvent("Flamekeeper_Torch", 5000, 0)
end

function Flamekeeper_Enrage(pUnit, Event) 
pUnit:CastSpell(8599) 
end

function Flamekeeper_Flame(pUnit, Event) 
pUnit:FullCastSpellOnTarget(33731, pUnit:GetMainTank()) 
end

function Flamekeeper_Torch(pUnit, Event) 
pUnit:FullCastSpellOnTarget(35857, pUnit:GetMainTank()) 
end

function Flamekeeper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Flamekeeper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Flamekeeper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(20221, 1, "Flamekeeper_OnCombat")
RegisterUnitEvent(20221, 2, "Flamekeeper_OnLeaveCombat")
RegisterUnitEvent(20221, 3, "Flamekeeper_OnKilledTarget")
RegisterUnitEvent(20221, 4, "Flamekeeper_OnDied")