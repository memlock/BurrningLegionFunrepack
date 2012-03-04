--[[ Borean Tundra -- Counselor Talbot.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function CounselorTalbot_OnCombat(Unit, Event)
Unit:RegisterEvent("CounselorTalbot_SoulBlast", 10000, 0)
Unit:RegisterEvent("CounselorTalbot_SoulDeflection", 12000, 0)
Unit:RegisterEvent("CounselorTalbot_VampiricBolt", 15000, 0)
end

function CounselorTalbot_SoulBlast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50992, pUnit:GetMainTank()) 
end

function CounselorTalbot_SoulDeflection(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51009, pUnit:GetMainTank()) 
end

function CounselorTalbot_VampiricBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51016, pUnit:GetMainTank()) 
end

function CounselorTalbot_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CounselorTalbot_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CounselorTalbot_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25301, 1, "CounselorTalbot_OnCombat")
RegisterUnitEvent(25301, 2, "CounselorTalbot_OnLeaveCombat")
RegisterUnitEvent(25301, 3, "CounselorTalbot_OnKilledTarget")
RegisterUnitEvent(25301, 4, "CounselorTalbot_OnDied")