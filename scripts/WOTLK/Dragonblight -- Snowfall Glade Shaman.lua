--[[ Dragonblight -- Snowfall Glade Shaman.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function SnowfallGladeShaman_OnCombat(Unit, Event)
Unit:RegisterEvent("SnowfallGladeShaman_FrostShock", 6000, 0)
Unit:RegisterEvent("SnowfallGladeShaman_HealingWave", 10000, 0)
Unit:RegisterEvent("SnowfallGladeShaman_LightningShield", 5000, 0)
end

function SnowfallGladeShaman_FrostShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12548, pUnit:GetMainTank()) 
end

function SnowfallGladeShaman_HealingWave(pUnit, Event) 
pUnit:CastSpell(11986) 
end

function SnowfallGladeShaman_LightningShield(pUnit, Event) 
pUnit:CastSpell(12550) 
end

function SnowfallGladeShaman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SnowfallGladeShaman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SnowfallGladeShaman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26201, 1, "SnowfallGladeShaman_OnCombat")
RegisterUnitEvent(26201, 2, "SnowfallGladeShaman_OnLeaveCombat")
RegisterUnitEvent(26201, 3, "SnowfallGladeShaman_OnKilledTarget")
RegisterUnitEvent(26201, 4, "SnowfallGladeShaman_OnDied")