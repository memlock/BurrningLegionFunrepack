--[[ Stonetalon Mountains -- Mirkfallon Keeper.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function MirkfallonKeeper_OnCombat(Unit, Event)
Unit:RegisterEvent("MirkfallonKeeper_MirkfallonFungus", 10000, 1)
end

function MirkfallonKeeper_MirkfallonFungus(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8138, pUnit:GetMainTank()) 
end

function MirkfallonKeeper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MirkfallonKeeper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MirkfallonKeeper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4056, 1, "MirkfallonKeeper_OnCombat")
RegisterUnitEvent(4056, 2, "MirkfallonKeeper_OnLeaveCombat")
RegisterUnitEvent(4056, 3, "MirkfallonKeeper_OnKilledTarget")
RegisterUnitEvent(4056, 4, "MirkfallonKeeper_OnDied")