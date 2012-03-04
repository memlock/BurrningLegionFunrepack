--[[ Borean Tundra -- Defendo-tank 66D.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function Defendotank66D_OnCombat(Unit, Event)
Unit:RegisterEvent("Defendotank66D_MachineGun", 8000, 0)
Unit:RegisterEvent("Defendotank66D_Shoot", 6000, 0)
end

function Defendotank66D_MachineGun(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49981, pUnit:GetMainTank()) 
end

function Defendotank66D_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49987, pUnit:GetMainTank()) 
end

function Defendotank66D_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Defendotank66D_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Defendotank66D_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25758, 1, "Defendotank66D_OnCombat")
RegisterUnitEvent(25758, 2, "Defendotank66D_OnLeaveCombat")
RegisterUnitEvent(25758, 3, "Defendotank66D_OnKilledTarget")
RegisterUnitEvent(25758, 4, "Defendotank66D_OnDied")