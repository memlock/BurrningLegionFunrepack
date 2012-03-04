--[[ The Barrens -- Warlord Kromzar.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function WarlordKromzar_OnCombat(Unit, Event)
Unit:RegisterEvent("WarlordKromzar_CreateKromzarsBanner", 2000, 1)
Unit:RegisterEvent("WarlordKromzar_Strike", 5000, 0)
end

function WarlordKromzar_CreateKromzarsBanner(pUnit, Event) 
pUnit:CastSpell(13965) 
end

function WarlordKromzar_Strike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11976, pUnit:GetMainTank()) 
end

function WarlordKromzar_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WarlordKromzar_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WarlordKromzar_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(9456, 1, "WarlordKromzar_OnCombat")
RegisterUnitEvent(9456, 2, "WarlordKromzar_OnLeaveCombat")
RegisterUnitEvent(9456, 3, "WarlordKromzar_OnKilledTarget")
RegisterUnitEvent(9456, 4, "WarlordKromzar_OnDied")