--[[ The Barrens -- Swinegart Spearhide.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function SwinegartSpearhide_OnCombat(Unit, Event)
Unit:RegisterEvent("SwinegartSpearhide_PierceArmor", 10000, 0)
end

function SwinegartSpearhide_PierceArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6016, pUnit:GetMainTank()) 
end

function SwinegartSpearhide_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SwinegartSpearhide_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SwinegartSpearhide_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5864, 1, "SwinegartSpearhide_OnCombat")
RegisterUnitEvent(5864, 2, "SwinegartSpearhide_OnLeaveCombat")
RegisterUnitEvent(5864, 3, "SwinegartSpearhide_OnKilledTarget")
RegisterUnitEvent(5864, 4, "SwinegartSpearhide_OnDied")