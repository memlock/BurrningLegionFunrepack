--[[ Dragonblight -- Bonesunder.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function Bonesunder_OnCombat(Unit, Event)
Unit:RegisterEvent("Bonesunder_BoneCrack", 10000, 0)
end

function Bonesunder_BoneCrack(pUnit, Event) 
pUnit:CastSpell(52080) 
end

function Bonesunder_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Bonesunder_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Bonesunder_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27006, 1, "Bonesunder_OnCombat")
RegisterUnitEvent(27006, 2, "Bonesunder_OnLeaveCombat")
RegisterUnitEvent(27006, 3, "Bonesunder_OnKilledTarget")
RegisterUnitEvent(27006, 4, "Bonesunder_OnDied")