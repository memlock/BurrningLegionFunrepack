--[[ Azshara -- Timberweb Recluse.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function TimberwebRecluse_OnCombat(Unit, Event)
Unit:RegisterEvent("TimberwebRecluse_Web", 10000, 0)
end

function TimberwebRecluse_Web(pUnit, Event) 
pUnit:FullCastSpellOnTarget(745, pUnit:GetMainTank()) 
end

function TimberwebRecluse_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TimberwebRecluse_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TimberwebRecluse_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(8762, 1, "TimberwebRecluse_OnCombat")
RegisterUnitEvent(8762, 2, "TimberwebRecluse_OnLeaveCombat")
RegisterUnitEvent(8762, 3, "TimberwebRecluse_OnKilledTarget")
RegisterUnitEvent(8762, 4, "TimberwebRecluse_OnDied")