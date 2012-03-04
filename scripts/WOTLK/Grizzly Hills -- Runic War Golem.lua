--[[ Grizzly Hills -- Runic War Golem.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function RunicWarGolem_OnCombat(Unit, Event)
Unit:RegisterEvent("RunicWarGolem_RunePunch", 10000, 0)
end

function RunicWarGolem_RunePunch(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52702, pUnit:GetMainTank()) 
end

function RunicWarGolem_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RunicWarGolem_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RunicWarGolem_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26347, 1, "RunicWarGolem_OnCombat")
RegisterUnitEvent(26347, 2, "RunicWarGolem_OnLeaveCombat")
RegisterUnitEvent(26347, 3, "RunicWarGolem_OnKilledTarget")
RegisterUnitEvent(26347, 4, "RunicWarGolem_OnDied")