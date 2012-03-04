--[[ Teldrassil -- Fury Shelda.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function FuryShelda_OnCombat(Unit, Event)
Unit:RegisterEvent("FuryShelda_DeafeningScreech", 10000, 0)
end

function FuryShelda_DeafeningScreech(pUnit, Event) 
pUnit:CastSpell(3589) 
end

function FuryShelda_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FuryShelda_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FuryShelda_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(14431, 1, "FuryShelda_OnCombat")
RegisterUnitEvent(14431, 2, "FuryShelda_OnLeaveCombat")
RegisterUnitEvent(14431, 3, "FuryShelda_OnKilledTarget")
RegisterUnitEvent(14431, 4, "FuryShelda_OnDied")