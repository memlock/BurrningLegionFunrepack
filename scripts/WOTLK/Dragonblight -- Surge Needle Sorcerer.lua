--[[ Dragonblight -- Surge Needle Sorcerer.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function SurgeNeedleSorcerer_OnCombat(Unit, Event)
Unit:RegisterEvent("SurgeNeedleSorcerer_ArcaneBlast", 6500, 0)
end

function SurgeNeedleSorcerer_ArcaneBlast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51797, pUnit:GetMainTank()) 
end

function SurgeNeedleSorcerer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SurgeNeedleSorcerer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SurgeNeedleSorcerer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26257, 1, "SurgeNeedleSorcerer_OnCombat")
RegisterUnitEvent(26257, 2, "SurgeNeedleSorcerer_OnLeaveCombat")
RegisterUnitEvent(26257, 3, "SurgeNeedleSorcerer_OnKilledTarget")
RegisterUnitEvent(26257, 4, "SurgeNeedleSorcerer_OnDied")