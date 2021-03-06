--[[ Mulgore -- Seer Graytongue.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function SeerGraytongue_OnCombat(Unit, Event)
Unit:RegisterEvent("SeerGraytongue_MarkoftheWild", 1000, 1)
end

function SeerGraytongue_MarkoftheWild(pUnit, Event) 
pUnit:CastSpell(1126) 
end

function SeerGraytongue_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SeerGraytongue_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SeerGraytongue_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2982, 1, "SeerGraytongue_OnCombat")
RegisterUnitEvent(2982, 2, "SeerGraytongue_OnLeaveCombat")
RegisterUnitEvent(2982, 3, "SeerGraytongue_OnKilledTarget")
RegisterUnitEvent(2982, 4, "SeerGraytongue_OnDied")