--[[ Crystalsong Forest -- Unbound Corrupter.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function UnboundCorrupter_OnCombat(Unit, Event)
Unit:RegisterEvent("UnboundCorrupter_ArcaneBolt", 6000, 0)
Unit:RegisterEvent("UnboundCorrupter_LeyCurse", 5000, 1)
Unit:RegisterEvent("UnboundCorrupter_TransferredPower", 4000, 1)
end

function UnboundCorrupter_ArcaneBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(38204, pUnit:GetMainTank()) 
end

function UnboundCorrupter_LeyCurse(pUnit, Event) 
pUnit:FullCastSpellOnTarget(58667, pUnit:GetMainTank()) 
end

function UnboundCorrupter_TransferredPower(pUnit, Event) 
pUnit:CastSpell(58270) 
end

function UnboundCorrupter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function UnboundCorrupter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function UnboundCorrupter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(30868, 1, "UnboundCorrupter_OnCombat")
RegisterUnitEvent(30868, 2, "UnboundCorrupter_OnLeaveCombat")
RegisterUnitEvent(30868, 3, "UnboundCorrupter_OnKilledTarget")
RegisterUnitEvent(30868, 4, "UnboundCorrupter_OnDied")