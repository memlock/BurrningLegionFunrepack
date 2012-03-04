--[[ Azshara -- Haldarr Felsworn.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function HaldarrFelsworn_OnCombat(Unit, Event)
Unit:RegisterEvent("HaldarrFelsworn_ShadowBolt", 8000, 0)
end

function HaldarrFelsworn_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20825, pUnit:GetMainTank()) 
end

function HaldarrFelsworn_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HaldarrFelsworn_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HaldarrFelsworn_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6127, 1, "HaldarrFelsworn_OnCombat")
RegisterUnitEvent(6127, 2, "HaldarrFelsworn_OnLeaveCombat")
RegisterUnitEvent(6127, 3, "HaldarrFelsworn_OnKilledTarget")
RegisterUnitEvent(6127, 4, "HaldarrFelsworn_OnDied")
