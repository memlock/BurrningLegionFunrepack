--[[ Ashenvale -- Saltspittle Puddlejumper.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function SaltspittlePuddlejumper_OnCombat(Unit, Event)
Unit:RegisterEvent("SaltspittlePuddlejumper_BattleStance", 1000, 1)
Unit:RegisterEvent("SaltspittlePuddlejumper_RushingCharge", 8000, 0)
end

function SaltspittlePuddlejumper_BattleStance(pUnit, Event) 
pUnit:CastSpell(7165) 
end

function SaltspittlePuddlejumper_RushingCharge(pUnit, Event) 
pUnit:CastSpell(6268) 
end

function SaltspittlePuddlejumper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SaltspittlePuddlejumper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SaltspittlePuddlejumper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3737, 1, "SaltspittlePuddlejumper_OnCombat")
RegisterUnitEvent(3737, 2, "SaltspittlePuddlejumper_OnLeaveCombat")
RegisterUnitEvent(3737, 3, "SaltspittlePuddlejumper_OnKilledTarget")
RegisterUnitEvent(3737, 4, "SaltspittlePuddlejumper_OnDied")