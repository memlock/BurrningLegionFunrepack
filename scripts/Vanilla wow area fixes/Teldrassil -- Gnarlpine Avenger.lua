--[[ Teldrassil -- Gnarlpine Avenger.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function GnarlpineAvenger_OnCombat(Unit, Event)
Unit:RegisterEvent("GnarlpineAvenger_GnarlpineVengance", 8000, 0)
end

function GnarlpineAvenger_GnarlpineVengance(pUnit, Event) 
pUnit:CastSpell(5628) 
end

function GnarlpineAvenger_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GnarlpineAvenger_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GnarlpineAvenger_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2011, 1, "GnarlpineAvenger_OnCombat")
RegisterUnitEvent(2011, 2, "GnarlpineAvenger_OnLeaveCombat")
RegisterUnitEvent(2011, 3, "GnarlpineAvenger_OnKilledTarget")
RegisterUnitEvent(2011, 4, "GnarlpineAvenger_OnDied")