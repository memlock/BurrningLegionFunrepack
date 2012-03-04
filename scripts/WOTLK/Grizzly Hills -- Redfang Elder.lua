--[[ Grizzly Hills -- Redfang Elder.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function RedfangElder_OnCombat(Unit, Event)
Unit:RegisterEvent("RedfangElder_ChainHeal", 12000, 0)
Unit:RegisterEvent("RedfangElder_Hurricane", 10000, 0)
end

function RedfangElder_ChainHeal(pUnit, Event) 
pUnit:CastSpell(14900) 
end

function RedfangElder_Hurricane(pUnit, Event) 
pUnit:CastSpell(32717) 
end

function RedfangElder_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RedfangElder_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RedfangElder_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26436, 1, "RedfangElder_OnCombat")
RegisterUnitEvent(26436, 2, "RedfangElder_OnLeaveCombat")
RegisterUnitEvent(26436, 3, "RedfangElder_OnKilledTarget")
RegisterUnitEvent(26436, 4, "RedfangElder_OnDied")