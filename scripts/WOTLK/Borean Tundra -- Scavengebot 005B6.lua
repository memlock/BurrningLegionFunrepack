--[[ Borean Tundra -- Scavengebot 005B6.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function Scavengebot005B6_OnCombat(Unit, Event)
Unit:RegisterEvent("Scavengebot005B6_CuttingLaser", 7000, 0)
end

function Scavengebot005B6_CuttingLaser(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49945, pUnit:GetMainTank()) 
end

function Scavengebot005B6_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Scavengebot005B6_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Scavengebot005B6_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25792, 1, "Scavengebot005B6_OnCombat")
RegisterUnitEvent(25792, 2, "Scavengebot005B6_OnLeaveCombat")
RegisterUnitEvent(25792, 3, "Scavengebot005B6_OnKilledTarget")
RegisterUnitEvent(25792, 4, "Scavengebot005B6_OnDied")