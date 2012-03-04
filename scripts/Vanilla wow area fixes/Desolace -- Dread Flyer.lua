--[[ Desolace -- Dread Flyer.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function DreadFlyer_OnCombat(Unit, Event)
Unit:RegisterEvent("DreadFlyer_Disarm", 10000, 0)
end

function DreadFlyer_Disarm(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6713, pUnit:GetMainTank()) 
end

function DreadFlyer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DreadFlyer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DreadFlyer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4693, 1, "DreadFlyer_OnCombat")
RegisterUnitEvent(4693, 2, "DreadFlyer_OnLeaveCombat")
RegisterUnitEvent(4693, 3, "DreadFlyer_OnKilledTarget")
RegisterUnitEvent(4693, 4, "DreadFlyer_OnDied")