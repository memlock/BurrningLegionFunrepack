--[[ Borean Tundra -- Ghostly Sage.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function GhostlySage_OnCombat(Unit, Event)
Unit:RegisterEvent("GhostlySage_Moonfire", 6000, 0)
Unit:RegisterEvent("GhostlySage_Wrath", 8000, 0)
end

function GhostlySage_Moonfire(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15798, pUnit:GetMainTank()) 
end

function GhostlySage_Wrath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9739, pUnit:GetMainTank()) 
end

function GhostlySage_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GhostlySage_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GhostlySage_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25351, 1, "GhostlySage_OnCombat")
RegisterUnitEvent(25351, 2, "GhostlySage_OnLeaveCombat")
RegisterUnitEvent(25351, 3, "GhostlySage_OnKilledTarget")
RegisterUnitEvent(25351, 4, "GhostlySage_OnDied")