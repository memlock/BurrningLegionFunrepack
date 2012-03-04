--[[ Netherstorm -- Spellbinder Maryana.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 01th, 2008. ]]

function Maryana_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Maryana_Blast",5000,0)
    pUnit:RegisterEvent("Maryana_Fire",7000,0)
    pUnit:RegisterEvent("Maryana_Intellect",1000,(1))
end

function Maryana_Blast(pUnit,Event)
    pUnit:CastSpell(37450)
end   

function Maryana_Fire(pUnit,Event)
    pUnit:CastSpell(15091)
end

function Maryana_Intellect(pUnit,Event)
    pUnit:CastSpell(35917)
end

function Maryana_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Maryana_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (19593, 1, "Maryana_OnEnterCombat")
RegisterUnitEvent (19593, 2, "Maryana_OnLeaveCombat")
RegisterUnitEvent (19593, 4, "Maryana_OnDied")