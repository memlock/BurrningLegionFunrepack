--[[ Crystalsong Forest -- Shandaral Hunter Spirit.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function ShandaralHunterSpirit_OnCombat(Unit, Event)
Unit:RegisterEvent("ShandaralHunterSpirit_AimedShot", 7000, 0)
Unit:RegisterEvent("ShandaralHunterSpirit_ImprovedWingClip", 10000, 0)
Unit:RegisterEvent("ShandaralHunterSpirit_Shoot", 6000, 0)
end

function ShandaralHunterSpirit_AimedShot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(54615, pUnit:GetMainTank()) 
end

function ShandaralHunterSpirit_ImprovedWingClip(pUnit, Event) 
pUnit:FullCastSpellOnTarget(47168, pUnit:GetMainTank()) 
end

function ShandaralHunterSpirit_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function ShandaralHunterSpirit_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ShandaralHunterSpirit_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ShandaralHunterSpirit_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(30864, 1, "ShandaralHunterSpirit_OnCombat")
RegisterUnitEvent(30864, 2, "ShandaralHunterSpirit_OnLeaveCombat")
RegisterUnitEvent(30864, 3, "ShandaralHunterSpirit_OnKilledTarget")
RegisterUnitEvent(30864, 4, "ShandaralHunterSpirit_OnDied")