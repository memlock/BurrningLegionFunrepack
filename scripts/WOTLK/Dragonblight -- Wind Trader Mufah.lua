--[[ Dragonblight -- Wind Trader Mufah.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function WindTraderMufah_OnCombat(Unit, Event)
Unit:RegisterEvent("WindTraderMufah_Typhoon", 4000, 1)
end

function WindTraderMufah_Typhoon(pUnit, Event) 
pUnit:CastSpell(51817) 
end

function WindTraderMufah_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WindTraderMufah_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WindTraderMufah_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26496, 1, "WindTraderMufah_OnCombat")
RegisterUnitEvent(26496, 2, "WindTraderMufah_OnLeaveCombat")
RegisterUnitEvent(26496, 3, "WindTraderMufah_OnKilledTarget")
RegisterUnitEvent(26496, 4, "WindTraderMufah_OnDied")