function KingKrong_OnCombat(Unit, Event)
Unit:SendChatMessage(14, 0, "Ooooh! Ooooh! AHHHH! AHHHH! AHHH!")
Unit:RegisterEvent("KingKrong_Spell1", 9000, 0)
Unit:RegisterEvent("KingKrong_Spell2", 21000, 0)
Unit:RegisterEvent("KingKrong_Spell3", 20000, 0)
Unit:RegisterEvent("KingKrong_Summon", 60000, 0)
Unit:RegisterEvent("KingKrong_Phase1", 1000, 0)
end

function KingKrong_Phase1(Unit, Event)
if Unit:GetHealthPct() < 50 then
Unit:RemoveEvents()
Unit:RegisterEvent("KingKrong_Spell1", 15000, 0)
Unit:RegisterEvent("KingKrong_Spell4", 15000, 0)
Unit:RegisterEvent("KingKrong_Phase2", 1000, 0)
end
end

function KingKrong_Phase2(Unit, Event)
if Unit:GetHealthPct() < 10 then
Unit:RemoveEvents()
Unit:CastSpell(48017)
Unit:RegisterEvent("KingKrong_Spell5", 15000, 0)
end
end

function KingKrong_Summon(Unit, Event)
local x = Unit:GetX();
local y = Unit:GetY();
local z = Unit:GetZ();
local o = Unit:GetO();
Unit:SpawnCreature (133705, x, y, z, o, 14 ,600000);
end

function KingKrong_Spell1(Unit, Event)
Unit:CastSpell(41274)
end

function KingKrong_Spell2(Unit, Event)
Unit:FullCastSpellOnTarget(49021, Unit:GetRandomPlayer(1))
end

function KingKrong_Spell3(Unit, Event)
Unit:CastSpell(42398)
end

function KingKrong_Spell4(Unit, Event)
Unit:FullCastSpellOnTarget(35054, Unit:GetMainTank())
end


function KingKrong_Spell5(Unit, Event)
Unit:FullCastSpellOnTarget(41975, Unit:GetMainTank())
end

function KingKrong_OnLeaveCombat(Unit, Event)
Unit:RemoveEvents() 
end

function KingKrong_OnKilledTarget(Unit, Event)
Unit:SendChatMessage(14, 0, "AAAAAAAHHHHHHHHHH!!!!")
end

function KingKrong_OnDied(Unit, Event)
Unit:SendChatMessage(14, 0, "AHH! ah! ah! ah...")
Unit:RemoveEvents() 
end

RegisterUnitEvent(133704, 1, "KingKrong_OnCombat")
RegisterUnitEvent(133704, 2, "KingKrong_OnLeaveCombat")
RegisterUnitEvent(133704, 3, "KingKrong_OnKilledTarget")
RegisterUnitEvent(133704, 4, "KingKrong_OnDied")