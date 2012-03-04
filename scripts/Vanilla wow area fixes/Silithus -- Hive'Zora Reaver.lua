--[[ Silithus -- Hive'Zora Reaver.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]


function HiveZoraReaver_OnCombat(Unit, Event)
Unit:RegisterEvent("HiveZoraReaver_Cleave", 8000, 0)
Unit:RegisterEvent("HiveZoraReaver_Knockdown", 10000, 0)
end

function HiveZoraReaver_Cleave(pUnit, Event) 
pUnit:CastSpell(40504) 
end

function HiveZoraReaver_Knockdown(pUnit, Event) 
pUnit:CastSpell(16790) 
end

function HiveZoraReaver_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HiveZoraReaver_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HiveZoraReaver_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11728, 1, "HiveZoraReaver_OnCombat")
RegisterUnitEvent(11728, 2, "HiveZoraReaver_OnLeaveCombat")
RegisterUnitEvent(11728, 3, "HiveZoraReaver_OnKilledTarget")
RegisterUnitEvent(11728, 4, "HiveZoraReaver_OnDied")