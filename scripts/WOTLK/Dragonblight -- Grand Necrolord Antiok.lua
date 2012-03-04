--[[ Dragonblight -- Grand Necrolord Antiok.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function GrandNecrolordAntiok_OnCombat(Unit, Event)
Unit:RegisterEvent("GrandNecrolordAntiok_ScreamofChaos", 15000, 1)
Unit:RegisterEvent("GrandNecrolordAntiok_ShadowBolt", 8000, 0)
Unit:RegisterEvent("GrandNecrolordAntiok_ShroudofLightning", 28000, 1)
end

function GrandNecrolordAntiok_ScreamofChaos(pUnit, Event) 
pUnit:CastSpell(50497) 
end

function GrandNecrolordAntiok_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(55984, pUnit:GetMainTank()) 
end

function GrandNecrolordAntiok_ShroudofLightning(pUnit, Event) 
pUnit:CastSpell(50494) 
end

function GrandNecrolordAntiok_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GrandNecrolordAntiok_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GrandNecrolordAntiok_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(28006, 1, "GrandNecrolordAntiok_OnCombat")
RegisterUnitEvent(28006, 2, "GrandNecrolordAntiok_OnLeaveCombat")
RegisterUnitEvent(28006, 3, "GrandNecrolordAntiok_OnKilledTarget")
RegisterUnitEvent(28006, 4, "GrandNecrolordAntiok_OnDied")