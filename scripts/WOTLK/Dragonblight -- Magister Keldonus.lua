--[[ Dragonblight -- Magister Keldonus.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function MagisterKeldonus_OnCombat(Unit, Event)
Unit:RegisterEvent("MagisterKeldonus_ArcaneBlast", 10000, 0)
Unit:RegisterEvent("MagisterKeldonus_FuryoftheBlue", 15000, 0)
Unit:RegisterEvent("MagisterKeldonus_MightofMalygos", 6000, 1)
Unit:RegisterEvent("MagisterKeldonus_PowerFlux", 13000, 0)
Unit:RegisterEvent("MagisterKeldonus_PowerSiphon", 18000, 0)
end

function MagisterKeldonus_ArcaneBlast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51830, pUnit:GetMainTank()) 
end

function MagisterKeldonus_FuryoftheBlue(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51808, pUnit:GetMainTank()) 
end

function MagisterKeldonus_MightofMalygos(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51800, pUnit:GetMainTank()) 
end

function MagisterKeldonus_PowerFlux(pUnit, Event) 
pUnit:CastSpell(51806) 
end

function MagisterKeldonus_PowerSiphon(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51804, pUnit:GetMainTank()) 
end

function MagisterKeldonus_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MagisterKeldonus_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MagisterKeldonus_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26828, 1, "MagisterKeldonus_OnCombat")
RegisterUnitEvent(26828, 2, "MagisterKeldonus_OnLeaveCombat")
RegisterUnitEvent(26828, 3, "MagisterKeldonus_OnKilledTarget")
RegisterUnitEvent(26828, 4, "MagisterKeldonus_OnDied")