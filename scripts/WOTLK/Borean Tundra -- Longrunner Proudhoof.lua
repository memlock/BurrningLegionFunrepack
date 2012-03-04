--[[ Borean Tundra -- Longrunner Proudhoof.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function LongrunnerProudhoof_OnCombat(Unit, Event)
Unit:RegisterEvent("LongrunnerProudhoof_DemoralizingShout", 2000, 2)
Unit:RegisterEvent("LongrunnerProudhoof_ForcefulCleave", 8000, 0)
end

function LongrunnerProudhoof_DemoralizingShout(pUnit, Event) 
pUnit:CastSpell(13730) 
end

function LongrunnerProudhoof_ForcefulCleave(pUnit, Event) 
pUnit:CastSpell(35473) 
end

function LongrunnerProudhoof_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LongrunnerProudhoof_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LongrunnerProudhoof_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25335, 1, "LongrunnerProudhoof_OnCombat")
RegisterUnitEvent(25335, 2, "LongrunnerProudhoof_OnLeaveCombat")
RegisterUnitEvent(25335, 3, "LongrunnerProudhoof_OnKilledTarget")
RegisterUnitEvent(25335, 4, "LongrunnerProudhoof_OnDied")