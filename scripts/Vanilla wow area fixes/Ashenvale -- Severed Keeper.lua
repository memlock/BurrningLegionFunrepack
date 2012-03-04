--[[ Ashenvale -- Severed Keeper.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function SeveredKeeper_OnCombat(Unit, Event)
Unit:RegisterEvent("SeveredKeeper_ManaBurn", 7000, 0)
end

function SeveredKeeper_ManaBurn(pUnit, Event) 
pUnit:FullCastSpellOnTarget(2691, pUnit:GetRandomPlayer(4)) 
end

function SeveredKeeper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SeveredKeeper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SeveredKeeper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3803, 1, "SeveredKeeper_OnCombat")
RegisterUnitEvent(3803, 2, "SeveredKeeper_OnLeaveCombat")
RegisterUnitEvent(3803, 3, "SeveredKeeper_OnKilledTarget")
RegisterUnitEvent(3803, 4, "SeveredKeeper_OnDied")