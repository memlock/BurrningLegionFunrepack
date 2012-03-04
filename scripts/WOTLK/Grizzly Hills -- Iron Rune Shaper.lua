--[[ Grizzly Hills -- Iron Rune Shaper.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function IronRuneShaper_OnCombat(Unit, Event)
Unit:RegisterEvent("IronRuneShaper_MoldRune", 3000, 1)
end

function IronRuneShaper_MoldRune(pUnit, Event) 
pUnit:CastSpell(52622) 
end

function IronRuneShaper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function IronRuneShaper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function IronRuneShaper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26270, 1, "IronRuneShaper_OnCombat")
RegisterUnitEvent(26270, 2, "IronRuneShaper_OnLeaveCombat")
RegisterUnitEvent(26270, 3, "IronRuneShaper_OnKilledTarget")
RegisterUnitEvent(26270, 4, "IronRuneShaper_OnDied")