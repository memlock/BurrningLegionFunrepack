--[[ Borean Tundra -- Kvaldir Mistweaver.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function KvaldirMistweaver_OnCombat(Unit, Event)
Unit:RegisterEvent("KvaldirMistweaver_MistofStrangulation", 8000, 0)
end

function KvaldirMistweaver_MistofStrangulation(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49816, pUnit:GetMainTank()) 
end

function KvaldirMistweaver_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function KvaldirMistweaver_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function KvaldirMistweaver_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25479, 1, "KvaldirMistweaver_OnCombat")
RegisterUnitEvent(25479, 2, "KvaldirMistweaver_OnLeaveCombat")
RegisterUnitEvent(25479, 3, "KvaldirMistweaver_OnKilledTarget")
RegisterUnitEvent(25479, 4, "KvaldirMistweaver_OnDied")