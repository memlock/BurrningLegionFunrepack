--[[ Dragonblight -- 7th Legion Infantryman.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function thLegionInfantryman_OnCombat(Unit, Event)
Unit:RegisterEvent("thLegionInfantryman_ConcussionBlow", 10000, 0)
Unit:RegisterEvent("thLegionInfantryman_DemoralizingShout", 2000, 1)
end

function thLegionInfantryman_ConcussionBlow(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32588, pUnit:GetMainTank()) 
end

function thLegionInfantryman_DemoralizingShout(pUnit, Event) 
pUnit:CastSpell(16244) 
end

function thLegionInfantryman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function thLegionInfantryman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function thLegionInfantryman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27160, 1, "thLegionInfantryman_OnCombat")
RegisterUnitEvent(27160, 2, "thLegionInfantryman_OnLeaveCombat")
RegisterUnitEvent(27160, 3, "thLegionInfantryman_OnKilledTarget")
RegisterUnitEvent(27160, 4, "thLegionInfantryman_OnDied")