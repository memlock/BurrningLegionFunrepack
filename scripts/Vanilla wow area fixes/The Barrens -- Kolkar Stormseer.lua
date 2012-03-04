--[[ The Barrens -- Kolkar Stormseer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function KolkarStormseer_OnCombat(Unit, Event)
Unit:RegisterEvent("KolkarStormseer_FlingTorch", 2000, 1)
Unit:RegisterEvent("KolkarStormseer_LightningBolt", 8000, 0)
Unit:RegisterEvent("KolkarStormseer_LightningCloud", 4000, 1)
end

function KolkarStormseer_FlingTorch(pUnit, Event) 
pUnit:CastSpell(14292) 
end

function KolkarStormseer_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9532, pUnit:GetMainTank()) 
end

function KolkarStormseer_LightningCloud(pUnit, Event) 
pUnit:CastSpell(6535) 
end

function KolkarStormseer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function KolkarStormseer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function KolkarStormseer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(9523, 1, "KolkarStormseer_OnCombat")
RegisterUnitEvent(9523, 2, "KolkarStormseer_OnLeaveCombat")
RegisterUnitEvent(9523, 3, "KolkarStormseer_OnKilledTarget")
RegisterUnitEvent(9523, 4, "KolkarStormseer_OnDied")