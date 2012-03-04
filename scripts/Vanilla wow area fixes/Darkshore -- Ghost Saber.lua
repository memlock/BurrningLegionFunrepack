--[[ Darkshore -- Ghost Saber.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 03th, 2008. ]]


function GhostSaber_OnCombat(Unit, Event)
Unit:RegisterEvent("GhostSaber_Claw", 6000, 0)
end

function GhostSaber_Claw(pUnit, Event) 
pUnit:FullCastSpellOnTarget(16829, pUnit:GetMainTank()) 
end

function GhostSaber_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GhostSaber_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GhostSaber_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3619, 1, "GhostSaber_OnCombat")
RegisterUnitEvent(3619, 2, "GhostSaber_OnLeaveCombat")
RegisterUnitEvent(3619, 3, "GhostSaber_OnKilledTarget")
RegisterUnitEvent(3619, 4, "GhostSaber_OnDied")