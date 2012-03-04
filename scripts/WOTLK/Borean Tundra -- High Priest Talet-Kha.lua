--[[ Borean Tundra -- High Priest Talet-Kha.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function HighPriestTaletKha_OnCombat(Unit, Event)
Unit:RegisterEvent("HighPriestTaletKha_MindBlast", 6000, 0)
Unit:RegisterEvent("HighPriestTaletKha_Renew", 13000, 0)
end

function HighPriestTaletKha_MindBlast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15587, pUnit:GetMainTank()) 
end

function HighPriestTaletKha_Renew(pUnit, Event) 
pUnit:CastSpell(11640) 
end

function HighPriestTaletKha_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HighPriestTaletKha_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HighPriestTaletKha_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26073, 1, "HighPriestTaletKha_OnCombat")
RegisterUnitEvent(26073, 2, "HighPriestTaletKha_OnLeaveCombat")
RegisterUnitEvent(26073, 3, "HighPriestTaletKha_OnKilledTarget")
RegisterUnitEvent(26073, 4, "HighPriestTaletKha_OnDied")