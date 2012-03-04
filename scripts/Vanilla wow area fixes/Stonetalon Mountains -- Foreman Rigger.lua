--[[ Stonetalon Mountains -- Foreman Rigger.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function ForemanRigger_OnCombat(Unit, Event)
Unit:RegisterEvent("ForemanRigger_Net", 10000, 0)
Unit:RegisterEvent("ForemanRigger_PierceArmor", 12000, 1)
end

function ForemanRigger_Net(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6533, pUnit:GetRandomPlayer(4)) 
end

function ForemanRigger_PierceArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6016, pUnit:GetMainTank()) 
end

function ForemanRigger_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ForemanRigger_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ForemanRigger_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5931, 1, "ForemanRigger_OnCombat")
RegisterUnitEvent(5931, 2, "ForemanRigger_OnLeaveCombat")
RegisterUnitEvent(5931, 3, "ForemanRigger_OnKilledTarget")
RegisterUnitEvent(5931, 4, "ForemanRigger_OnDied")