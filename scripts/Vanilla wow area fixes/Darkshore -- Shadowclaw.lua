--[[ Darkshore -- Shadowclaw.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 04th, 2008. ]]


function Shadowclaw_OnCombat(Unit, Event)
Unit:RegisterEvent("Shadowclaw_CurseofWeakness", 4000, 1)
end

function Shadowclaw_CurseofWeakness(pUnit, Event) 
pUnit:FullCastSpellOnTarget(17227, pUnit:GetMainTank()) 
end

function Shadowclaw_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Shadowclaw_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Shadowclaw_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2175, 1, "Shadowclaw_OnCombat")
RegisterUnitEvent(2175, 2, "Shadowclaw_OnLeaveCombat")
RegisterUnitEvent(2175, 3, "Shadowclaw_OnKilledTarget")
RegisterUnitEvent(2175, 4, "Shadowclaw_OnDied")