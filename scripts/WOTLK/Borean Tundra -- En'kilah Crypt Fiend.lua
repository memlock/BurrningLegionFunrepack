--[[ Borean Tundra -- En'kilah Crypt Fiend.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function EnkilahCryptFiend_OnCombat(Unit, Event)
Unit:RegisterEvent("EnkilahCryptFiend_CryptScarabs", 6000, 1)
end

function EnkilahCryptFiend_CryptScarabs(pUnit, Event) 
pUnit:CastSpell(31600) 
end

function EnkilahCryptFiend_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function EnkilahCryptFiend_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function EnkilahCryptFiend_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25386, 1, "EnkilahCryptFiend_OnCombat")
RegisterUnitEvent(25386, 2, "EnkilahCryptFiend_OnLeaveCombat")
RegisterUnitEvent(25386, 3, "EnkilahCryptFiend_OnKilledTarget")
RegisterUnitEvent(25386, 4, "EnkilahCryptFiend_OnDied")