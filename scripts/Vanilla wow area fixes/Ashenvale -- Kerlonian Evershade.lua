--[[ Ashenvale -- Kerlonian Evershade.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function KerlonianEvershade_OnCombat(Unit, Event)
Unit:RegisterEvent("KerlonianEvershade_BearForm", 1000, 1)
end

function KerlonianEvershade_BearForm(pUnit, Event) 
pUnit:CastSpell(18309) 
end

function KerlonianEvershade_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function KerlonianEvershade_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function KerlonianEvershade_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11218, 1, "KerlonianEvershade_OnCombat")
RegisterUnitEvent(11218, 2, "KerlonianEvershade_OnLeaveCombat")
RegisterUnitEvent(11218, 3, "KerlonianEvershade_OnKilledTarget")
RegisterUnitEvent(11218, 4, "KerlonianEvershade_OnDied")