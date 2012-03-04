--[[ Silithus -- Emissary Romankhan.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]


function EmissaryRomankhan_OnCombat(Unit, Event)
Unit:RegisterEvent("EmissaryRomankhan_Wilt", 15000, 0)
end

function EmissaryRomankhan_Wilt(pUnit, Event) 
pUnit:CastSpell(23772) 
end

function EmissaryRomankhan_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function EmissaryRomankhan_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function EmissaryRomankhan_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(14862, 1, "EmissaryRomankhan_OnCombat")
RegisterUnitEvent(14862, 2, "EmissaryRomankhan_OnLeaveCombat")
RegisterUnitEvent(14862, 3, "EmissaryRomankhan_OnKilledTarget")
RegisterUnitEvent(14862, 4, "EmissaryRomankhan_OnDied")