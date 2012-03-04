--[[ Grizzly Hills -- Ice Serpent.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function IceSerpent_OnCombat(Unit, Event)
Unit:RegisterEvent("IceSerpent_IceSlash", 7000, 0)
end

function IceSerpent_IceSlash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51878, pUnit:GetMainTank()) 
end

function IceSerpent_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function IceSerpent_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function IceSerpent_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26446, 1, "IceSerpent_OnCombat")
RegisterUnitEvent(26446, 2, "IceSerpent_OnLeaveCombat")
RegisterUnitEvent(26446, 3, "IceSerpent_OnKilledTarget")
RegisterUnitEvent(26446, 4, "IceSerpent_OnDied")