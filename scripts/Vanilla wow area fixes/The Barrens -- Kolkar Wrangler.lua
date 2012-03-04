--[[ The Barrens -- Kolkar Wrangler.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function KolkarWrangler_OnCombat(Unit, Event)
Unit:RegisterEvent("KolkarWrangler_Net", 10000, 0)
Unit:RegisterEvent("KolkarWrangler_Shoot", 6000, 0)
end

function KolkarWrangler_Net(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12024, pUnit:GetMainTank()) 
end

function KolkarWrangler_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function KolkarStormseer_LightningCloud(pUnit, Event) 
pUnit:CastSpell(6535) 
end

function KolkarWrangler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function KolkarWrangler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function KolkarWrangler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3272, 1, "KolkarWrangler_OnCombat")
RegisterUnitEvent(3272, 2, "KolkarWrangler_OnLeaveCombat")
RegisterUnitEvent(3272, 3, "KolkarWrangler_OnKilledTarget")
RegisterUnitEvent(3272, 4, "KolkarWrangler_OnDied")