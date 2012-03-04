--[[ Darknassus -- Arch Druid Fandral Staghelm.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 05th, 2008. ]]


function ArchDruidFandralStaghelm_OnCombat(Unit, Event)
Unit:RegisterEvent("ArchDruidFandralStaghelm_EntanglingRoots", 25000, 0)
Unit:RegisterEvent("ArchDruidFandralStaghelm_Rejuvenation", 35000, 0)
Unit:RegisterEvent("ArchDruidFandralStaghelm_SummonTreantAllies", 4000, 1)
Unit:RegisterEvent("ArchDruidFandralStaghelm_Wrath", 13000, 0)
end

function ArchDruidFandralStaghelm_EntanglingRoots(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20699, pUnit:GetMainTank()) 
end

function ArchDruidFandralStaghelm_Rejuvenation(pUnit, Event) 
pUnit:CastSpell(20701) 
end

function ArchDruidFandralStaghelm_SummonTreantAllies(pUnit, Event) 
pUnit:CastSpell(20702) 
end

function ArchDruidFandralStaghelm_Wrath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20698, pUnit:GetMainTank()) 
end

function ArchDruidFandralStaghelm_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ArchDruidFandralStaghelm_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ArchDruidFandralStaghelm_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3516, 1, "ArchDruidFandralStaghelm_OnCombat")
RegisterUnitEvent(3516, 2, "ArchDruidFandralStaghelm_OnLeaveCombat")
RegisterUnitEvent(3516, 3, "ArchDruidFandralStaghelm_OnKilledTarget")
RegisterUnitEvent(3516, 4, "ArchDruidFandralStaghelm_OnDied")