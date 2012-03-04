--[[ Dragonblight -- Ice Revenant.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function IceRevenant_OnCombat(Unit, Event)
Unit:RegisterEvent("IceRevenant_IcyTorrent", 7000, 0)
end

function IceRevenant_IcyTorrent(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51584, pUnit:GetMainTank()) 
end

function IceRevenant_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function IceRevenant_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function IceRevenant_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26283, 1, "IceRevenant_OnCombat")
RegisterUnitEvent(26283, 2, "IceRevenant_OnLeaveCombat")
RegisterUnitEvent(26283, 3, "IceRevenant_OnKilledTarget")
RegisterUnitEvent(26283, 4, "IceRevenant_OnDied")