---------------------------------------------------------------------------
--Scripted boss Undhostios for Hunt Event
--Scripted for this repack(BurrningLegion)
--By Avatar
---------------------------------------------------------------------------
function Undhostios_OnCombat(Unit, Event) 
Unit:SendChatMessage(14, 0, "YOU DARE TO CHALANGE ME MORTALS??")
Unit:RegisterEvent("Undhostios_Phase1", 1000, 0)
end

function Undhostios_Phase1(Unit, Event)
if (Unit:GetHealthPct() <= 90) then
Unit:RemoveEvents()
Unit:SendChatMessage(14, 0, "Water will be your grave!!")
Unit:RegisterEvent("Undhostios_tidalwave", 10000, 5)
Unit:RegisterEvent("Undhostios_Phase2", 1000, 0)
end
end

function Undhostios_Phase2(Unit, Event)
if (Unit:GetHealthPct() <= 75) then
Unit:RemoveEvents()
Unit:SendChatMessage(14, 0, "GROUND SHAKES BEFORE MY MIGHT!!Murlocs aid me!Your master calls")
Unit:RegisterEvent("Undhostios_Earthquake", 15000, 3)
Unit:RegisterEvent("Undhostios_Summon1", 1000, 1)
Unit:RegisterEvent("Undhostios_Phase3", 1000, 0)
end
end

function Undhostios_Phase3(Unit, Event)
if (Unit:GetHealthPct() <= 50) then
Unit:RemoveEvents()
Unit:SendChatMessage(14, 0, "I AM THE WATER GOD,YOU CANNOT DEFEAT ME!!")
Unit:RegisterEvent("Undhostios_Waterygrave", 10000, 5)
Unit:RegisterEvent("Undhostios_Phase4", 1000, 0)
end
end

function Undhostios_Phase4(Unit, Event)
if (Unit:GetHealthPct() <= 25) then
Unit:RemoveEvents()
Unit:SendChatMessage(14, 0, "RAW POWER!!Naga aid me!Yor master calls!")
Unit:RegisterEvent("Undhostios_forkedlighting", 20000, 3)
Unit:RegisterEvent("Undhostios_Summon2", 1000, 1)
end
end

function Undhostios_tidalwave(pUnit, Event) 
pUnit:CastSpell(37730)
end

function Undhostios_Earthquake(pUnit, Event)
Unit:RemoveEvents()  
pUnit:CastSpell(37764)
end

function Undhostios_Summon1(pUnit, Event)
pUnit:RemoveEvents()
x = pUnit:GetX(-2469.734375)
y = pUnit:GetY(-4616.917969)
z = pUnit:GetZ(-44.194298)
o = pUnit:GetO(3.687445)
pUnit:SpawnCreature(408824, -2469.734375, -4616.917969, -44.194298, 3.687445, 14, 60000)
pUnit:SpawnCreature(408824, -2469.734375, -4616.917969, -44.194298, 3.687445, 14, 60000)
pUnit:SpawnCreature(408824, -2469.734375, -4616.917969, -44.194298, 3.687445, 14, 60000)
end

function Undhostios_Waterygrave(pUnit, Event) 
pUnit:CastSpellOnTarget(38025, pUnit:GetRandomPlayer(5))
end

function Undhostios_forkedlighting(pUnit, Event)
Unit:RemoveEvents()  
pUnit:CastSpell(38145)
end

function Undhostios_Summon2(pUnit, Event)
pUnit:RemoveEvents()
x = pUnit:GetX(-2469.734375)
y = pUnit:GetY(-4616.917969)
z = pUnit:GetZ(-44.194298)
o = pUnit:GetO(3.687445)
pUnit:SpawnCreature(90236, -2469.734375, -4616.917969, -44.194298, 3.687445, 14, 60000)
pUnit:SpawnCreature(90236, -2469.734375, -4616.917969, -44.194298, 3.687445, 14, 60000)
pUnit:SpawnCreature(90236, -2469.734375, -4616.917969, -44.194298, 3.687445, 14, 60000)
end

function Undhostios_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Undhostios_OnDied(Unit, Event) 
Unit:RemoveEvents() 
Unit:SendChatMessage(14, 0, "I will return,you cannot destroy me forever!!") 
end

function Undhostios_OnKilledTarget(Unit, Event) 
Unit:SendChatMessage(14, 0, "You will all be my slaves,just like murlocs!!") 
end

RegisterUnitEvent(9532, 1, Undhostios_OnCombat)
RegisterUnitEvent(9532, 2, Undhostios_OnLeaveCombat)
RegisterUnitEvent(9532, 3, Undhostios_OnKilledTarget)
RegisterUnitEvent(9532, 4, Undhostios_OnDied)
