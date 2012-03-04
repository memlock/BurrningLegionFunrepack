--[[ Grizzly Hills -- Iron Rune Weaver.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function IronRuneWeaver_OnCombat(Unit, Event)
Unit:RegisterEvent("IronRuneWeaver_RuneWeaving", 9000, 0)
end

function IronRuneWeaver_RuneWeaving(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52713, pUnit:GetMainTank()) 
end

function IronRuneWeaver_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function IronRuneWeaver_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function IronRuneWeaver_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26820, 1, "IronRuneWeaver_OnCombat")
RegisterUnitEvent(26820, 2, "IronRuneWeaver_OnLeaveCombat")
RegisterUnitEvent(26820, 3, "IronRuneWeaver_OnKilledTarget")
RegisterUnitEvent(26820, 4, "IronRuneWeaver_OnDied")