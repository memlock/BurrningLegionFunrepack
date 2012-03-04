--[[ Darkshore -- Twilight Thug.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 04th, 2008. ]]


function TwilightThug_OnCombat(Unit, Event)
Unit:RegisterEvent("TwilightThug_BattleStance", 2000, 1)
Unit:RegisterEvent("TwilightThug_BattleShout", 4000, 1)
Unit:RegisterEvent("TwilightThug_Disarm", 9000, 0)
end

function TwilightThug_BattleStance(pUnit, Event) 
pUnit:CastSpell(7165) 
end

function TwilightThug_BattleShout(pUnit, Event) 
pUnit:CastSpell(5242) 
end

function TwilightThug_Disarm(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6713, pUnit:GetMainTank()) 
end

function TwilightThug_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TwilightThug_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TwilightThug_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2339, 1, "TwilightThug_OnCombat")
RegisterUnitEvent(2339, 2, "TwilightThug_OnLeaveCombat")
RegisterUnitEvent(2339, 3, "TwilightThug_OnKilledTarget")
RegisterUnitEvent(2339, 4, "TwilightThug_OnDied")