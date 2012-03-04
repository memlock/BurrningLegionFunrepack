--[[ Dragonblight -- Wailing Soul.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function WailingSoul_OnCombat(Unit, Event)
Unit:RegisterEvent("WailingSoul_TugSoul", 10000, 0)
end

function WailingSoul_TugSoul(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50027, pUnit:GetMainTank()) 
end

function WailingSoul_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WailingSoul_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WailingSoul_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27836, 1, "WailingSoul_OnCombat")
RegisterUnitEvent(27836, 2, "WailingSoul_OnLeaveCombat")
RegisterUnitEvent(27836, 3, "WailingSoul_OnKilledTarget")
RegisterUnitEvent(27836, 4, "WailingSoul_OnDied")