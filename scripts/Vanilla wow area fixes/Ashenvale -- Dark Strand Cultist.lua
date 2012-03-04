--[[ Ashenvale -- Dark Strand Cultist.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function DarkStrandCultist_OnCombat(Unit, Event)
Unit:RegisterEvent("DarkStrandCultist_SummonImp", 1000, 1)
Unit:RegisterEvent("DarkStrandCultist_Corruption", 2000, 2)
Unit:RegisterEvent("DarkStrandCultist_ShadowBolt", 8000, 0)
end

function DarkStrandCultist_SummonImp(pUnit, Event) 
pUnit:CastSpell(11939) 
end

function DarkStrandCultist_Corruption(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6222, pUnit:GetMainTank()) 
end

function DarkStrandCultist_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20791, pUnit:GetMainTank()) 
end

function DarkStrandCultist_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DarkStrandCultist_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DarkStrandCultist_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3725, 1, "DarkStrandCultist_OnCombat")
RegisterUnitEvent(3725, 2, "DarkStrandCultist_OnLeaveCombat")
RegisterUnitEvent(3725, 3, "DarkStrandCultist_OnKilledTarget")
RegisterUnitEvent(3725, 4, "DarkStrandCultist_OnDied")