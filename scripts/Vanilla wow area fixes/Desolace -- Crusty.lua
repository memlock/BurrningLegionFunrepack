--[[ Desolace -- Crusty.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function Crusty_OnCombat(Unit, Event)
Unit:RegisterEvent("Crusty_Enrage", 10000, 1)
end

function Crusty_Enrage(pUnit, Event) 
pUnit:CastSpell(8599) 
end

function Crusty_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Crusty_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Crusty_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(18241, 1, "Crusty_OnCombat")
RegisterUnitEvent(18241, 2, "Crusty_OnLeaveCombat")
RegisterUnitEvent(18241, 3, "Crusty_OnKilledTarget")
RegisterUnitEvent(18241, 4, "Crusty_OnDied")