--[[ Borean Tundra -- Force-Commander Steeljaw.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function ForceCommanderSteeljaw_OnCombat(Unit, Event)
Unit:RegisterEvent("ForceCommanderSteeljaw_Cleave", 6000, 0)
Unit:RegisterEvent("ForceCommanderSteeljaw_PiercingHowl", 10000, 0)
Unit:RegisterEvent("ForceCommanderSteeljaw_SteelJaw", 12000, 0)
Unit:RegisterEvent("ForceCommanderSteeljaw_Whirlwind", 8000, 0)
end

function ForceCommanderSteeljaw_Cleave(pUnit, Event) 
pUnit:CastSpell(15284) 
end

function ForceCommanderSteeljaw_PiercingHowl(pUnit, Event) 
pUnit:CastSpell(38256) 
end

function ForceCommanderSteeljaw_SteelJaw(pUnit, Event) 
pUnit:CastSpell(50204) 
end

function ForceCommanderSteeljaw_Whirlwind(pUnit, Event) 
pUnit:CastSpell(41057) 
end

function ForceCommanderSteeljaw_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ForceCommanderSteeljaw_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ForceCommanderSteeljaw_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25359, 1, "ForceCommanderSteeljaw_OnCombat")
RegisterUnitEvent(25359, 2, "ForceCommanderSteeljaw_OnLeaveCombat")
RegisterUnitEvent(25359, 3, "ForceCommanderSteeljaw_OnKilledTarget")
RegisterUnitEvent(25359, 4, "ForceCommanderSteeljaw_OnDied")