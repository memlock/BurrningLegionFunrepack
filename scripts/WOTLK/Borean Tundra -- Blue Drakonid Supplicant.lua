--[[ Borean Tundra -- Blue Drakonid Supplicant.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function BlueDrakonidSupplicant_OnCombat(Unit, Event)
Unit:RegisterEvent("BlueDrakonidSupplicant_PowerSap", 8000, 0)
end

function BlueDrakonidSupplicant_PowerSap(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50534, pUnit:GetMainTank()) 
end

function BlueDrakonidSupplicant_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BlueDrakonidSupplicant_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BlueDrakonidSupplicant_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25713, 1, "BlueDrakonidSupplicant_OnCombat")
RegisterUnitEvent(25713, 2, "BlueDrakonidSupplicant_OnLeaveCombat")
RegisterUnitEvent(25713, 3, "BlueDrakonidSupplicant_OnKilledTarget")
RegisterUnitEvent(25713, 4, "BlueDrakonidSupplicant_OnDied")