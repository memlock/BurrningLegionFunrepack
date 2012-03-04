--[[ The Barrens -- Kuz.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function Kuz_OnCombat(Unit, Event)
Unit:RegisterEvent("Kuz_FireBlast", 8000, 0)
Unit:RegisterEvent("Kuz_FrostNova", 10000, 0)
Unit:RegisterEvent("Kuz_Frostbolt", 4000, 0)
end

function Kuz_FireBlast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20795, pUnit:GetMainTank()) 
end

function Kuz_FrostNova(pUnit, Event) 
pUnit:CastSpell(11831) 
end

function Kuz_Frostbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20792, pUnit:GetMainTank()) 
end

function Kuz_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Kuz_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Kuz_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3436, 1, "Kuz_OnCombat")
RegisterUnitEvent(3436, 2, "Kuz_OnLeaveCombat")
RegisterUnitEvent(3436, 3, "Kuz_OnKilledTarget")
RegisterUnitEvent(3436, 4, "Kuz_OnDied")