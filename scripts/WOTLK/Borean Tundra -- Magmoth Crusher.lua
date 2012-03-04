--[[ Borean Tundra -- Magmoth Crusher.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function MagmothCrusher_OnCombat(Unit, Event)
Unit:RegisterEvent("MagmothCrusher_MagnataurCharge", 8000, 0)
Unit:RegisterEvent("MagmothCrusher_TuskStrike", 7000, 0)
end

function MagmothCrusher_MagnataurCharge(pUnit, Event) 
pUnit:CastSpell(50413) 
end

function MagmothCrusher_TuskStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50410, pUnit:GetMainTank()) 
end

function MagmothCrusher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MagmothCrusher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MagmothCrusher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25434, 1, "MagmothCrusher_OnCombat")
RegisterUnitEvent(25434, 2, "MagmothCrusher_OnLeaveCombat")
RegisterUnitEvent(25434, 3, "MagmothCrusher_OnKilledTarget")
RegisterUnitEvent(25434, 4, "MagmothCrusher_OnDied")