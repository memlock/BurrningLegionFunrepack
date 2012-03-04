--[[ Borean Tundra -- Boiling Spirit.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function BoilingSpirit_OnCombat(Unit, Event)
Unit:RegisterEvent("BoilingSpirit_ScaldingSteam", 8000, 0)
end

function BoilingSpirit_ScaldingSteam(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50206, pUnit:GetMainTank()) 
end

function BoilingSpirit_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BoilingSpirit_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BoilingSpirit_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25419, 1, "BoilingSpirit_OnCombat")
RegisterUnitEvent(25419, 2, "BoilingSpirit_OnLeaveCombat")
RegisterUnitEvent(25419, 3, "BoilingSpirit_OnKilledTarget")
RegisterUnitEvent(25419, 4, "BoilingSpirit_OnDied")