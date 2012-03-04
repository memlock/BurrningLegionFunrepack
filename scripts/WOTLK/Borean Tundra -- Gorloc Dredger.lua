--[[ Borean Tundra -- Gorloc Dredger.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function GorlocDredger_OnCombat(Unit, Event)
Unit:RegisterEvent("GorlocDredger_DeepDredge", 6000, 0)
Unit:RegisterEvent("GorlocDredger_Whirlwind", 9000, 0)
end

function GorlocDredger_DeepDredge(pUnit, Event) 
pUnit:CastSpell(50520) 
end

function GorlocDredger_Whirlwind(pUnit, Event) 
pUnit:CastSpell(15576) 
end

function GorlocDredger_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GorlocDredger_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GorlocDredger_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25701, 1, "GorlocDredger_OnCombat")
RegisterUnitEvent(25701, 2, "GorlocDredger_OnLeaveCombat")
RegisterUnitEvent(25701, 3, "GorlocDredger_OnKilledTarget")
RegisterUnitEvent(25701, 4, "GorlocDredger_OnDied")