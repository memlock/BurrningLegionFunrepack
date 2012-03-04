--[[ Dragonblight -- Iceshatter.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function Iceshatter_OnCombat(Unit, Event)
Unit:RegisterEvent("Iceshatter_MagnataurCharge", 8000, 0)
Unit:RegisterEvent("Iceshatter_PulsingShards", 6000, 0)
end

function Iceshatter_MagnataurCharge(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52088, pUnit:GetMainTank()) 
end

function Iceshatter_PulsingShards(pUnit, Event) 
pUnit:CastSpell(52118) 
end

function Iceshatter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Iceshatter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Iceshatter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27007, 1, "Iceshatter_OnCombat")
RegisterUnitEvent(27007, 2, "Iceshatter_OnLeaveCombat")
RegisterUnitEvent(27007, 3, "Iceshatter_OnKilledTarget")
RegisterUnitEvent(27007, 4, "Iceshatter_OnDied")