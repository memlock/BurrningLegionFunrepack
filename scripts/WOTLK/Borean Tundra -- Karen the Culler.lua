--[[ Borean Tundra -- Karen the Culler.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function KarentheCuller_OnCombat(Unit, Event)
Unit:RegisterEvent("KarentheCuller_Cleave", 6000, 0)
Unit:RegisterEvent("KarentheCuller_Intercept", 1000, 1)
Unit:RegisterEvent("KarentheCuller_Whirlwind", 9000, 0)
end

function KarentheCuller_Cleave(pUnit, Event) 
pUnit:CastSpell(42724) 
end

function KarentheCuller_Intercept(pUnit, Event) 
pUnit:FullCastSpellOnTarget(27577, pUnit:GetMainTank()) 
end

function KarentheCuller_Whirlwind(pUnit, Event) 
pUnit:CastSpell(48281) 
end

function KarentheCuller_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function KarentheCuller_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function KarentheCuller_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25803, 1, "KarentheCuller_OnCombat")
RegisterUnitEvent(25803, 2, "KarentheCuller_OnLeaveCombat")
RegisterUnitEvent(25803, 3, "KarentheCuller_OnKilledTarget")
RegisterUnitEvent(25803, 4, "KarentheCuller_OnDied")