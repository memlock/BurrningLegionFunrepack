--[[ The Barrens -- Oasis Snapjaw.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function OasisSnapjaw_OnCombat(Unit, Event)
Unit:RegisterEvent("OasisSnapjaw_SlingDirt", 12000, 0)
end

function OasisSnapjaw_SlingDirt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6530, pUnit:GetMainTank()) 
end

function OasisSnapjaw_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function OasisSnapjaw_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function OasisSnapjaw_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3461, 1, "OasisSnapjaw_OnCombat")
RegisterUnitEvent(3461, 2, "OasisSnapjaw_OnLeaveCombat")
RegisterUnitEvent(3461, 3, "OasisSnapjaw_OnKilledTarget")
RegisterUnitEvent(3461, 4, "OasisSnapjaw_OnDied")