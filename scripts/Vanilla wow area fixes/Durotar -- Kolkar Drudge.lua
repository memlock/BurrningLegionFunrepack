--[[ Durotar -- Kolkar Drudge.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function KolkarDrudge_OnCombat(Unit, Event)
Unit:RegisterEvent("KolkarDrudge_DustCloud", 12000, 0)
end

function KolkarDrudge_DustCloud(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7272, pUnit:GetMainTank()) 
end

function KolkarDrudge_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function KolkarDrudge_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function KolkarDrudge_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3119, 1, "KolkarDrudge_OnCombat")
RegisterUnitEvent(3119, 2, "KolkarDrudge_OnLeaveCombat")
RegisterUnitEvent(3119, 3, "KolkarDrudge_OnKilledTarget")
RegisterUnitEvent(3119, 4, "KolkarDrudge_OnDied")