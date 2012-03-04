--[[ Azshara -- The Evalcharr.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function TheEvalcharr_OnCombat(Unit, Event)
Unit:RegisterEvent("TheEvalcharr_Fireball", 8000, 0)
Unit:RegisterEvent("TheEvalcharr_LightningBreath", 5000, 0)
end

function TheEvalcharr_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(21549, pUnit:GetMainTank()) 
end

function TheEvalcharr_LightningBreath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15797, pUnit:GetMainTank()) 
end

function TheEvalcharr_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TheEvalcharr_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TheEvalcharr_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(8660, 1, "TheEvalcharr_OnCombat")
RegisterUnitEvent(8660, 2, "TheEvalcharr_OnLeaveCombat")
RegisterUnitEvent(8660, 3, "TheEvalcharr_OnKilledTarget")
RegisterUnitEvent(8660, 4, "TheEvalcharr_OnDied")