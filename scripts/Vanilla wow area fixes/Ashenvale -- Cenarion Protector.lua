--[[ Ashenvale -- Cenarion Protector.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function CenarionProtector_OnCombat(Unit, Event)
Unit:RegisterEvent("CenarionProtector_BearForm", 1000, 1)
Unit:RegisterEvent("CenarionProtector_DemoralizingRoar", 8000, 0)
end

function CenarionProtector_BearForm(pUnit, Event) 
pUnit:CastSpell(7090) 
end

function CenarionProtector_DemoralizingRoar(pUnit, Event) 
pUnit:CastSpell(15727) 
end

function CenarionProtector_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CenarionProtector_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CenarionProtector_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3797, 1, "CenarionProtector_OnCombat")
RegisterUnitEvent(3797, 2, "CenarionProtector_OnLeaveCombat")
RegisterUnitEvent(3797, 3, "CenarionProtector_OnKilledTarget")
RegisterUnitEvent(3797, 4, "CenarionProtector_OnDied")