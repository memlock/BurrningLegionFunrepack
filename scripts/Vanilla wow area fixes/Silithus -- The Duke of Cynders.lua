--[[ Silithus -- The Duke of Cynders.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]


function TheDukeofCynders_OnCombat(Unit, Event)
Unit:RegisterEvent("TheDukeofCynders_BlastWave", 8000, 0)
Unit:RegisterEvent("TheDukeofCynders_FireBlast", 6000, 0)
Unit:RegisterEvent("TheDukeofCynders_Flamestrike", 2000, 2)
end

function TheDukeofCynders_BlastWave(pUnit, Event) 
pUnit:CastSpell(22424) 
end

function TheDukeofCynders_FireBlast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(25028, pUnit:GetMainTank()) 
end

function TheDukeofCynders_Flamestrike(pUnit, Event) 
pUnit:CastSpell(18399) 
end

function TheDukeofCynders_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TheDukeofCynders_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TheDukeofCynders_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(15206, 1, "TheDukeofCynders_OnCombat")
RegisterUnitEvent(15206, 2, "TheDukeofCynders_OnLeaveCombat")
RegisterUnitEvent(15206, 3, "TheDukeofCynders_OnKilledTarget")
RegisterUnitEvent(15206, 4, "TheDukeofCynders_OnDied")