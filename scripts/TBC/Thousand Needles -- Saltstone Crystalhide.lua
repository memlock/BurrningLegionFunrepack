--[[ Thousand Needles -- Saltstone Crystalhide.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function SaltstoneCrystalhide_OnCombat(Unit, Event)
Unit:RegisterEvent("SaltstoneCrystalhide_ManaBurn", 6000, 0)
end

function SaltstoneCrystalhide_ManaBurn(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8129, pUnit:GetRandomPlayer(4)) 
end

function SaltstoneCrystalhide_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SaltstoneCrystalhide_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SaltstoneCrystalhide_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4151, 1, "SaltstoneCrystalhide_OnCombat")
RegisterUnitEvent(4151, 2, "SaltstoneCrystalhide_OnLeaveCombat")
RegisterUnitEvent(4151, 3, "SaltstoneCrystalhide_OnKilledTarget")
RegisterUnitEvent(4151, 4, "SaltstoneCrystalhide_OnDied")