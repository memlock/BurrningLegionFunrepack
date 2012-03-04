--[[ Netherstorm -- Arcane Annihilator.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 21th, 2008. ]]

function Annihilator_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Annihilator_Explosion",1500,0)
    pUnit:RegisterEvent("Annihilator_Suppression",3000,0)
end

function Annihilator_Explosion(pUnit,Event)
    pUnit:FullCastSpellOnTarget(33860, pUnit:GetClosestPlayer())
end

function Annihilator_Suppression(pUnit,Event)
    pUnit:FullCastSpellOnTarget(35892, pUnit:GetClosestPlayer())
end

function Annihilator_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Annihilator_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (18856, 1, "Annihilator_OnEnterCombat")
RegisterUnitEvent (18856, 2, "Annihilator_OnLeaveCombat")
RegisterUnitEvent (18856, 4, "Annihilator_OnDied")