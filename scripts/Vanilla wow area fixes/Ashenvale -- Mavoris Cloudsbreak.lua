--[[ Ashenvale -- Mavoris Cloudsbreak.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function MavorisCloudsbreak_OnCombat(Unit, Event)
Unit:RegisterEvent("MavorisCloudsbreak_LightningCloud", 10000, 0)
end

function MavorisCloudsbreak_LightningCloud(pUnit, Event) 
pUnit:CastSpell(6535) 
end

function MavorisCloudsbreak_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MavorisCloudsbreak_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MavorisCloudsbreak_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3942, 1, "MavorisCloudsbreak_OnCombat")
RegisterUnitEvent(3942, 2, "MavorisCloudsbreak_OnLeaveCombat")
RegisterUnitEvent(3942, 3, "MavorisCloudsbreak_OnKilledTarget")
RegisterUnitEvent(3942, 4, "MavorisCloudsbreak_OnDied")