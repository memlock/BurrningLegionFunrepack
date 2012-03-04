function phaase_11(pUnit, Event)
 if pUnit:GetHealthPct() < 90 then
  pUnit:RemoveEvents();
  pUnit:SendChatMessage (11, 0, "Avenger!")
  pUnit:FullCastSpell(32700)
  pUnit:RegisterEvent("phaase_22",1000, 0)
 end
end
 
function phaase_22(pUnit, Event)
 if pUnit:GetHealthPct() < 70 then
  pUnit:RemoveEvents();
  pUnit:SendChatMessage (11, 0, "Fire beneth my ground, rise!")
  pUnit:FullCastSpell(27173)
  pUnit:RegisterEvent("phaase_33",1000, 0)
 end
end
 
function phaase_33(pUnit, Event)
 if pUnit:GetHealthPct() < 50 then
  pUnit:RemoveEvents();
  pUnit:SendChatMessage (11, 0, "Holy Power!")
  pUnit:FullCastSpell(27136)
  pUnit:RegisterEvent("phaase_44",1000, 0)
 end
end
 
function phaase_44(pUnit, Event)
 if pUnit:GetHealthPct() < 30 then
  pUnit:RemoveEvents();
  pUnit:SendChatMessage (11, 0, "Come my Scarlets!")
  pUnit:SpawnCreature(400002, 366.904205, -100.372467, 32.493214, 1.551133, 67, 220000);
  pUnit:SpawnCreature(400001, 382.689728, -99.689819, 32.487904, 1.45258, 67, 220000);
  pUnit:SpawnCreature(400000, 373.877197, -105.883064, 34.643391, 1.519717, 67, 220000);
  pUnit:SpawnCreature(400003, 374.174347, -95.544601, 32.495548, 1.531497, 67, 220000);
  pUnit:RegisterEvent("phaase_55",1000, 0)
 end
end

function phaase_55(pUnit, Event)
 if pUnit:GetHealthPct() < 10 then
  pUnit:RemoveEvents();
  pUnit:SendChatMessage (11, 0, "This land will be purge")
  pUnit:FullCastSpell(1020)
  pUnit:RegisterEvent("phaase_66",1000, 0)
 end
end
  
function phaase_66(pUnit, Event)
 if pUnit:GetHealthPct() < 3 then
  pUnit:RemoveEvents();
  pUnit:SendChatMessage (11, 0, "Never!")
  pUnit:FullCastSpell(27154)
 end
end

function Booss_start(pUnit, Event)
 pUnit:RegisterEvent("phaase_11",1000, 0)
 pUnit:SendChatMessage (11, 0, "$N, you will die!")
 pUnit:FullCastSpell(27136)
end
RegisterUnitEvent(400016, 1, "Booss_start")