--[[ Darkshore -- Fallenroot Satyr.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 30th, 2008. ]]

function FallenrootSatyr_OnCombat(Unit, Event)
Unit:RegisterEvent("FallenrootSatyr_DefensiveStance", 2000, 1)
Unit:RegisterEvent("FallenrootSatyr_Disarm", 9000, 0)
end

function FallenrootSatyr_DefensiveStance(pUnit, Event) 
pUnit:CastSpell(7164) 
end

function FallenrootSatyr_Disarm(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6713, pUnit:GetMainTank()) 
end

function FallenrootSatyr_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FallenrootSatyr_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FallenrootSatyr_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4788, 1, "FallenrootSatyr_OnCombat")
RegisterUnitEvent(4788, 2, "FallenrootSatyr_OnLeaveCombat")
RegisterUnitEvent(4788, 3, "FallenrootSatyr_OnKilledTarget")
RegisterUnitEvent(4788, 4, "FallenrootSatyr_OnDied")