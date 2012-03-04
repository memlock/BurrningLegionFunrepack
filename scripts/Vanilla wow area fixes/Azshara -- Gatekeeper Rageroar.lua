--[[ Azshara -- Gatekeeper Rageroar.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function GatekeeperRageroar_OnCombat(Unit, Event)
Unit:RegisterEvent("GatekeeperRageroar_EntanglingRoots", 10000, 0)
end

function GatekeeperRageroar_EntanglingRoots(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12747, pUnit:GetMainTank()) 
end

function GatekeeperRageroar_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GatekeeperRageroar_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GatekeeperRageroar_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6651, 1, "GatekeeperRageroar_OnCombat")
RegisterUnitEvent(6651, 2, "GatekeeperRageroar_OnLeaveCombat")
RegisterUnitEvent(6651, 3, "GatekeeperRageroar_OnKilledTarget")
RegisterUnitEvent(6651, 4, "GatekeeperRageroar_OnDied")