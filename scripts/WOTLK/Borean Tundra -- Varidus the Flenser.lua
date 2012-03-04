--[[ Borean Tundra -- Varidus the Flenser.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function VaridustheFlenser_OnCombat(Unit, Event)
Unit:RegisterEvent("VaridustheFlenser_ShadowNova", 6000, 0)
Unit:RegisterEvent("VaridustheFlenser_ShieldofSuffering", 4000, 1)
end

function VaridustheFlenser_ShadowNova(pUnit, Event) 
pUnit:CastSpell(32711) 
end

function VaridustheFlenser_ShieldofSuffering(pUnit, Event) 
pUnit:CastSpell(50329) 
end

function VaridustheFlenser_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function VaridustheFlenser_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function VaridustheFlenser_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25618, 1, "VaridustheFlenser_OnCombat")
RegisterUnitEvent(25618, 2, "VaridustheFlenser_OnLeaveCombat")
RegisterUnitEvent(25618, 3, "VaridustheFlenser_OnKilledTarget")
RegisterUnitEvent(25618, 4, "VaridustheFlenser_OnDied")