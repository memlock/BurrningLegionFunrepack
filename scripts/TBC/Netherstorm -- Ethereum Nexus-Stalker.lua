--[[ Netherstorm -- Ethereum Nexus-Stalker.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 29th, 2008. ]]

function Stalker_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Stalker_Shadowsurge",1000,0)
    pUnit:RegisterEvent("Stalker_Shadowtouched",1000,0)
end

function Stalker_Shadowsurge(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36517,pUnit:GetClosestPlayer())
end

function Stalker_Shadowtouched(pUnit,Event)
    pUnit:CastSpell(36515)
end

function Stalker_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Stalker_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20474, 1, "Stalker_OnEnterCombat")
RegisterUnitEvent (20474, 2, "Stalker_OnEnterCombat")
RegisterUnitEvent (20474, 4, "Stalker_OnEnterCombat")