--[[ Desolace -- Ambershard Crusher.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function AmbershardCrusher_OnCombat(Unit, Event)
Unit:RegisterEvent("AmbershardCrusher_CrushArmor", 5000, 1)
end

function AmbershardCrusher_CrushArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(21055, pUnit:GetMainTank()) 
end

function AmbershardCrusher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AmbershardCrusher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AmbershardCrusher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11781, 1, "AmbershardCrusher_OnCombat")
RegisterUnitEvent(11781, 2, "AmbershardCrusher_OnLeaveCombat")
RegisterUnitEvent(11781, 3, "AmbershardCrusher_OnKilledTarget")
RegisterUnitEvent(11781, 4, "AmbershardCrusher_OnDied")