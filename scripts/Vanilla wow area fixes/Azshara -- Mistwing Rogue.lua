--[[ Azshara -- Mistwing Rogue.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function MistwingRogue_OnCombat(Unit, Event)
Unit:RegisterEvent("MistwingRogue_LightningBolt", 8000, 0)
end

function MistwingRogue_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9532, pUnit:GetMainTank()) 
end

function MistwingRogue_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MistwingRogue_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MistwingRogue_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(8763, 1, "MistwingRogue_OnCombat")
RegisterUnitEvent(8763, 2, "MistwingRogue_OnLeaveCombat")
RegisterUnitEvent(8763, 3, "MistwingRogue_OnKilledTarget")
RegisterUnitEvent(8763, 4, "MistwingRogue_OnDied")