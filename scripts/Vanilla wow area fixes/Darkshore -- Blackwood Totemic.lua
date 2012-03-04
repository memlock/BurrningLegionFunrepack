--[[ Darkshore -- Blackwood Totemic.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 30th, 2008. ]]

function BlackwoodTotemic_OnCombat(Unit, Event)
Unit:RegisterEvent("BlackwoodTotemic_HealingWard", 13000, 0)
end

function BlackwoodTotemic_HealingWard(pUnit, Event) 
pUnit:CastSpell(5606) 
end

function BlackwoodTotemic_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BlackwoodTotemic_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BlackwoodTotemic_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2169, 1, "BlackwoodTotemic_OnCombat")
RegisterUnitEvent(2169, 2, "BlackwoodTotemic_OnLeaveCombat")
RegisterUnitEvent(2169, 3, "BlackwoodTotemic_OnKilledTarget")
RegisterUnitEvent(2169, 4, "BlackwoodTotemic_OnDied")