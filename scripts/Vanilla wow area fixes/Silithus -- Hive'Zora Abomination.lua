--[[ Silithus -- Hive'Zora Abomination.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]


function HiveZoraAbomination_OnCombat(Unit, Event)
Unit:RegisterEvent("HiveZoraAbomination_AbominationSpit", 8000, 0)
Unit:RegisterEvent("HiveZoraAbomination_PoisonCloud", 10000, 0)
Unit:RegisterEvent("HiveZoraAbomination_WingsofDespair", 12000, 0)
end

function HiveZoraAbomination_AbominationSpit(pUnit, Event) 
pUnit:FullCastSpellOnTarget(25262, pUnit:GetMainTank()) 
end

function HiveZoraAbomination_PoisonCloud(pUnit, Event) 
pUnit:CastSpell(25198) 
end

function HiveZoraAbomination_WingsofDespair(pUnit, Event) 
pUnit:FullCastSpellOnTarget(25260, pUnit:GetRandomPlayer(0)) 
end

function HiveZoraAbomination_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HiveZoraAbomination_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HiveZoraAbomination_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(15449, 1, "HiveZoraAbomination_OnCombat")
RegisterUnitEvent(15449, 2, "HiveZoraAbomination_OnLeaveCombat")
RegisterUnitEvent(15449, 3, "HiveZoraAbomination_OnKilledTarget")
RegisterUnitEvent(15449, 4, "HiveZoraAbomination_OnDied")