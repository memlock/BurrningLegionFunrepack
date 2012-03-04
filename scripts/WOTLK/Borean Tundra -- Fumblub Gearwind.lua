--[[ Borean Tundra -- Fumblub Gearwind.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function FumblubGearwind_OnCombat(Unit, Event)
Unit:RegisterEvent("FumblubGearwind_MachineGun", 8000, 0)
end

function FumblubGearwind_MachineGun(pUnit, Event) 
pUnit:FullCastSpellOnTarget(60906, pUnit:GetMainTank()) 
end

function FumblubGearwind_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FumblubGearwind_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FumblubGearwind_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(32358, 1, "FumblubGearwind_OnCombat")
RegisterUnitEvent(32358, 2, "FumblubGearwind_OnLeaveCombat")
RegisterUnitEvent(32358, 3, "FumblubGearwind_OnKilledTarget")
RegisterUnitEvent(32358, 4, "FumblubGearwind_OnDied")