--[[ Grizzly Hills -- Iceshard Elemental.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function IceshardElemental_OnCombat(Unit, Event)
Unit:RegisterEvent("IceshardElemental_IceSpike", 8000, 0)
end

function IceshardElemental_IceSpike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50094, pUnit:GetMainTank()) 
end

function IceshardElemental_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function IceshardElemental_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function IceshardElemental_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24228, 1, "IceshardElemental_OnCombat")
RegisterUnitEvent(24228, 2, "IceshardElemental_OnLeaveCombat")
RegisterUnitEvent(24228, 3, "IceshardElemental_OnKilledTarget")
RegisterUnitEvent(24228, 4, "IceshardElemental_OnDied")