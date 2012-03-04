--[[ Dragonblight -- Jormungar Tunneler.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function JormungarTunneler_OnCombat(Unit, Event)
Unit:RegisterEvent("JormungarTunneler_CorrodeFlesh", 4000, 1)
end

function JormungarTunneler_CorrodeFlesh(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51879, pUnit:GetMainTank()) 
end

function JormungarTunneler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function JormungarTunneler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function JormungarTunneler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26467, 1, "JormungarTunneler_OnCombat")
RegisterUnitEvent(26467, 2, "JormungarTunneler_OnLeaveCombat")
RegisterUnitEvent(26467, 3, "JormungarTunneler_OnKilledTarget")
RegisterUnitEvent(26467, 4, "JormungarTunneler_OnDied")