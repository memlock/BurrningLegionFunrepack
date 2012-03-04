--[[ Mulgore -- Seer Ravenfeather.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function SeerRavenfeather_OnCombat(Unit, Event)
Unit:RegisterEvent("SeerRavenfeather_RockSkin", 10000, 0)
end

function SeerRavenfeather_RockSkin(pUnit, Event) 
pUnit:CastSpell(8314) 
end

function SeerRavenfeather_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SeerRavenfeather_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SeerRavenfeather_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5888, 1, "SeerRavenfeather_OnCombat")
RegisterUnitEvent(5888, 2, "SeerRavenfeather_OnLeaveCombat")
RegisterUnitEvent(5888, 3, "SeerRavenfeather_OnKilledTarget")
RegisterUnitEvent(5888, 4, "SeerRavenfeather_OnDied")