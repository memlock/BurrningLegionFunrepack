--[[ Netherstorm -- Sundered Thunderer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 27th, 2008. ]]

function Sundered_Thunderer_OnCombat(pUnit, Event)
pUnit:RegisterEvent("Sundered_Thunderer_Summon_Sundered_Shard", 8000, 0)
pUnit:RegisterEvent("Sundered_Thunderer_Thunder_Clap", 6000, 0)
end

function Sundered_Thunderer_OnLeaveCombat(pUnit, Event)
pUnit:RemoveEvents()
end

function Sundered_Thunderer_OnKillTarget(pUnit, Event)
pUnit:RemoveEvents()
end

function Sundered_Thunderer_OnDeath(pUnit, Event)
pUnit:RemoveEvents()
end

RegisterUnitEvent(18882, 1, "Sundered_Thunderer_OnCombat")
RegisterUnitEvent(18882, 2, "Sundered_Thunderer_OnLeaveCombat")
RegisterUnitEvent(18882, 3, "Sundered_Thunderer_OnKillTarget")
RegisterUnitEvent(18882, 4, "Sundered_Thunderer_OnDeath")

function Sundered_Thunderer_Thunder_Clap(pUnit, Event)
pUnit:FullCastSpellOnTarget(6000,pUnit:GetMainTank())
end

function Sundered_Thunderer_Summon_Sundered_Shard(pUnit, Event)
pUnit:CastSpell(35007)
local X = pUnit:GetX()
local Y = pUnit:GetY()
local Z = pUnit:GetZ()
local O = pUnit:GetO()
pUnit:SpawnCreature(20498, X, Y, Z, O, 35, 0)
end