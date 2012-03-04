--[[ Netherstorm -- Abjurist Belmara.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 21th, 2008. ]]

function Abjurist_OnEnterCombat(pUnit, Event)
    pUnit:RegisterEvent("Abjurist_Armor", 10000, 0)
    pUnit:RegisterEvent("Abjurist_Missiles", 1000,0)
end
    
function Abjurist_Armor(pUnit, Event)
    pUnit:CastSpell(12544)
end

function Abjurist_Missiles(pUnit, Event)
    pUnit:FullCastSpellOnTarget(34447,pUnit:GetClosestPlayer())
end

function Abjurist_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Abjurist_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (19546, 1, "Abjurist_OnEnterCombat")
RegisterUnitEvent (19546, 2, "Abjurist_OnLeaveCombat")
RegisterUnitEvent (19546, 4, "Abjurist_OnDied")