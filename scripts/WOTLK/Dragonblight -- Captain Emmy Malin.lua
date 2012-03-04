--[[ Dragonblight -- Captain Emmy Malin.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function CaptainEmmyMalin_OnCombat(Unit, Event)
Unit:RegisterEvent("CaptainEmmyMalin_FrostNova", 10000, 0)
Unit:RegisterEvent("CaptainEmmyMalin_Frostbolt", 8000, 0)
Unit:RegisterEvent("CaptainEmmyMalin_IceLance", 3000, 0)
end

function CaptainEmmyMalin_FrostNova(pUnit, Event) 
pUnit:CastSpell(11831) 
end

function CaptainEmmyMalin_Frostbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20792, pUnit:GetMainTank()) 
end

function CaptainEmmyMalin_IceLance(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49906, pUnit:GetMainTank()) 
end

function CaptainEmmyMalin_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CaptainEmmyMalin_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CaptainEmmyMalin_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26762, 1, "CaptainEmmyMalin_OnCombat")
RegisterUnitEvent(26762, 2, "CaptainEmmyMalin_OnLeaveCombat")
RegisterUnitEvent(26762, 3, "CaptainEmmyMalin_OnKilledTarget")
RegisterUnitEvent(26762, 4, "CaptainEmmyMalin_OnDied")