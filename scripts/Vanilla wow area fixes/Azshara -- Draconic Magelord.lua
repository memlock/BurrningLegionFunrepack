--[[ Azshara -- Draconic Magelord.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function DraconicMagelord_OnCombat(Unit, Event)
Unit:RegisterEvent("DraconicMagelord_FrostShock", 5000, 0)
Unit:RegisterEvent("DraconicMagelord_Frostbolt", 8000, 0)
end

function DraconicMagelord_FrostShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12548, pUnit:GetMainTank()) 
end

function DraconicMagelord_Frostbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9672, pUnit:GetMainTank()) 
end

function DraconicMagelord_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DraconicMagelord_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DraconicMagelord_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6129, 1, "DraconicMagelord_OnCombat")
RegisterUnitEvent(6129, 2, "DraconicMagelord_OnLeaveCombat")
RegisterUnitEvent(6129, 3, "DraconicMagelord_OnKilledTarget")
RegisterUnitEvent(6129, 4, "DraconicMagelord_OnDied")