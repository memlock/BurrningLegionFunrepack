--[[ Stonetalon Mountains -- Gorehoof the Black.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function GorehooftheBlack_OnCombat(Unit, Event)
Unit:RegisterEvent("GorehooftheBlack_WarStomp", 8000, 0)
end

function GorehooftheBlack_WarStomp(pUnit, Event) 
pUnit:CastSpell(45) 
end

function GorehooftheBlack_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GorehooftheBlack_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GorehooftheBlack_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11914, 1, "GorehooftheBlack_OnCombat")
RegisterUnitEvent(11914, 2, "GorehooftheBlack_OnLeaveCombat")
RegisterUnitEvent(11914, 3, "GorehooftheBlack_OnKilledTarget")
RegisterUnitEvent(11914, 4, "GorehooftheBlack_OnDied")