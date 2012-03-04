--[[ Dragonblight -- Corrupted Lothalor Ancient.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function CorruptedLothalorAncient_OnCombat(Unit, Event)
Unit:RegisterEvent("CorruptedLothalorAncient_ArcaneDischarge", 6000, 0)
Unit:RegisterEvent("CorruptedLothalorAncient_ArcaneExplosion", 5000, 0)
end

function CorruptedLothalorAncient_ArcaneDischarge(pUnit, Event) 
pUnit:CastSpell(51727) 
end

function CorruptedLothalorAncient_ArcaneExplosion(pUnit, Event) 
pUnit:CastSpell(51725) 
end

function CorruptedLothalorAncient_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CorruptedLothalorAncient_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CorruptedLothalorAncient_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26333, 1, "CorruptedLothalorAncient_OnCombat")
RegisterUnitEvent(26333, 2, "CorruptedLothalorAncient_OnLeaveCombat")
RegisterUnitEvent(26333, 3, "CorruptedLothalorAncient_OnKilledTarget")
RegisterUnitEvent(26333, 4, "CorruptedLothalorAncient_OnDied")