--[[ Borean Tundra -- Glacial Ancient.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function GlacialAncient_OnCombat(Unit, Event)
Unit:RegisterEvent("GlacialAncient_FrostBreath", 8000, 0)
end

function GlacialAncient_FrostBreath(pUnit, Event) 
pUnit:CastSpell(50505) 
end

function GlacialAncient_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GlacialAncient_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GlacialAncient_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25709, 1, "GlacialAncient_OnCombat")
RegisterUnitEvent(25709, 2, "GlacialAncient_OnLeaveCombat")
RegisterUnitEvent(25709, 3, "GlacialAncient_OnKilledTarget")
RegisterUnitEvent(25709, 4, "GlacialAncient_OnDied")