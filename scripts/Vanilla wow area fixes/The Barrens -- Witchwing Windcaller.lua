--[[ The Barrens -- Witchwing Windcaller.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function WitchwingWindcaller_OnCombat(Unit, Event)
Unit:RegisterEvent("WitchwingWindcaller_EnvelopingWinds", 10000, 0)
end

function WitchwingWindcaller_EnvelopingWinds(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6728, pUnit:GetMainTank()) 
end

function WitchwingWindcaller_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WitchwingWindcaller_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WitchwingWindcaller_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3280, 1, "WitchwingWindcaller_OnCombat")
RegisterUnitEvent(3280, 2, "WitchwingWindcaller_OnLeaveCombat")
RegisterUnitEvent(3280, 3, "WitchwingWindcaller_OnKilledTarget")
RegisterUnitEvent(3280, 4, "WitchwingWindcaller_OnDied")