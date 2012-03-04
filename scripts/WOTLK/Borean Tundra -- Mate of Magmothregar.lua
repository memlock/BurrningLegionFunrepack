--[[ Borean Tundra -- Mate of Magmothregar.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function MateofMagmothregar_OnCombat(Unit, Event)
Unit:RegisterEvent("MateofMagmothregar_Enrage", 10000, 0)
end

function MateofMagmothregar_Enrage(pUnit, Event) 
pUnit:CastSpell(50420) 
end

function MateofMagmothregar_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MateofMagmothregar_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MateofMagmothregar_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25432, 1, "MateofMagmothregar_OnCombat")
RegisterUnitEvent(25432, 2, "MateofMagmothregar_OnLeaveCombat")
RegisterUnitEvent(25432, 3, "MateofMagmothregar_OnKilledTarget")
RegisterUnitEvent(25432, 4, "MateofMagmothregar_OnDied")