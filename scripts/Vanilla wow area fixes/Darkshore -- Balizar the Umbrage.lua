--[[ Darkshore -- Balizar the Umbrage.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 30th, 2008. ]]

function BalizartheUmbrage_OnCombat(Unit, Event)
Unit:RegisterEvent("BalizartheUmbrage_CurseofAgony", 11000, 0)
Unit:RegisterEvent("BalizartheUmbrage_CurseofWeakness", 4000, 1)
Unit:RegisterEvent("BalizartheUmbrage_ShadowBolt", 8000, 0)
Unit:RegisterEvent("BalizartheUmbrage_SummonImp", 2000, 1)
end

function BalizartheUmbrage_CurseofAgony(pUnit, Event) 
pUnit:FullCastSpellOnTarget(14868, pUnit:GetMainTank()) 
end

function BalizartheUmbrage_CurseofWeakness(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11980, pUnit:GetMainTank()) 
end

function BalizartheUmbrage_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20791, pUnit:GetMainTank()) 
end

function BalizartheUmbrage_SummonImp(pUnit, Event) 
pUnit:CastSpell(11939) 
end

function BalizartheUmbrage_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BalizartheUmbrage_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BalizartheUmbrage_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3899, 1, "BalizartheUmbrage_OnCombat")
RegisterUnitEvent(3899, 2, "BalizartheUmbrage_OnLeaveCombat")
RegisterUnitEvent(3899, 3, "BalizartheUmbrage_OnKilledTarget")
RegisterUnitEvent(3899, 4, "BalizartheUmbrage_OnDied")