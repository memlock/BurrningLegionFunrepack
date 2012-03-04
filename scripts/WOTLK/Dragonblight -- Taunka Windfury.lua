--[[ Dragonblight -- Taunka Windfury.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function TaunkaWindfury_OnCombat(Unit, Event)
Unit:RegisterEvent("TaunkaWindfury_HealingTouch", 10000, 0)
Unit:RegisterEvent("TaunkaWindfury_Moonfire", 5500, 0)
end

function TaunkaWindfury_HealingTouch(pUnit, Event) 
pUnit:CastSpell(23381) 
end

function TaunkaWindfury_Moonfire(pUnit, Event) 
pUnit:FullCastSpellOnTarget(23380, pUnit:GetMainTank()) 
end

function TaunkaWindfury_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TaunkaWindfury_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TaunkaWindfury_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27571, 1, "TaunkaWindfury_OnCombat")
RegisterUnitEvent(27571, 2, "TaunkaWindfury_OnLeaveCombat")
RegisterUnitEvent(27571, 3, "TaunkaWindfury_OnKilledTarget")
RegisterUnitEvent(27571, 4, "TaunkaWindfury_OnDied")