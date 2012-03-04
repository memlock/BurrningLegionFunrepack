--[[ The Barrens -- Dishu.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function Dishu_OnCombat(Unit, Event)
Unit:RegisterEvent("Dishu_SavannahCubs", 4000, 1)
end

function Dishu_SavannahCubs(pUnit, Event) 
pUnit:CastSpell(8210) 
end

function Dishu_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Dishu_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Dishu_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5865, 1, "Dishu_OnCombat")
RegisterUnitEvent(5865, 2, "Dishu_OnLeaveCombat")
RegisterUnitEvent(5865, 3, "Dishu_OnKilledTarget")
RegisterUnitEvent(5865, 4, "Dishu_OnDied")