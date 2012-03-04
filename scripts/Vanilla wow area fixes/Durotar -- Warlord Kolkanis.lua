--[[ Durotar -- Warlord Kolkanis.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function WarlordKolkanis_OnCombat(Unit, Event)
Unit:RegisterEvent("WarlordKolkanis_Pummel", 5000, 0)
Unit:RegisterEvent("WarlordKolkanis_Thunderclap", 7000, 0)
end

function WarlordKolkanis_Pummel(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12555, pUnit:GetMainTank()) 
end

function WarlordKolkanis_Thunderclap(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8078, pUnit:GetMainTank()) 
end

function WarlordKolkanis_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WarlordKolkanis_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WarlordKolkanis_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5808, 1, "WarlordKolkanis_OnCombat")
RegisterUnitEvent(5808, 2, "WarlordKolkanis_OnLeaveCombat")
RegisterUnitEvent(5808, 3, "WarlordKolkanis_OnKilledTarget")
RegisterUnitEvent(5808, 4, "WarlordKolkanis_OnDied")