--[[ Ashenvale -- Dal Bloodclaw.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function DalBloodclaw_OnCombat(Unit, Event)
Unit:RegisterEvent("DalBloodclaw_Disarm", 9000, 0)
Unit:RegisterEvent("DalBloodclaw_Revenge", 6000, 0)
end

function DalBloodclaw_Disarm(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6713, pUnit:GetMainTank()) 
end

function DalBloodclaw_Revenge(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12170, pUnit:GetMainTank()) 
end

function DalBloodclaw_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DalBloodclaw_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DalBloodclaw_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3987, 1, "DalBloodclaw_OnCombat")
RegisterUnitEvent(3987, 2, "DalBloodclaw_OnLeaveCombat")
RegisterUnitEvent(3987, 3, "DalBloodclaw_OnKilledTarget")
RegisterUnitEvent(3987, 4, "DalBloodclaw_OnDied")