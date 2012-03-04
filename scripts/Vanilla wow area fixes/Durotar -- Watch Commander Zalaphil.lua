--[[ Durotar -- Watch Commander Zalaphil.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function WatchCommanderZalaphil_OnCombat(Unit, Event)
Unit:RegisterEvent("WatchCommanderZalaphil_DefensiveStance", 1000, 1)
Unit:RegisterEvent("WatchCommanderZalaphil_ShieldBash", 8000, 0)
end

function WatchCommanderZalaphil_DefensiveStance(pUnit, Event) 
pUnit:CastSpell(7164) 
end

function WatchCommanderZalaphil_ShieldBash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(72, pUnit:GetMainTank()) 
end

function WatchCommanderZalaphil_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WatchCommanderZalaphil_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WatchCommanderZalaphil_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3192, 1, "WatchCommanderZalaphil_OnCombat")
RegisterUnitEvent(3192, 2, "WatchCommanderZalaphil_OnLeaveCombat")
RegisterUnitEvent(3192, 3, "WatchCommanderZalaphil_OnKilledTarget")
RegisterUnitEvent(3192, 4, "WatchCommanderZalaphil_OnDied")