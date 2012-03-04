--[[ Borean Tundra -- Gorloc Gibberer.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function GorlocGibberer_OnCombat(Unit, Event)
Unit:RegisterEvent("GorlocGibberer_DeepDredge", 6000, 0)
Unit:RegisterEvent("GorlocGibberer_Whirlwind", 9000, 0)
end

function GorlocGibberer_DeepDredge(pUnit, Event) 
pUnit:CastSpell(50520) 
end

function GorlocGibberer_Whirlwind(pUnit, Event) 
pUnit:CastSpell(15576) 
end

function GorlocGibberer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GorlocGibberer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GorlocGibberer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25686, 1, "GorlocGibberer_OnCombat")
RegisterUnitEvent(25686, 2, "GorlocGibberer_OnLeaveCombat")
RegisterUnitEvent(25686, 3, "GorlocGibberer_OnKilledTarget")
RegisterUnitEvent(25686, 4, "GorlocGibberer_OnDied")