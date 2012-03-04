--[[ Winterspring -- Bone Witch.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 18th, 2008. ]]

function Witch_OnCombat(Unit, Event)
Unit:RegisterEvent("Witch_ArcaneBolt",6000,0)
Unit:RegisterEvent("Witch_Shield",10000,0)
Unit:RegisterEvent("Witch_Movement",8000,0)
end

function Witch_ArcaneBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20829, pUnit:GetMainTank()) 
end

function Witch_Shield(pUnit, Event) 
pUnit:CastSpell(17014) 
end

function Witch_Movement(pUnit, Event) 
pUnit:FullCastSpellOnTarget(56138, pUnit:GetMainTank()) 
end

function Witch_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Witch_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Witch_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(16380, 1, "Witch_OnCombat")
RegisterUnitEvent(16380, 2, "Witch_OnLeaveCombat")
RegisterUnitEvent(16380, 3, "Witch_OnKilledTarget")
RegisterUnitEvent(16380, 4, "Witch_OnDied")