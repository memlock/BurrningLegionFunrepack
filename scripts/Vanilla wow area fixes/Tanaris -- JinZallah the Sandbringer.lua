--[[ Tanaris -- JinZallah the Sandbringer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function JinZallahtheSandbringer_OnCombat(Unit, Event)
Unit:RegisterEvent("JinZallahtheSandbringer_DustCloud", 15000, 0)
Unit:RegisterEvent("JinZallahtheSandbringer_LightningBolt", 8000, 0)
Unit:RegisterEvent("JinZallahtheSandbringer_SandStorms", 10000, 1)
end

function JinZallahtheSandbringer_DustCloud(pUnit, Event) 
pUnit:CastSpell(7272) 
end

function JinZallahtheSandbringer_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20824, pUnit:GetMainTank()) 
end

function JinZallahtheSandbringer_SandStorms(pUnit, Event) 
pUnit:CastSpell(10132) 
end

function JinZallahtheSandbringer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function JinZallahtheSandbringer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function JinZallahtheSandbringer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(8200, 1, "JinZallahtheSandbringer_OnCombat")
RegisterUnitEvent(8200, 2, "JinZallahtheSandbringer_OnLeaveCombat")
RegisterUnitEvent(8200, 3, "JinZallahtheSandbringer_OnKilledTarget")
RegisterUnitEvent(8200, 4, "JinZallahtheSandbringer_OnDied")