--[[ Netherstorm -- Ever-Core the Punisher.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 29th, 2008. ]]

function Punisher_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Punisher_Explosion",1500,0)
    pUnit:RegisterEvent("Punisher_Suppression",3000,0)
end

function Punisher_Explosion(pUnit,Event)
    pUnit:FullCastSpellOnTarget(33860,pUnit:GetClosestPlayer())
end

function Punisher_Suppression(pUnit,Event)
    pUnit:FullCastSpellOnTarget(35892,pUnit:GetClosestPlayer())
end

function Punisher_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Punisher_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (18698, 1, "Punisher_OnEnterCombat")
RegisterUnitEvent (18698, 2, "Punisher_OnLeaveCombat")
RegisterUnitEvent (18698, 4, "Punisher_OnDied")