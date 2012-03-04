--[[ Grizzly Hills -- Syreian the Bonecarver.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 4th, 2009. ]]


function SyreiantheBonecarver_OnCombat(Unit, Event)
Unit:RegisterEvent("SyreiantheBonecarver_FrostArrow", 7000, 0)
Unit:RegisterEvent("SyreiantheBonecarver_ImprovedWingClip", 13000, 0)
Unit:RegisterEvent("SyreiantheBonecarver_Shoot", 6000, 0)
end

function SyreiantheBonecarver_FrostArrow(pUnit, Event) 
pUnit:FullCastSpellOnTarget(38952, pUnit:GetMainTank()) 
end

function SyreiantheBonecarver_ImprovedWingClip(pUnit, Event) 
pUnit:FullCastSpellOnTarget(47168, pUnit:GetMainTank()) 
end

function SyreiantheBonecarver_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50092, pUnit:GetMainTank()) 
end

function SyreiantheBonecarver_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SyreiantheBonecarver_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SyreiantheBonecarver_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(32438, 1, "SyreiantheBonecarver_OnCombat")
RegisterUnitEvent(32438, 2, "SyreiantheBonecarver_OnLeaveCombat")
RegisterUnitEvent(32438, 3, "SyreiantheBonecarver_OnKilledTarget")
RegisterUnitEvent(32438, 4, "SyreiantheBonecarver_OnDied")