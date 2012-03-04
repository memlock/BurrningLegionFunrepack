--[[ Ashenvale -- Shadowhorn Stag.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function ShadowhornStag_OnCombat(Unit, Event)
Unit:RegisterEvent("ShadowhornStag_ShadowhornCharge", 8000, 0)
end

function ShadowhornStag_ShadowhornCharge(pUnit, Event) 
pUnit:CastSpell(6921) 
end

function ShadowhornStag_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ShadowhornStag_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ShadowhornStag_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3817, 1, "ShadowhornStag_OnCombat")
RegisterUnitEvent(3817, 2, "ShadowhornStag_OnLeaveCombat")
RegisterUnitEvent(3817, 3, "ShadowhornStag_OnKilledTarget")
RegisterUnitEvent(3817, 4, "ShadowhornStag_OnDied")