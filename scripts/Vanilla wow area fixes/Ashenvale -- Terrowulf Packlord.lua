--[[ Ashenvale -- Terrowulf Packlord.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function TerrowulfPacklord_OnCombat(Unit, Event)
Unit:RegisterEvent("TerrowulfPacklord_BattleRoar", 2000, 2)
end

function TerrowulfPacklord_BattleRoar(pUnit, Event) 
pUnit:CastSpell(6507) 
end

function TerrowulfPacklord_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TerrowulfPacklord_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TerrowulfPacklord_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3792, 1, "TerrowulfPacklord_OnCombat")
RegisterUnitEvent(3792, 2, "TerrowulfPacklord_OnLeaveCombat")
RegisterUnitEvent(3792, 3, "TerrowulfPacklord_OnKilledTarget")
RegisterUnitEvent(3792, 4, "TerrowulfPacklord_OnDied")