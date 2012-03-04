--[[ Bloodmyst Isle -- Bristlelimb Shaman.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 28th, 2008. ]]

function BristlelimbShaman_OnCombat(Unit, Event)
Unit:RegisterEvent("BristlelimbShaman_FlameShock", 10000, 0)
Unit:RegisterEvent("BristlelimbShaman_ScorchingTotem", 2000, 1)
end

function BristlelimbShaman_FlameShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32967, pUnit:GetMainTank()) 
end

function BristlelimbShaman_ScorchingTotem(pUnit, Event) 
pUnit:CastSpell(32968) 
end

function BristlelimbShaman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BristlelimbShaman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BristlelimbShaman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17320, 1, "BristlelimbShaman_OnCombat")
RegisterUnitEvent(17320, 2, "BristlelimbShaman_OnLeaveCombat")
RegisterUnitEvent(17320, 3, "BristlelimbShaman_OnKilledTarget")
RegisterUnitEvent(17320, 4, "BristlelimbShaman_OnDied")