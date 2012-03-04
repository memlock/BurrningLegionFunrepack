--[[ Ashenvale -- Phantim.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function Phantim_OnCombat(Unit, Event)
Unit:RegisterEvent("Phantim_CorrosiveAcidBreath", 8000, 0)
end

function Phantim_CorrosiveAcidBreath(pUnit, Event) 
pUnit:CastSpell(20667) 
end

function Phantim_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Phantim_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Phantim_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5314, 1, "Phantim_OnCombat")
RegisterUnitEvent(5314, 2, "Phantim_OnLeaveCombat")
RegisterUnitEvent(5314, 3, "Phantim_OnKilledTarget")
RegisterUnitEvent(5314, 4, "Phantim_OnDied")