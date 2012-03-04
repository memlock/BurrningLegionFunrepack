--[[ Borean Tundra -- Clam Master K.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function ClamMasterK_OnCombat(Unit, Event)
Unit:RegisterEvent("ClamMasterK_HookedNet", 8000, 0)
end

function ClamMasterK_HookedNet(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49711, pUnit:GetMainTank()) 
end

function ClamMasterK_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ClamMasterK_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ClamMasterK_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25800, 1, "ClamMasterK_OnCombat")
RegisterUnitEvent(25800, 2, "ClamMasterK_OnLeaveCombat")
RegisterUnitEvent(25800, 3, "ClamMasterK_OnKilledTarget")
RegisterUnitEvent(25800, 4, "ClamMasterK_OnDied")