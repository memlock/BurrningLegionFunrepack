--[[ Netherstorm -- Tormented Citizen.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 27th, 2008. ]]

function Citizen_OnCombat(Unit, Event)
Unit:RegisterEvent("Citizen_Curse", 1000, 1)
Unit:RegisterEvent("Citizen_Bolt", 6000, 0)
Unit:RegisterEvent("Citizen_Immune", 6000, 0)
end

function Citizen_Curse(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11980, pUnit:GetMainTank()) 
end

function Citizen_Bolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9613, pUnit:GetMainTank()) 
end

function Citizen_Immune(pUnit, Event) 
pUnit:FullCastSpellOnTarget(36153, pUnit:GetMainTank()) 
end

function Citizen_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Citizen_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Citizen_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(21065, 1, "Citizen_OnCombat")
RegisterUnitEvent(21065, 2, "Citizen_OnLeaveCombat")
RegisterUnitEvent(21065, 3, "Citizen_OnKilledTarget")
RegisterUnitEvent(21065, 4, "Citizen_OnDied")