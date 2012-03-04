--[[ Dragonblight -- Indule Fisherman.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function InduleFisherman_OnCombat(Unit, Event)
Unit:RegisterEvent("InduleFisherman_ElectrifiedNet", 10000, 0)
end

function InduleFisherman_ElectrifiedNet(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11820, pUnit:GetMainTank()) 
end

function InduleFisherman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function InduleFisherman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function InduleFisherman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26343, 1, "InduleFisherman_OnCombat")
RegisterUnitEvent(26343, 2, "InduleFisherman_OnLeaveCombat")
RegisterUnitEvent(26343, 3, "InduleFisherman_OnKilledTarget")
RegisterUnitEvent(26343, 4, "InduleFisherman_OnDied")