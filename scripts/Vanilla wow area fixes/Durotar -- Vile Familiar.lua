--[[ Durotar -- Vile Familiar.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function VileFamiliar_OnCombat(Unit, Event)
Unit:RegisterEvent("VileFamiliar_Fireball", 8000, 0)
end

function VileFamiliar_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11921, pUnit:GetMainTank()) 
end

function VileFamiliar_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function VileFamiliar_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function VileFamiliar_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3101, 1, "VileFamiliar_OnCombat")
RegisterUnitEvent(3101, 2, "VileFamiliar_OnLeaveCombat")
RegisterUnitEvent(3101, 3, "VileFamiliar_OnKilledTarget")
RegisterUnitEvent(3101, 4, "VileFamiliar_OnDied")