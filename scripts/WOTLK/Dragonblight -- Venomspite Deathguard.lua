--[[ Dragonblight -- Venomspite Deathguard.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function VenomspiteDeathguard_OnCombat(Unit, Event)
Unit:RegisterEvent("VenomspiteDeathguard_Revenge", 5000, 0)
Unit:RegisterEvent("VenomspiteDeathguard_ShieldBlock", 6000, 0)
end

function VenomspiteDeathguard_Revenge(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12170, pUnit:GetMainTank()) 
end

function VenomspiteDeathguard_ShieldBlock(pUnit, Event) 
pUnit:CastSpell(12169) 
end

function VenomspiteDeathguard_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function VenomspiteDeathguard_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function VenomspiteDeathguard_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27035, 1, "VenomspiteDeathguard_OnCombat")
RegisterUnitEvent(27035, 2, "VenomspiteDeathguard_OnLeaveCombat")
RegisterUnitEvent(27035, 3, "VenomspiteDeathguard_OnKilledTarget")
RegisterUnitEvent(27035, 4, "VenomspiteDeathguard_OnDied")