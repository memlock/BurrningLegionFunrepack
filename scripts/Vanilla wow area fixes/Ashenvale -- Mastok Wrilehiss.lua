--[[ Ashenvale -- Mastok Wrilehiss.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function MastokWrilehiss_OnCombat(Unit, Event)
Unit:RegisterEvent("MastokWrilehiss_Cleave", 8000, 0)
Unit:RegisterEvent("MastokWrilehiss_Enrage", 12000, 0)
Unit:RegisterEvent("MastokWrilehiss_PiercingHowl", 10000, 0)
end

function MastokWrilehiss_Cleave(pUnit, Event) 
pUnit:CastSpell(15284) 
end

function MastokWrilehiss_Enrage(pUnit, Event) 
pUnit:CastSpell(8599) 
end

function MastokWrilehiss_PiercingHowl(pUnit, Event) 
pUnit:CastSpell(23600) 
end

function MastokWrilehiss_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MastokWrilehiss_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MastokWrilehiss_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12737, 1, "MastokWrilehiss_OnCombat")
RegisterUnitEvent(12737, 2, "MastokWrilehiss_OnLeaveCombat")
RegisterUnitEvent(12737, 3, "MastokWrilehiss_OnKilledTarget")
RegisterUnitEvent(12737, 4, "MastokWrilehiss_OnDied")