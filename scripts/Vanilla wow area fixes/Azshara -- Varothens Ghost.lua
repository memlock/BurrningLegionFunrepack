--[[ Azshara -- Varothens Ghost.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function VarothensGhost_OnCombat(Unit, Event)
Unit:RegisterEvent("VarothensGhost_CurseofWeakness", 8000, 0)
end

function VarothensGhost_CurseofWeakness(pUnit, Event) 
pUnit:FullCastSpellOnTarget(21007, pUnit:GetMainTank()) 
end

function VarothensGhost_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function VarothensGhost_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function VarothensGhost_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6118, 1, "VarothensGhost_OnCombat")
RegisterUnitEvent(6118, 2, "VarothensGhost_OnLeaveCombat")
RegisterUnitEvent(6118, 3, "VarothensGhost_OnKilledTarget")
RegisterUnitEvent(6118, 4, "VarothensGhost_OnDied")