--[[ Darkshore -- Blackwood Ursa.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 30th, 2008. ]]

function BlackwoodUrsa_OnCombat(Unit, Event)
Unit:RegisterEvent("BlackwoodUrsa_Rejuvenation", 10000, 0)
end

function BlackwoodUrsa_Rejuvenation(pUnit, Event) 
pUnit:CastSpell(1058) 
end

function BlackwoodUrsa_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BlackwoodUrsa_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BlackwoodUrsa_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2170, 1, "BlackwoodUrsa_OnCombat")
RegisterUnitEvent(2170, 2, "BlackwoodUrsa_OnLeaveCombat")
RegisterUnitEvent(2170, 3, "BlackwoodUrsa_OnKilledTarget")
RegisterUnitEvent(2170, 4, "BlackwoodUrsa_OnDied")