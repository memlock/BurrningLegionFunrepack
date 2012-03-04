--[[ Darkshore -- Anaya Dawnrunner.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 30th, 2008. ]]

function AnayaDawnrunner_OnCombat(Unit, Event)
Unit:RegisterEvent("AnayaDawnrunner_BansheeCurse", 8000, 0)
end

function AnayaDawnrunner_BansheeCurse(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5884, pUnit:GetMainTank()) 
end

function AnayaDawnrunner_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AnayaDawnrunner_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AnayaDawnrunner_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3667, 1, "AnayaDawnrunner_OnCombat")
RegisterUnitEvent(3667, 2, "AnayaDawnrunner_OnLeaveCombat")
RegisterUnitEvent(3667, 3, "AnayaDawnrunner_OnKilledTarget")
RegisterUnitEvent(3667, 4, "AnayaDawnrunner_OnDied")