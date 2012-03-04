--[[ Borean Tundra -- Justicar Julia Celeste.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function JusticarJuliaCeleste_OnCombat(Unit, Event)
Unit:RegisterEvent("JusticarJuliaCeleste_HammerofJustice", 10000, 0)
end

function JusticarJuliaCeleste_HammerofJustice(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13005, pUnit:GetMainTank()) 
end

function JusticarJuliaCeleste_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function JusticarJuliaCeleste_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function JusticarJuliaCeleste_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25264, 1, "JusticarJuliaCeleste_OnCombat")
RegisterUnitEvent(25264, 2, "JusticarJuliaCeleste_OnLeaveCombat")
RegisterUnitEvent(25264, 3, "JusticarJuliaCeleste_OnKilledTarget")
RegisterUnitEvent(25264, 4, "JusticarJuliaCeleste_OnDied")