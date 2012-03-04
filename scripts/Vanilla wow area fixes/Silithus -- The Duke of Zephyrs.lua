--[[ Silithus -- The Duke of Zephyrs.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]


function TheDukeofZephyrs_OnCombat(Unit, Event)
Unit:RegisterEvent("TheDukeofZephyrs_ForkedLightning", 6000, 0)
Unit:RegisterEvent("TheDukeofZephyrs_LightningCloud", 8000, 0)
Unit:RegisterEvent("TheDukeofZephyrs_WingFlap", 12000, 0)
end

function TheDukeofZephyrs_ForkedLightning(pUnit, Event) 
pUnit:CastSpell(25034) 
end

function TheDukeofZephyrs_LightningCloud(pUnit, Event) 
pUnit:CastSpell(44417) 
end

function TheDukeofZephyrs_WingFlap(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12882, pUnit:GetMainTank()) 
end

function TheDukeofZephyrs_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TheDukeofZephyrs_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TheDukeofZephyrs_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(15220, 1, "TheDukeofZephyrs_OnCombat")
RegisterUnitEvent(15220, 2, "TheDukeofZephyrs_OnLeaveCombat")
RegisterUnitEvent(15220, 3, "TheDukeofZephyrs_OnKilledTarget")
RegisterUnitEvent(15220, 4, "TheDukeofZephyrs_OnDied")