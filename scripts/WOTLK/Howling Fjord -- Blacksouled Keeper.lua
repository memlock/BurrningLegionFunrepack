--[[ Howling Fjord -- Blacksouled Keeper.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 4th, 2009. ]]


function BlacksouledKeeper_OnCombat(Unit, Event)
Unit:RegisterEvent("BlacksouledKeeper_Wrath", 5000, 0)
end

function BlacksouledKeeper_Wrath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(43619, pUnit:GetMainTank()) 
end

function BlacksouledKeeper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BlacksouledKeeper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BlacksouledKeeper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(23875, 1, "BlacksouledKeeper_OnCombat")
RegisterUnitEvent(23875, 2, "BlacksouledKeeper_OnLeaveCombat")
RegisterUnitEvent(23875, 3, "BlacksouledKeeper_OnKilledTarget")
RegisterUnitEvent(23875, 4, "BlacksouledKeeper_OnDied")