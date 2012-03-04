function phhaase_11(pUnit, Event)
 if pUnit:GetHealthPct() < 99 then
  pUnit:RemoveEvents();
  pUnit:SendChatMessage (11, 0, "Mark me brutal wild!")
  pUnit:FullCastSpell(26990)
  pUnit:RegisterEvent("phhaase_22",1000, 0)
 end
end
 
function phhaase_22(pUnit, Event)
 if pUnit:GetHealthPct() < 70 then
  pUnit:RemoveEvents();
  pUnit:SendChatMessage (11, 0, "The wrath of nature!")
  pUnit:FullCastSpell(26979)
  pUnit:RegisterEvent("phhaase_33",1000, 0)
 end
end
 
function phhaase_33(pUnit, Event)
 if pUnit:GetHealthPct() < 50 then
  pUnit:RemoveEvents();
  pUnit:SendChatMessage (11, 0, "Natures Tranquility")
  pUnit:FullCastSpell(26983)
  pUnit:RegisterEvent("phhaase_44",1000, 0)
 end
end
 
function phhaase_44(pUnit, Event)
 if pUnit:GetHealthPct() < 30 then
  pUnit:RemoveEvents();
  pUnit:SendChatMessage (11, 0, "Nature, i force you!")
  pUnit:SpawnCreature(400008, 196.844788, 18.691355, 30.839066, 1.552042, 67, 220000);
  pUnit:SpawnCreature(400008, 188.469711, 25.988760, 30.839060, 6.236941, 67, 220000);
  pUnit:SpawnCreature(400008, 197.002594, 34.448643, 30.839046, 4.697562, 67, 220000);
  pUnit:SpawnCreature(400008, 205.186874, 26.095493, 30.839050, 3.118916, 67, 220000);
  pUnit:RegisterEvent("phhaase_55",1000, 0)
 end
end

function phhaase_55(pUnit, Event)
 if pUnit:GetHealthPct() < 10 then
  pUnit:RemoveEvents();
  pUnit:SendChatMessage (11, 0, "Earth! i command you!")
  pUnit:FullCastSpell(33919)
  pUnit:RegisterEvent("phhaase_66",1000, 0)
 end
end
  
function phhaase_66(pUnit, Event)
 if pUnit:GetHealthPct() < 7 then
  pUnit:RemoveEvents();
  pUnit:FullCastSpell(33919)
  pUnit:RegisterEvent("phhaase_77",1000, 0)
 end
end
function phhaase_77(pUnit, Event)
 if pUnit:GetHealthPct() < 5 then
  pUnit:RemoveEvents();
  pUnit:FullCastSpell(33919)
 end
end

function Bbooss_start(pUnit, Event)
 pUnit:RegisterEvent("phhaase_11",1000, 0)
 pUnit:SendChatMessage (11, 0, "Nature Is mine to Command!")
 pUnit:FullCastSpell(42050)
end
RegisterUnitEvent(400007, 1, "Bbooss_start")