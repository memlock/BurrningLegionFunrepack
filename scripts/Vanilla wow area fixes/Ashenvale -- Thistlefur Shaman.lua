--[[ Ashenvale -- Thistlefur Shaman.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function ThistlefurShaman_OnCombat(Unit, Event)
Unit:RegisterEvent("ThistlefurShaman_Bloodlust", 2000, 2)
Unit:RegisterEvent("ThistlefurShaman_HealingWave", 13000, 0)
end

function ThistlefurShaman_Bloodlust(pUnit, Event) 
pUnit:CastSpell(6742) 
end

function ThistlefurShaman_HealingWave(pUnit, Event) 
pUnit:CastSpell(11986) 
end

function ThistlefurShaman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ThistlefurShaman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ThistlefurShaman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3924, 1, "ThistlefurShaman_OnCombat")
RegisterUnitEvent(3924, 2, "ThistlefurShaman_OnLeaveCombat")
RegisterUnitEvent(3924, 3, "ThistlefurShaman_OnKilledTarget")
RegisterUnitEvent(3924, 4, "ThistlefurShaman_OnDied")