--[[ Darkshore -- Twilight Disciple.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 04th, 2008. ]]


function TwilightDisciple_OnCombat(Unit, Event)
Unit:RegisterEvent("TwilightDisciple_Heal", 13000, 0)
Unit:RegisterEvent("TwilightDisciple_Renew", 8000, 0)
end

function TwilightDisciple_Heal(pUnit, Event) 
pUnit:CastSpell(2054) 
end

function TwilightDisciple_Renew(pUnit, Event) 
pUnit:CastSpell(6074) 
end

function TwilightDisciple_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TwilightDisciple_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TwilightDisciple_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2338, 1, "TwilightDisciple_OnCombat")
RegisterUnitEvent(2338, 2, "TwilightDisciple_OnLeaveCombat")
RegisterUnitEvent(2338, 3, "TwilightDisciple_OnKilledTarget")
RegisterUnitEvent(2338, 4, "TwilightDisciple_OnDied")