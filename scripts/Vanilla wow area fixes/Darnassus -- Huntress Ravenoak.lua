--[[ Darknassus -- Huntress Ravenoak.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 05th, 2008. ]]


function HuntressRavenoak_OnCombat(Unit, Event)
Unit:RegisterEvent("HuntressRavenoak_HookedNet", 13000, 0)
Unit:RegisterEvent("HuntressRavenoak_SunderArmor", 8000, 0)
end

function HuntressRavenoak_HookedNet(pUnit, Event) 
pUnit:FullCastSpellOnTarget(14030, pUnit:GetMainTank()) 
end

function HuntressRavenoak_SunderArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15572, pUnit:GetMainTank()) 
end

function HuntressRavenoak_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HuntressRavenoak_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HuntressRavenoak_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(14379, 1, "HuntressRavenoak_OnCombat")
RegisterUnitEvent(14379, 2, "HuntressRavenoak_OnLeaveCombat")
RegisterUnitEvent(14379, 3, "HuntressRavenoak_OnKilledTarget")
RegisterUnitEvent(14379, 4, "HuntressRavenoak_OnDied")