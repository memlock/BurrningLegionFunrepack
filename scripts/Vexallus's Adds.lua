--[[ Vexallus-Add.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX of the Blua Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, June 23, 2008. ]]

function Add_Death(pUnit,Event)
	pUnit:FullCastSpellOnTarget(44335,pUnit:GetClosestPlayer())
end

function Add_Spell(pUnit, Event)
c = math.random(10);
if (c < 7) then
   pUnit:FullCastSpellOnTarget(44342,pUnit:GetRandomPlayer())
   end
end

RegisterUnitEvent(24745, 1, "Add_Spell")
RegisterUnitEvent(24745, 4, "AddDeath")
