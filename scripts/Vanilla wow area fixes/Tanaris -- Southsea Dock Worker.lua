--[[ Tanaris -- Southsea Dock Worker.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function SouthseaDockWorker_OnCombat(Unit, Event)
Unit:RegisterEvent("SouthseaDockWorker_HeadCrack", 10000, 0)
end

function SouthseaDockWorker_HeadCrack(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3148, pUnit:GetMainTank()) 
end

function SouthseaDockWorker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SouthseaDockWorker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SouthseaDockWorker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(7857, 1, "SouthseaDockWorker_OnCombat")
RegisterUnitEvent(7857, 2, "SouthseaDockWorker_OnLeaveCombat")
RegisterUnitEvent(7857, 3, "SouthseaDockWorker_OnKilledTarget")
RegisterUnitEvent(7857, 4, "SouthseaDockWorker_OnDied")