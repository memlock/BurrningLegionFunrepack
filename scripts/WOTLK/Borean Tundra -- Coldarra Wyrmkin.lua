--[[ Borean Tundra -- Coldarra Wyrmkin.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function ColdarraWyrmkin_OnCombat(Unit, Event)
Unit:RegisterEvent("ColdarraWyrmkin_FrostbiteWeapon", 8000, 0)
end

function ColdarraWyrmkin_FrostbiteWeapon(pUnit, Event) 
pUnit:CastSpell(50416) 
end

function ColdarraWyrmkin_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ColdarraWyrmkin_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ColdarraWyrmkin_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25728, 1, "ColdarraWyrmkin_OnCombat")
RegisterUnitEvent(25728, 2, "ColdarraWyrmkin_OnLeaveCombat")
RegisterUnitEvent(25728, 3, "ColdarraWyrmkin_OnKilledTarget")
RegisterUnitEvent(25728, 4, "ColdarraWyrmkin_OnDied")