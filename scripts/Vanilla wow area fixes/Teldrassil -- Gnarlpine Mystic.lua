--[[ Teldrassil -- Gnarlpine Mystic.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function GnarlpineMystic_OnCombat(Unit, Event)
Unit:RegisterEvent("GnarlpineMystic_Wrath", 6000, 0)
end

function GnarlpineMystic_Wrath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9739, pUnit:GetMainTank()) 
end

function GnarlpineMystic_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GnarlpineMystic_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GnarlpineMystic_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(7235, 1, "GnarlpineMystic_OnCombat")
RegisterUnitEvent(7235, 2, "GnarlpineMystic_OnLeaveCombat")
RegisterUnitEvent(7235, 3, "GnarlpineMystic_OnKilledTarget")
RegisterUnitEvent(7235, 4, "GnarlpineMystic_OnDied")