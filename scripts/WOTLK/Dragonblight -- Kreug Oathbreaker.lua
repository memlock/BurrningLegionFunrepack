--[[ Dragonblight -- Kreug Oathbreaker.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function KreugOathbreaker_OnCombat(Unit, Event)
Unit:RegisterEvent("KreugOathbreaker_Backbreaker", 12000, 0)
Unit:RegisterEvent("KreugOathbreaker_BrokenOath", 13000, 0)
Unit:RegisterEvent("KreugOathbreaker_InciteHorror", 14000, 0)
end

function KreugOathbreaker_Backbreaker(pUnit, Event) 
pUnit:FullCastSpellOnTarget(53437, pUnit:GetMainTank()) 
end

function KreugOathbreaker_BrokenOath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(56310) 
end

function KreugOathbreaker_InciteHorror(pUnit, Event) 
pUnit:FullCastSpellOnTarget(53438, pUnit:GetMainTank()) 
end

function KreugOathbreaker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function KreugOathbreaker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function KreugOathbreaker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27105, 1, "KreugOathbreaker_OnCombat")
RegisterUnitEvent(27105, 2, "KreugOathbreaker_OnLeaveCombat")
RegisterUnitEvent(27105, 3, "KreugOathbreaker_OnKilledTarget")
RegisterUnitEvent(27105, 4, "KreugOathbreaker_OnDied")