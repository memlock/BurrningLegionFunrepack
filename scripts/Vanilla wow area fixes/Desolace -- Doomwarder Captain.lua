--[[ Desolace -- Doomwarder Captain.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function DoomwarderCaptain_OnCombat(Unit, Event)
Unit:RegisterEvent("DoomwarderCaptain_BattleShout", 5000, 1)
Unit:RegisterEvent("DoomwarderCaptain_Ignite", 10000, 0)
end

function DoomwarderCaptain_BattleShout(pUnit, Event) 
pUnit:CastSpell(6192) 
end

function DoomwarderCaptain_Ignite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3261, pUnit:GetMainTank()) 
end

function DoomwarderCaptain_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DoomwarderCaptain_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DoomwarderCaptain_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4680, 1, "DoomwarderCaptain_OnCombat")
RegisterUnitEvent(4680, 2, "DoomwarderCaptain_OnLeaveCombat")
RegisterUnitEvent(4680, 3, "DoomwarderCaptain_OnKilledTarget")
RegisterUnitEvent(4680, 4, "DoomwarderCaptain_OnDied")