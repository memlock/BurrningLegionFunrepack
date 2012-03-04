--[[ Dragonblight -- Koltira Deathweaver .lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function KoltiraDeathweaver_OnCombat(Unit, Event)
Unit:RegisterEvent("KoltiraDeathweaver_WorldofShadows", 5000, 1)
end

function KoltiraDeathweaver_WorldofShadows(pUnit, Event) 
pUnit:CastSpell(47740) 
end

function KoltiraDeathweaver_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function KoltiraDeathweaver_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function KoltiraDeathweaver_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26581, 1, "KoltiraDeathweaver_OnCombat")
RegisterUnitEvent(26581, 2, "KoltiraDeathweaver_OnLeaveCombat")
RegisterUnitEvent(26581, 3, "KoltiraDeathweaver_OnKilledTarget")
RegisterUnitEvent(26581, 4, "KoltiraDeathweaver_OnDied")