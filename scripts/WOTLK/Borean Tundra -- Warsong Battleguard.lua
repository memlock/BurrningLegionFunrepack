--[[ Borean Tundra -- Warsong Battleguard.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function WarsongBattleguard_OnCombat(Unit, Event)
Unit:RegisterEvent("WarsongBattleguard_Enrage", 10000, 0)
end

function WarsongBattleguard_Enrage(pUnit, Event) 
pUnit:CastSpell(8599) 
end

function WarsongBattleguard_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WarsongBattleguard_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WarsongBattleguard_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25242, 1, "WarsongBattleguard_OnCombat")
RegisterUnitEvent(25242, 2, "WarsongBattleguard_OnLeaveCombat")
RegisterUnitEvent(25242, 3, "WarsongBattleguard_OnKilledTarget")
RegisterUnitEvent(25242, 4, "WarsongBattleguard_OnDied")