--[[ Netherstorm -- Sundered Rumbler.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 26th, 2008. ]]

function Sundered_Rumbler_OnCombat(pUnit, Event)
pUnit:RegisterEvent("Sundered_Rumbler_Summon_Sundered_Shard", 8000, 0)
end

function Sundered_Rumbler_OnLeaveCombat(pUnit, Event)
pUnit:RemoveEvents()
end

function Sundered_Rumbler_OnKillTarget(pUnit, Event)
pUnit:RemoveEvents()
end

function Sundered_Rumbler_OnDeath(pUnit, Event)
pUnit:RemoveEvents()
end

RegisterUnitEvent(18881, 1, "Sundered_Rumbler_OnCombat")
RegisterUnitEvent(18881, 2, "Sundered_Rumbler_OnLeaveCombat")
RegisterUnitEvent(18881, 3, "Sundered_Rumbler_OnKillTarget")
RegisterUnitEvent(18881, 4, "Sundered_Rumbler_OnDeath")

function Sundered_Rumbler_Summon_Sundered_Shard(pUnit, Event)
pUnit:CastSpell(35310)
local X = pUnit:GetX()
local Y = pUnit:GetY()
local Z = pUnit:GetZ()
local O = pUnit:GetO()
pUnit:SpawnCreature(20498, X, Y, Z, O, 35, 0)
end
