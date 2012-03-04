--[[ Teldrassil -- Gnarlpine Augur.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function GnarlpineAugur_OnCombat(Unit, Event)
Unit:RegisterEvent("GnarlpineAugur_GnarlpineVengance", 8000, 0)
end

function GnarlpineAugur_GnarlpineVengance(pUnit, Event) 
pUnit:CastSpell(5628) 
end

function GnarlpineAugur_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GnarlpineAugur_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GnarlpineAugur_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2011, 1, "GnarlpineAugur_OnCombat")
RegisterUnitEvent(2011, 2, "GnarlpineAugur_OnLeaveCombat")
RegisterUnitEvent(2011, 3, "GnarlpineAugur_OnKilledTarget")
RegisterUnitEvent(2011, 4, "GnarlpineAugur_OnDied")