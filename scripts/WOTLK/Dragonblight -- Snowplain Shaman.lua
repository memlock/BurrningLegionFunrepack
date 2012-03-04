--[[ Dragonblight -- Snowplain Shaman.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function SnowplainShaman_OnCombat(Unit, Event)
Unit:RegisterEvent("SnowplainShaman_SearingTotem", 3000, 1)
end

function SnowplainShaman_SearingTotem(pUnit, Event) 
pUnit:CastSpell(39591) 
end

function SnowplainShaman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SnowplainShaman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SnowplainShaman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27279, 1, "SnowplainShaman_OnCombat")
RegisterUnitEvent(27279, 2, "SnowplainShaman_OnLeaveCombat")
RegisterUnitEvent(27279, 3, "SnowplainShaman_OnKilledTarget")
RegisterUnitEvent(27279, 4, "SnowplainShaman_OnDied")