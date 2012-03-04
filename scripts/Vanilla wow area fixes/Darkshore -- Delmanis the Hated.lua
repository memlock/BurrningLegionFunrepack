--[[ Darkshore -- Delmanis the Hated.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 30th, 2008. ]]

function DelmanistheHated_OnCombat(Unit, Event)
Unit:RegisterEvent("DelmanistheHated_FlameBlast", 12000, 0)
Unit:RegisterEvent("DelmanistheHated_Frostbolt", 8000, 0)
end

function DelmanistheHated_FlameBlast(pUnit, Event) 
pUnit:CastSpell(7101) 
end

function DelmanistheHated_Frostbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20792, pUnit:GetMainTank()) 
end

function DelmanistheHated_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DelmanistheHated_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DelmanistheHated_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3662, 1, "DelmanistheHated_OnCombat")
RegisterUnitEvent(3662, 2, "DelmanistheHated_OnLeaveCombat")
RegisterUnitEvent(3662, 3, "DelmanistheHated_OnKilledTarget")
RegisterUnitEvent(3662, 4, "DelmanistheHated_OnDied")