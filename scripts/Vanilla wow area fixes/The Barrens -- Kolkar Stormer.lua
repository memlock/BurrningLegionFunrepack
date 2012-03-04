--[[ The Barrens -- Kolkar Stormer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function KolkarStormer_OnCombat(Unit, Event)
Unit:RegisterEvent("KolkarStormer_LightningBolt", 8000, 0)
Unit:RegisterEvent("KolkarStormer_LightningCloud", 4000, 1)
end

function KolkarStormer_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9532, pUnit:GetMainTank()) 
end

function KolkarStormer_LightningCloud(pUnit, Event) 
pUnit:CastSpell(6535) 
end

function KolkarStormer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function KolkarStormer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function KolkarStormer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3273, 1, "KolkarStormer_OnCombat")
RegisterUnitEvent(3273, 2, "KolkarStormer_OnLeaveCombat")
RegisterUnitEvent(3273, 3, "KolkarStormer_OnKilledTarget")
RegisterUnitEvent(3273, 4, "KolkarStormer_OnDied")