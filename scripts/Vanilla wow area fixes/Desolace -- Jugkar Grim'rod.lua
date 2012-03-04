--[[ Desolace -- Jugkar Grim'rod.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function JugkarGrimrod_OnCombat(Unit, Event)
Unit:RegisterEvent("JugkarGrimrod_CurseofWeakness", 5000, 1)
Unit:RegisterEvent("JugkarGrimrod_Immolate", 6000, 1)
Unit:RegisterEvent("JugkarGrimrod_ShadowBolt", 8000, 0)
end

function JugkarGrimrod_CurseofWeakness(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12741, pUnit:GetMainTank()) 
end

function JugkarGrimrod_Immolate(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20787, pUnit:GetMainTank()) 
end

function JugkarGrimrod_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12471, pUnit:GetMainTank()) 
end

function JugkarGrimrod_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function JugkarGrimrod_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function JugkarGrimrod_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5771, 1, "JugkarGrimrod_OnCombat")
RegisterUnitEvent(5771, 2, "JugkarGrimrod_OnLeaveCombat")
RegisterUnitEvent(5771, 3, "JugkarGrimrod_OnKilledTarget")
RegisterUnitEvent(5771, 4, "JugkarGrimrod_OnDied")