--[[ Dragonblight -- Arctic Ram.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function ArcticRam_OnCombat(Unit, Event)
Unit:RegisterEvent("ArcticRam_Gore", 8000, 0)
end

function ArcticRam_Gore(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32019, pUnit:GetMainTank()) 
end

function ArcticRam_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ArcticRam_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ArcticRam_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26426, 1, "ArcticRam_OnCombat")
RegisterUnitEvent(26426, 2, "ArcticRam_OnLeaveCombat")
RegisterUnitEvent(26426, 3, "ArcticRam_OnKilledTarget")
RegisterUnitEvent(26426, 4, "ArcticRam_OnDied")