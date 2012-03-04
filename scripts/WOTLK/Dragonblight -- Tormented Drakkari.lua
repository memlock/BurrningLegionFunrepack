--[[ Dragonblight -- Tormented Drakkari.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function TormentedDrakkari_OnCombat(Unit, Event)
Unit:RegisterEvent("TormentedDrakkari_Cannibalize", 12000, 0)
Unit:RegisterEvent("TormentedDrakkari_CrazedHunger", 6000, 1)
Unit:RegisterEvent("TormentedDrakkari_Kick", 7000, 0)
Unit:RegisterEvent("TormentedDrakkari_TormentedRoar", 8000, 0)
end

function TormentedDrakkari_Cannibalize(pUnit, Event) 
pUnit:CastSpell(50642) 
end

function TormentedDrakkari_CrazedHunger(pUnit, Event) 
pUnit:CastSpell(3151) 
end

function TormentedDrakkari_Kick(pUnit, Event) 
pUnit:FullCastSpellOnTarget(43518, pUnit:GetMainTank()) 
end

function TormentedDrakkari_TormentedRoar(pUnit, Event) 
pUnit:CastSpell(50636) 
end

function TormentedDrakkari_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TormentedDrakkari_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TormentedDrakkari_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26965, 1, "TormentedDrakkari_OnCombat")
RegisterUnitEvent(26965, 2, "TormentedDrakkari_OnLeaveCombat")
RegisterUnitEvent(26965, 3, "TormentedDrakkari_OnKilledTarget")
RegisterUnitEvent(26965, 4, "TormentedDrakkari_OnDied")