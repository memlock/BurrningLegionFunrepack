--[[ Tanaris -- Glasshide Basilisk.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function GlasshideBasilisk_OnCombat(Unit, Event)
Unit:RegisterEvent("GlasshideBasilisk_CrystalFlash", 12000, 2)
end

function GlasshideBasilisk_CrystalFlash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5106, pUnit:GetMainTank()) 
end

function GlasshideBasilisk_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GlasshideBasilisk_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GlasshideBasilisk_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5419, 1, "GlasshideBasilisk_OnCombat")
RegisterUnitEvent(5419, 2, "GlasshideBasilisk_OnLeaveCombat")
RegisterUnitEvent(5419, 3, "GlasshideBasilisk_OnKilledTarget")
RegisterUnitEvent(5419, 4, "GlasshideBasilisk_OnDied")