--[[ Grizzly Hills -- Commander Howser.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function CommanderHowser_OnCombat(Unit, Event)
Unit:RegisterEvent("CommanderHowser_BerserkerCharge", 6000, 0)
Unit:RegisterEvent("CommanderHowser_Whirlwind", 8000, 0)
end

function CommanderHowser_BerserkerCharge(pUnit, Event) 
pUnit:FullCastSpellOnTarget(16636, pUnit:GetMainTank()) 
end

function CommanderHowser_Whirlwind(pUnit, Event) 
pUnit:CastSpell(15589) 
end

function CommanderHowser_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CommanderHowser_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CommanderHowser_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27759, 1, "CommanderHowser_OnCombat")
RegisterUnitEvent(27759, 2, "CommanderHowser_OnLeaveCombat")
RegisterUnitEvent(27759, 3, "CommanderHowser_OnKilledTarget")
RegisterUnitEvent(27759, 4, "CommanderHowser_OnDied")