--[[ Bloodmyst Isle -- Hand of Argus Swordsman.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 28th, 2008. ]]

function HandofArgusSwordsman_OnCombat(Unit, Event)
Unit:RegisterEvent("HandofArgusSwordsman_BattleSgout", 2000, 1)
Unit:RegisterEvent("HandofArgusSwordsman_Strike", 6000, 0)
end

function HandofArgusSwordsman_BattleSgout(pUnit, Event) 
pUnit:CastSpell(9128) 
end

function HandofArgusSwordsman_Strike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11976, pUnit:GetMainTank()) 
end

function HandofArgusSwordsman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HandofArgusSwordsman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HandofArgusSwordsman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17704, 1, "HandofArgusSwordsman_OnCombat")
RegisterUnitEvent(17704, 2, "HandofArgusSwordsman_OnLeaveCombat")
RegisterUnitEvent(17704, 3, "HandofArgusSwordsman_OnKilledTarget")
RegisterUnitEvent(17704, 4, "HandofArgusSwordsman_OnDied")