--[[ The Barrens -- Prospector Khazgorm.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function ProspectorKhazgorm_OnCombat(Unit, Event)
Unit:RegisterEvent("ProspectorKhazgorm_Backhand", 8000, 0)
end

function ProspectorKhazgorm_Backhand(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6253, pUnit:GetMainTank()) 
end

function ProspectorKhazgorm_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ProspectorKhazgorm_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ProspectorKhazgorm_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5849, 1, "ProspectorKhazgorm_OnCombat")
RegisterUnitEvent(5849, 2, "ProspectorKhazgorm_OnLeaveCombat")
RegisterUnitEvent(5849, 3, "ProspectorKhazgorm_OnKilledTarget")
RegisterUnitEvent(5849, 4, "ProspectorKhazgorm_OnDied")