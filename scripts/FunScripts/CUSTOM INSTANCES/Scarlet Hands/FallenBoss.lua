function phasse_11(pUnit, Event)
 if pUnit:GetHealthPct() < 90 then
  pUnit:RemoveEvents();
  pUnit:SendChatMessage (11, 0, "your turn to feel my pain!")
  pUnit:FullCastSpell(29204)
  pUnit:RegisterEvent("phasse_22",1000, 0)
 end
end
 
function phasse_22(pUnit, Event)
 if pUnit:GetHealthPct() < 80 then
  pUnit:RemoveEvents();
  pUnit:SendChatMessage (11, 0, "Roar!")
  pUnit:SetScale(2.11);
  pUnit:RegisterEvent("phasse_33",1000, 0)
 end
end
 
function phasse_33(pUnit, Event)
 if pUnit:GetHealthPct() < 70 then
  pUnit:RemoveEvents();
  pUnit:SendChatMessage (11, 0, "Come my Demons!")
  pUnit:SpawnCreature(400005, 255.494034, -109.102150, 18.679377, 1.555102, 67, 120000);
  pUnit:SpawnCreature(400005, 267.322784, -99.830444, 18.679377, 3.121971, 67, 120000);
  pUnit:SpawnCreature(400005, 255.326370, -90.257805, 18.679377, 4.728659, 67, 120000);
  pUnit:SpawnCreature(400005, 245.597076, -100.628654, 18.679377, 0.059468, 67, 120000);
  pUnit:RegisterEvent("phasse_66",3000, 0)
 end
end

function phasse_66(pUnit, Event)
 if pUnit:GetHealthPct() < 60 then
  pUnit:RemoveEvents();
  pUnit:SendChatMessage (11, 0, "your turn to feel my pain!")
  pUnit:FullCastSpell(29204)
  pUnit:RegisterEvent("phasse_77",1000, 0)
 end
end

function phasse_77(pUnit, Event)
 if pUnit:GetHealthPct() < 50 then
  pUnit:RemoveEvents();
  pUnit:SendChatMessage (11, 0, "You can not kill me!")
  pUnit:FullCastSpell(1020)
  pUnit:RegisterEvent("phasse_88",2000, 0)
 end
end

function phasse_88(pUnit, Event)
 if pUnit:GetHealthPct() < 50 then
  pUnit:RemoveEvents();
  pUnit:FullCastSpell(27136)
  pUnit:RegisterEvent("phasse_99",5000, 0)
 end
end

function phasse_99(pUnit, Event)
 if pUnit:GetHealthPct() < 49 then
  pUnit:RemoveEvents();
  pUnit:FullCastSpell(27136)
  pUnit:RegisterEvent("phasse_100",5000, 0)
 end
end

function phasse_100(pUnit, Event)
 if pUnit:GetHealthPct() < 48 then
  pUnit:RemoveEvents();
  pUnit:FullCastSpell(27136)
  pUnit:RegisterEvent("phasse_101",5000, 0)
 end
end

function phasse_101(pUnit, Event)
 if pUnit:GetHealthPct() < 40 then
  pUnit:RemoveEvents();
  pUnit:SendChatMessage (11, 0, "FEL STOMP!")
  pUnit:FullCastSpell(41274)
  pUnit:RegisterEvent("phasse_102",1000, 0)
 end
end

function phasse_102(pUnit, Event)
 if pUnit:GetHealthPct() < 39 then
  pUnit:RemoveEvents();
  pUnit:FullCastSpell(41274)
  pUnit:RegisterEvent("phasse_103",1000, 0)
 end
end
 
function phasse_103(pUnit, Event)
 if pUnit:GetHealthPct() < 38 then
  pUnit:RemoveEvents();
  pUnit:FullCastSpell(41274)
  pUnit:RegisterEvent("phasse_104",1000, 0)
 end
end
 
function phasse_104(pUnit, Event)
 if pUnit:GetHealthPct() < 30 then
  pUnit:RemoveEvents();
  pUnit:SendChatMessage (11, 0, "Come my Demons!")
  pUnit:SpawnCreature(400005, 255.494034, -109.102150, 18.679377, 1.555102, 67, 120000);
  pUnit:SpawnCreature(400005, 267.322784, -99.830444, 18.679377, 3.121971, 67, 120000);
  pUnit:SpawnCreature(400005, 255.326370, -90.257805, 18.679377, 4.728659, 67, 120000);
  pUnit:SpawnCreature(400005, 245.597076, -100.628654, 18.679377, 0.059468, 67, 120000);
  pUnit:RegisterEvent("phasse_108",3000, 0)
 end
end

function phasse_108(pUnit, Event)
 if pUnit:GetHealthPct() < 20 then
  pUnit:RemoveEvents();
  pUnit:SendChatMessage (11, 0, "your turn to feel my pain!")
  pUnit:FullCastSpell(29204)
  pUnit:RegisterEvent("phasse_109",1000, 0)
 end
end

function phasse_109(pUnit, Event)
 if pUnit:GetHealthPct() < 10 then
  pUnit:RemoveEvents();
  pUnit:SendChatMessage (11, 0, "Come to me!")
  pUnit:SpawnCreature(400000, 255.494034, -109.102150, 18.679377, 1.555102, 67, 120000);
  pUnit:SpawnCreature(400001, 267.322784, -99.830444, 18.679377, 3.121971, 67, 120000);
  pUnit:SpawnCreature(400002, 255.326370, -90.257805, 18.679377, 4.728659, 67, 120000);
  pUnit:SpawnCreature(400003, 245.597076, -100.628654, 18.679377, 0.059468, 67, 120000);
 end
end

function Bosss_start(pUnit, Event)
 pUnit:RegisterEvent("phasse_11",1000, 0)
 pUnit:SendChatMessage (11, 0, "How dear you interupt my slumper!")
end
RegisterUnitEvent(400014, 1, "Bosss_start")