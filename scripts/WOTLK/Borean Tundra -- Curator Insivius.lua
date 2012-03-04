--[[ Borean Tundra -- Curator Insivius.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function CuratorInsivius_OnCombat(Unit, Event)
Unit:RegisterEvent("CuratorInsivius_Charge", 1000, 1)
Unit:RegisterEvent("CuratorInsivius_FrostNova", 10000, 0)
Unit:RegisterEvent("CuratorInsivius_MortalStrike", 8000, 0)
end

function CuratorInsivius_Charge(pUnit, Event) 
pUnit:FullCastSpellOnTarget(22120, pUnit:GetMainTank()) 
end

function CuratorInsivius_FrostNova(pUnit, Event) 
pUnit:CastSpell(11831) 
end

function CuratorInsivius_MortalStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(39171, pUnit:GetMainTank()) 
end

function CuratorInsivius_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CuratorInsivius_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CuratorInsivius_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25448, 1, "CuratorInsivius_OnCombat")
RegisterUnitEvent(25448, 2, "CuratorInsivius_OnLeaveCombat")
RegisterUnitEvent(25448, 3, "CuratorInsivius_OnKilledTarget")
RegisterUnitEvent(25448, 4, "CuratorInsivius_OnDied")