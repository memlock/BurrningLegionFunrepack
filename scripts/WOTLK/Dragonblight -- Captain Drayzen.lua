--[[ Dragonblight -- Captain Drayzen.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function CaptainDrayzen_OnCombat(Unit, Event)
Unit:RegisterEvent("CaptainDrayzen_Cleave", 6000, 0)
Unit:RegisterEvent("CaptainDrayzen_MortalStrike", 8000, 0)
Unit:RegisterEvent("CaptainDrayzen_Whirlwind", 7000, 0)
end

function CaptainDrayzen_Cleave(pUnit, Event) 
pUnit:CastSpell(42724) 
end

function CaptainDrayzen_MortalStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15708, pUnit:GetMainTank()) 
end

function CaptainDrayzen_Whirlwind(pUnit, Event) 
pUnit:CastSpell(38619) 
end

function CaptainDrayzen_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CaptainDrayzen_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CaptainDrayzen_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27751, 1, "CaptainDrayzen_OnCombat")
RegisterUnitEvent(27751, 2, "CaptainDrayzen_OnLeaveCombat")
RegisterUnitEvent(27751, 3, "CaptainDrayzen_OnKilledTarget")
RegisterUnitEvent(27751, 4, "CaptainDrayzen_OnDied")