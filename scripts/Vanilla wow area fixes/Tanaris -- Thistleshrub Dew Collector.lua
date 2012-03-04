--[[ Tanaris -- Thistleshrub Dew Collector.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function ThistleshrubDewCollector_OnCombat(Unit, Event)
Unit:RegisterEvent("ThistleshrubDewCollector_EntanglingRoots", 10000, 0)
end

function ThistleshrubDewCollector_EntanglingRoots(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11922, pUnit:GetMainTank()) 
end

function ThistleshrubDewCollector_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ThistleshrubDewCollector_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ThistleshrubDewCollector_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5481, 1, "ThistleshrubDewCollector_OnCombat")
RegisterUnitEvent(5481, 2, "ThistleshrubDewCollector_OnLeaveCombat")
RegisterUnitEvent(5481, 3, "ThistleshrubDewCollector_OnKilledTarget")
RegisterUnitEvent(5481, 4, "ThistleshrubDewCollector_OnDied")