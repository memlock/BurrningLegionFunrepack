--[[ Dragonblight -- Snowfall Glade Wolvar.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function SnowfallGladeWolvar_OnCombat(Unit, Event)
Unit:RegisterEvent("SnowfallGladeWolvar_Net", 8000, 0)
Unit:RegisterEvent("SnowfallGladeWolvar_ThrowSpear", 6000, 0)
end

function SnowfallGladeWolvar_Net(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6533, pUnit:GetMainTank()) 
end

function SnowfallGladeWolvar_ThrowSpear(pUnit, Event) 
pUnit:FullCastSpellOnTarget(43413, pUnit:GetMainTank()) 
end

function SnowfallGladeWolvar_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SnowfallGladeWolvar_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SnowfallGladeWolvar_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26198, 1, "SnowfallGladeWolvar_OnCombat")
RegisterUnitEvent(26198, 2, "SnowfallGladeWolvar_OnLeaveCombat")
RegisterUnitEvent(26198, 3, "SnowfallGladeWolvar_OnKilledTarget")
RegisterUnitEvent(26198, 4, "SnowfallGladeWolvar_OnDied")