--[[ Desolace -- Gelkis Windchaser.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function GelkisWindchaser_OnCombat(Unit, Event)
Unit:RegisterEvent("GelkisWindchaser_HealingWave", 13000, 0)
Unit:RegisterEvent("GelkisWindchaser_LightningBolt", 8000, 0)
end

function GelkisWindchaser_HealingWave(pUnit, Event) 
pUnit:CastSpell(959) 
end

function GelkisWindchaser_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9532, pUnit:GetMainTank()) 
end

function GelkisWindchaser_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GelkisWindchaser_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GelkisWindchaser_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4649, 1, "GelkisWindchaser_OnCombat")
RegisterUnitEvent(4649, 2, "GelkisWindchaser_OnLeaveCombat")
RegisterUnitEvent(4649, 3, "GelkisWindchaser_OnKilledTarget")
RegisterUnitEvent(4649, 4, "GelkisWindchaser_OnDied")