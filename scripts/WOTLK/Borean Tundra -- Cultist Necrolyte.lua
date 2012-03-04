--[[ Borean Tundra -- Cultist Necrolyte.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function CultistNecrolyte_OnCombat(Unit, Event)
Unit:RegisterEvent("CultistNecrolyte_CurseofAgony", 10000, 0)
Unit:RegisterEvent("CultistNecrolyte_ShadowBolt", 7000, 0)
end

function CultistNecrolyte_CurseofAgony(pUnit, Event) 
pUnit:FullCastSpellOnTarget(18266, pUnit:GetMainTank()) 
end

function CultistNecrolyte_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9613, pUnit:GetMainTank()) 
end

function CultistNecrolyte_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CultistNecrolyte_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CultistNecrolyte_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25651, 1, "CultistNecrolyte_OnCombat")
RegisterUnitEvent(25651, 2, "CultistNecrolyte_OnLeaveCombat")
RegisterUnitEvent(25651, 3, "CultistNecrolyte_OnKilledTarget")
RegisterUnitEvent(25651, 4, "CultistNecrolyte_OnDied")