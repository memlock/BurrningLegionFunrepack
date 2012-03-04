--[[ Borean Tundra -- Frozen Elemental.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function FrozenElemental_OnCombat(Unit, Event)
Unit:RegisterEvent("FrozenElemental_IceSpike", 8000, 0)
end

function FrozenElemental_IceSpike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50094, pUnit:GetMainTank()) 
end

function FrozenElemental_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FrozenElemental_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FrozenElemental_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25715, 1, "FrozenElemental_OnCombat")
RegisterUnitEvent(25715, 2, "FrozenElemental_OnLeaveCombat")
RegisterUnitEvent(25715, 3, "FrozenElemental_OnKilledTarget")
RegisterUnitEvent(25715, 4, "FrozenElemental_OnDied")