--[[ The Barrens -- Theramore Preserver.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function TheramorePreserver_OnCombat(Unit, Event)
Unit:RegisterEvent("TheramorePreserver_Smite", 8000, 0)
Unit:RegisterEvent("TheramorePreserver_LesserHeal", 12000, 0)
Unit:RegisterEvent("TheramorePreserver_Renew", 5000, 1)
end

function TheramorePreserver_Smite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9734, pUnit:GetMainTank()) 
end

function TheramorePreserver_LesserHeal(pUnit, Event) 
pUnit:CastSpell(2052) 
end

function TheramorePreserver_Renew(pUnit, Event) 
pUnit:CastSpell(6074) 
end

function TheramorePreserver_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TheramorePreserver_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TheramorePreserver_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3386, 1, "TheramorePreserver_OnCombat")
RegisterUnitEvent(3386, 2, "TheramorePreserver_OnLeaveCombat")
RegisterUnitEvent(3386, 3, "TheramorePreserver_OnKilledTarget")
RegisterUnitEvent(3386, 4, "TheramorePreserver_OnDied")