--[[ Borean Tundra -- Glrggl.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function Glrggl_OnCombat(Unit, Event)
Unit:RegisterEvent("Glrggl_FlipperThwack", 8000, 0)
end

function Glrggl_FlipperThwack(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50169, pUnit:GetMainTank()) 
end

function Glrggl_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Glrggl_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Glrggl_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25203, 1, "Glrggl_OnCombat")
RegisterUnitEvent(25203, 2, "Glrggl_OnLeaveCombat")
RegisterUnitEvent(25203, 3, "Glrggl_OnKilledTarget")
RegisterUnitEvent(25203, 4, "Glrggl_OnDied")