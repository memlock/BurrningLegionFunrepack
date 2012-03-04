--[[ The Barrens -- Kolkar Bloodcharger.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function KolkarBloodcharger_OnCombat(Unit, Event)
Unit:RegisterEvent("KolkarBloodcharger_Bloodlust", 4000, 1)
Unit:RegisterEvent("KolkarBloodcharger_Corruption", 10000, 0)
end

function KolkarBloodcharger_Bloodlust(pUnit, Event) 
pUnit:CastSpell(6742) 
end

function KolkarBloodcharger_Corruption(pUnit, Event) 
pUnit:FullCastSpellOnTarget(172, pUnit:GetMainTank()) 
end

function KolkarBloodcharger_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function KolkarBloodcharger_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function KolkarBloodcharger_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3397, 1, "KolkarBloodcharger_OnCombat")
RegisterUnitEvent(3397, 2, "KolkarBloodcharger_OnLeaveCombat")
RegisterUnitEvent(3397, 3, "KolkarBloodcharger_OnKilledTarget")
RegisterUnitEvent(3397, 4, "KolkarBloodcharger_OnDied")