--[[ Borean Tundra -- Scavengebot 004A8.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function Scavengebot004A8_OnCombat(Unit, Event)
Unit:RegisterEvent("Scavengebot004A8_CuttingLaser", 7000, 0)
end

function Scavengebot004A8_CuttingLaser(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49945, pUnit:GetMainTank()) 
end

function Scavengebot004A8_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Scavengebot004A8_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Scavengebot004A8_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25752, 1, "Scavengebot004A8_OnCombat")
RegisterUnitEvent(25752, 2, "Scavengebot004A8_OnLeaveCombat")
RegisterUnitEvent(25752, 3, "Scavengebot004A8_OnKilledTarget")
RegisterUnitEvent(25752, 4, "Scavengebot004A8_OnDied")