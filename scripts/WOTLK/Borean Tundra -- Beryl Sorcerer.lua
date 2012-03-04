--[[ Borean Tundra -- Beryl Sorcerer.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function BerylSorcerer_OnCombat(Unit, Event)
Unit:RegisterEvent("BerylSorcerer_Blink", 11000, 0)
Unit:RegisterEvent("BerylSorcerer_Frostbolt", 8000, 0)
end

function BerylSorcerer_Blink(pUnit, Event) 
pUnit:CastSpell(50648) 
end

function BerylSorcerer_Frostbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9672, pUnit:GetMainTank()) 
end

function BerylSorcerer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BerylSorcerer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BerylSorcerer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25316, 1, "BerylSorcerer_OnCombat")
RegisterUnitEvent(25316, 2, "BerylSorcerer_OnLeaveCombat")
RegisterUnitEvent(25316, 3, "BerylSorcerer_OnKilledTarget")
RegisterUnitEvent(25316, 4, "BerylSorcerer_OnDied")