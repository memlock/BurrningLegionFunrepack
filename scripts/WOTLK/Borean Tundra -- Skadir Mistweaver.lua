--[[ Borean Tundra -- Skadir Mistweaver.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function SkadirMistweaver_OnCombat(Unit, Event)
Unit:RegisterEvent("SkadirMistweaver_MistofStrangulation", 8000, 0)
end

function SkadirMistweaver_MistofStrangulation(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49816, pUnit:GetMainTank()) 
end

function SkadirMistweaver_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SkadirMistweaver_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SkadirMistweaver_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25613, 1, "SkadirMistweaver_OnCombat")
RegisterUnitEvent(25613, 2, "SkadirMistweaver_OnLeaveCombat")
RegisterUnitEvent(25613, 3, "SkadirMistweaver_OnKilledTarget")
RegisterUnitEvent(25613, 4, "SkadirMistweaver_OnDied")