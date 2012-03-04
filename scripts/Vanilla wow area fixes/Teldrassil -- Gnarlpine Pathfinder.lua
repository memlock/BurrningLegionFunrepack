--[[ Teldrassil -- Gnarlpine Pathfinder.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function GnarlpinePathfinder_OnCombat(Unit, Event)
Unit:RegisterEvent("GnarlpinePathfinder_GnarlpineVengeance", 10000, 0)
Unit:RegisterEvent("GnarlpinePathfinder_Wrath", 6000, 0)
end

function GnarlpinePathfinder_GnarlpineVengeance(pUnit, Event) 
pUnit:CastSpell(5628) 
end

function GnarlpinePathfinder_Wrath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9739, pUnit:GetMainTank()) 
end

function GnarlpinePathfinder_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GnarlpinePathfinder_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GnarlpinePathfinder_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2012, 1, "GnarlpinePathfinder_OnCombat")
RegisterUnitEvent(2012, 2, "GnarlpinePathfinder_OnLeaveCombat")
RegisterUnitEvent(2012, 3, "GnarlpinePathfinder_OnKilledTarget")
RegisterUnitEvent(2012, 4, "GnarlpinePathfinder_OnDied")