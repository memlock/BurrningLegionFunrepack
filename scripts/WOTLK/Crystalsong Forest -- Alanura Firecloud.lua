--[[ Crystalsong Forest -- Alanura Firecloud.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function AlanuraFirecloud_OnCombat(Unit, Event)
Unit:RegisterEvent("AlanuraFirecloud_FieryIntellect", 2000, 1)
end

function AlanuraFirecloud_FieryIntellect(pUnit, Event) 
pUnit:CastSpell(35917) 
end

function AlanuraFirecloud_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AlanuraFirecloud_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AlanuraFirecloud_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(30239, 1, "AlanuraFirecloud_OnCombat")
RegisterUnitEvent(30239, 2, "AlanuraFirecloud_OnLeaveCombat")
RegisterUnitEvent(30239, 3, "AlanuraFirecloud_OnKilledTarget")
RegisterUnitEvent(30239, 4, "AlanuraFirecloud_OnDied")