--[[ The Barrens -- Witchwing Slayer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function WitchwingSlayer_OnCombat(Unit, Event)
Unit:RegisterEvent("WitchwingSlayer_DemoralizingShout", 3000, 1)
end

function WitchwingSlayer_DemoralizingShout(pUnit, Event) 
pUnit:CastSpell(13730) 
end

function WitchwingSlayer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WitchwingSlayer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WitchwingSlayer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3278, 1, "WitchwingSlayer_OnCombat")
RegisterUnitEvent(3278, 2, "WitchwingSlayer_OnLeaveCombat")
RegisterUnitEvent(3278, 3, "WitchwingSlayer_OnKilledTarget")
RegisterUnitEvent(3278, 4, "WitchwingSlayer_OnDied")