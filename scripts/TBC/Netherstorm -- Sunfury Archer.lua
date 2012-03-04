--[[ Netherstorm -- Sunfury Archer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 27th, 2008. ]]

function Sunfury_Archer_OnCombat(Unit, Event)
Unit:RegisterEvent("Sunfury_Archer_Net", 8000, 0)
Unit:RegisterEvent("Sunfury_Archer_Immolation_Arrow", 6000, 0)
Unit:RegisterEvent("Sunfury_Archer_Shoot", 6000, 0)
end

function Sunfury_Archer_Immolation_Arrow(pUnit, Event) 
pUnit:FullCastSpellOnTarget(37847, pUnit:GetMainTank()) 
end

function Sunfury_Archer_Net(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12024, pUnit:GetMainTank()) 
end

function Sunfury_Archer_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function Sunfury_Archer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Sunfury_Archer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Sunfury_Archer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(19707, 1, "Sunfury_Archer_OnCombat")
RegisterUnitEvent(19707, 2, "Sunfury_Archer_OnLeaveCombat")
RegisterUnitEvent(19707, 3, "Sunfury_Archer_OnKilledTarget")
RegisterUnitEvent(19707, 4, "Sunfury_Archer_OnDied")