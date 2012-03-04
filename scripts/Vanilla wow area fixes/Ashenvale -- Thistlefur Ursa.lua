--[[ Ashenvale -- Thistlefur Ursa.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function ThistlefurUrsa_OnCombat(Unit, Event)
Unit:RegisterEvent("ThistlefurUrsa_BattleStance", 1000, 1)
Unit:RegisterEvent("ThistlefurUrsa_HeroicStrike", 6000, 0)
end

function ThistlefurUrsa_BattleStance(pUnit, Event) 
pUnit:CastSpell(7165) 
end

function ThistlefurUrsa_HeroicStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(25712, pUnit:GetMainTank()) 
end

function ThistlefurUrsa_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ThistlefurUrsa_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ThistlefurUrsa_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3921, 1, "ThistlefurUrsa_OnCombat")
RegisterUnitEvent(3921, 2, "ThistlefurUrsa_OnLeaveCombat")
RegisterUnitEvent(3921, 3, "ThistlefurUrsa_OnKilledTarget")
RegisterUnitEvent(3921, 4, "ThistlefurUrsa_OnDied")