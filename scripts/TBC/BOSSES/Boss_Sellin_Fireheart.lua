-- This script is Scripted by BrantX of Blua.
-- This is free for everyone to use...
-- This can be released but Proper Credits must be given.
-- Enjoy
-- The end of Terms 


function Sellin_OnKill(pUnit,Event)
	pUnit:SendChatMessage(14, 0, "Enough distractions!")
	pUnit:PlaySoundToSet(12388)
end

function Selin_EnterCombat(pUnit,Event)
	pUnit:SendChatMessage(14, 0, "You only waste my time!")
	pUnit:PlaySoundToSet(12378)
pUnit:RegisterEvent("phase_1",1000, 0)
end

-- He Drains Mana from a Crsytal!
function phase_1(pUnit, Event)
 if pUnit:GetHealthPct() < 99 then
  pUnit:RemoveEvents();
	pUnit:FullCastSpellOnTarget(46153,pUnit:GetRandomFriend())
	pUnit:SendChatMessage(14, 0, "My hunger knows no bounds!")
	pUnit:PlaySoundToSet(12381)
  pUnit:RegisterEvent("phase_2",1000, 0)
 end
end
 
-- Empower and then casts Fel-Explosion
function phase_2(pUnit, Event)
 if pUnit:GetHealthPct() < 98 then
  pUnit:RemoveEvents();
	pUnit:SendChatMessage(14, 0, "Yes! I am a god!")
	pUnit:PlaySoundToSet(12382)
	pUnit:SetScale(2)
	pUnit:FullCastSpellOnTarget(44314,pUnit:GetClosestPlayer())
  pUnit:RegisterEvent("phase_3",1000, 0)
 end
end
 
-- De-Power
function phase_3(pUnit, Event)
 if pUnit:GetHealthPct() < 96 then
  pUnit:RemoveEvents();
	pUnit:SendChatMessage(14, 0, "No! More... I must have more! ")
	pUnit:PlaySoundToSet(12383)
	pUnit:FullCastSpellOnTarget(44314,pUnit:GetClosestPlayer())
	pUnit:SetScale(1)
  pUnit:RegisterEvent("phase_4",1000, 0)
 end
end
 
-- Rinse and Repeat!
function phase_4(pUnit, Event)
 if pUnit:GetHealthPct() < 91 then
  pUnit:RemoveEvents();
	pUnit:FullCastSpellOnTarget(46153,pUnit:GetRandomFriend())
	pUnit:SendChatMessage(14, 0, "My hunger knows no bounds!")
	pUnit:PlaySoundToSet(12381)
  pUnit:RegisterEvent("phase_5",1000, 0)
 end
end


function phase_5(pUnit, Event)
 if pUnit:GetHealthPct() < 90 then
  pUnit:RemoveEvents();
	pUnit:SendChatMessage(14, 0, "Yes! I am a god!")
	pUnit:PlaySoundToSet(12382)
	pUnit:SetScale(2)
	pUnit:FullCastSpellOnTarget(44314,pUnit:GetClosestPlayer())
  pUnit:RegisterEvent("phase_6",1000, 0)
 end
end


function phase_6(pUnit, Event)
 if pUnit:GetHealthPct() < 76 then
  pUnit:RemoveEvents();
	pUnit:SendChatMessage(14, 0, "No! More... I must have more! ")
	pUnit:PlaySoundToSet(12383)
	pUnit:FullCastSpellOnTarget(44314,pUnit:GetClosestPlayer())
	pUnit:SetScale(1)
  pUnit:RegisterEvent("phase_7",1000, 0)
 end
end


function phase_7(pUnit, Event)
 if pUnit:GetHealthPct() < 71 then
  pUnit:RemoveEvents();
	pUnit:FullCastSpellOnTarget(46153,pUnit:GetRandomFriend())
	pUnit:SendChatMessage(14, 0, "My hunger knows no bounds!")
	pUnit:PlaySoundToSet(12381)
  pUnit:RegisterEvent("phase_8",1000, 0)
 end
end


function phase_8(pUnit, Event)
 if pUnit:GetHealthPct() < 70 then
  pUnit:RemoveEvents();
	pUnit:SendChatMessage(14, 0, "Yes! I am a god!")
	pUnit:PlaySoundToSet(12382)
	pUnit:SetScale(2)
	pUnit:FullCastSpellOnTarget(44314,pUnit:GetClosestPlayer())
  pUnit:RegisterEvent("phase_9",1000, 0)
 end
end


function phase_9(pUnit, Event)
 if pUnit:GetHealthPct() < 63 then
  pUnit:RemoveEvents();
	pUnit:SendChatMessage(14, 0, "No! More... I must have more! ")
	pUnit:PlaySoundToSet(12383)
	pUnit:FullCastSpellOnTarget(44314,pUnit:GetClosestPlayer())
	pUnit:SetScale(1)
  pUnit:RegisterEvent("phase_10",1000, 0)
 end
end


function phase_10(pUnit, Event)
 if pUnit:GetHealthPct() < 59 then
  pUnit:RemoveEvents();
	pUnit:FullCastSpellOnTarget(46153,pUnit:GetRandomFriend())
	pUnit:SendChatMessage(14, 0, "My hunger knows no bounds!")
	pUnit:PlaySoundToSet(12381)
  pUnit:RegisterEvent("phase_11",1000, 0)
 end
end



function phase_11(pUnit, Event)
 if pUnit:GetHealthPct() < 55 then
  pUnit:RemoveEvents();
  pUnit:FullCastSpell(44314,pUnit:GetClosestPlayer())
  pUnit:RegisterEvent("phase_12",1000, 0)
 end
end


function phase_12(pUnit, Event)
 if pUnit:GetHealthPct() < 53 then
  pUnit:RemoveEvents();
  pUnit:FullCastSpell(44314,pUnit:GetClosestPlayer())
  pUnit:RegisterEvent("phase_13",1000, 0)
 end
end


function phase_13(pUnit, Event)
 if pUnit:GetHealthPct() < 49 then
  pUnit:RemoveEvents();
	pUnit:SendChatMessage(14, 0, "No! More... I must have more! ")
	pUnit:PlaySoundToSet(12383)
	pUnit:FullCastSpellOnTarget(44314,pUnit:GetClosestPlayer())
	pUnit:SetScale(1)
  pUnit:RegisterEvent("phase_14",1000, 0)
 end
end


function phase_14(pUnit, Event)
 if pUnit:GetHealthPct() < 46 then
  pUnit:RemoveEvents();
  pUnit:FullCastSpell(44314,pUnit:GetClosestPlayer())
  pUnit:RegisterEvent("phase_15",1000, 0)
 end
end

function phase_15(pUnit, Event)
 if pUnit:GetHealthPct() < 42 then
  pUnit:RemoveEvents();
  pUnit:FullCastSpell(44314,pUnit:GetClosestPlayer())
  pUnit:RegisterEvent("phase_16",1000, 0)
 end
end


function phase_16(pUnit, Event)
 if pUnit:GetHealthPct() < 39 then
  pUnit:RemoveEvents();
	pUnit:FullCastSpellOnTarget(46153,pUnit:GetRandomFriend())
	pUnit:SendChatMessage(14, 0, "My hunger knows no bounds!")
	pUnit:PlaySoundToSet(12381)
  pUnit:RegisterEvent("phase_17",1000, 0)
 end
end


function phase_17(pUnit, Event)
 if pUnit:GetHealthPct() < 36 then
  pUnit:RemoveEvents();
  pUnit:FullCastSpell(44314,pUnit:GetClosestPlayer())
  pUnit:RegisterEvent("phase_18",1000, 0)
 end
end


function phase_18(pUnit, Event)
 if pUnit:GetHealthPct() < 34 then
  pUnit:RemoveEvents();
  pUnit:FullCastSpell(44314,pUnit:GetClosestPlayer())
  pUnit:RegisterEvent("phase_19",1000, 0)
 end
end


function phase_19(pUnit, Event)
 if pUnit:GetHealthPct() < 30 then
  pUnit:RemoveEvents();
	pUnit:SendChatMessage(14, 0, "No! More... I must have more! ")
	pUnit:PlaySoundToSet(12383)
	pUnit:FullCastSpellOnTarget(44314,pUnit:GetClosestPlayer())
	pUnit:SetScale(1)
  pUnit:RegisterEvent("phase_20",1000, 0)
 end
end


function phase_20(pUnit, Event)
 if pUnit:GetHealthPct() < 26 then
  pUnit:RemoveEvents();
  pUnit:FullCastSpell(44314,pUnit:GetClosestPlayer())
  pUnit:RegisterEvent("phase_21",1000, 0)
 end
end


function phase_21(pUnit, Event)
 if pUnit:GetHealthPct() < 22 then
  pUnit:RemoveEvents();
  pUnit:FullCastSpell(44314,pUnit:GetClosestPlayer())
  pUnit:RegisterEvent("phase_22",1000, 0)
 end
end


function phase_22(pUnit, Event)
 if pUnit:GetHealthPct() < 18 then
  pUnit:RemoveEvents();
  pUnit:FullCastSpell(44314,pUnit:GetClosestPlayer())
  pUnit:RegisterEvent("phase_23",1000, 0)
 end
end


function phase_23(pUnit, Event)
 if pUnit:GetHealthPct() < 14 then
  pUnit:RemoveEvents();
  pUnit:FullCastSpell(44314,pUnit:GetClosestPlayer())
  pUnit:RegisterEvent("phase_24",1000, 0)
 end
end


function phase_24(pUnit, Event)
 if pUnit:GetHealthPct() < 10 then
  pUnit:RemoveEvents();
  pUnit:FullCastSpell(44314,pUnit:GetClosestPlayer())
  pUnit:RegisterEvent("phase_25",1000, 0)
 end
end


function phase_25(pUnit, Event)
 if pUnit:GetHealthPct() < 09 then
  pUnit:RemoveEvents();
	  pUnit:FullCastSpell(44314,pUnit:GetClosestPlayer())
	pUnit:FullCastSpellOnTarget(46155,pUnit:GetClosestPlayer())
  pUnit:RegisterEvent("phase_26",1000, 0)
 end
end


function phase_26(pUnit, Event)
 if pUnit:GetHealthPct() < 05 then
  pUnit:RemoveEvents();
	pUnit:FullCastSpellOnTarget(46153,pUnit:GetRandomFriend())
	pUnit:SendChatMessage(14, 0, "My hunger knows no bounds!")
	pUnit:PlaySoundToSet(12381)
  pUnit:FullCastSpell(44314,pUnit:GetClosestPlayer())
  pUnit:RegisterEvent("phase_27",1000, 0)
 end
end


function phase_27(pUnit, Event)
 if pUnit:GetHealthPct() < 04 then
  pUnit:RemoveEvents();
  pUnit:FullCastSpell(34807)
	pUnit:SendChatMessage(14, 0, "Yes! I am a god!")
	pUnit:PlaySoundToSet(12382)
	pUnit:SetScale(2)
	pUnit:FullCastSpellOnTarget(44314,pUnit:GetClosestPlayer())
	pUnit:FullCastSpellOnTarget(46155,pUnit:GetClosestPlayer())
  pUnit:RegisterEvent("phase_28",1000, 0)
 end
end

function phase_28(pUnit, Event)
 if pUnit:GetHealthPct() < 03 then
  pUnit:RemoveEvents();
  pUnit:FullCastSpell(44314,pUnit:GetClosestPlayer())
  pUnit:RegisterEvent("phase_29",1000, 0)
 end
end

function phase_29(pUnit, Event)
 if pUnit:GetHealthPct() < 02 then
  pUnit:RemoveEvents();
	pUnit:SendChatMessage(14, 0, "No! More... I must have more! ")
	pUnit:PlaySoundToSet(12383)
	pUnit:FullCastSpellOnTarget(44314,pUnit:GetClosestPlayer())
	pUnit:SetScale(1)
  end
end


function Selin_Start(pUnit, Event)
 pUnit:RegisterEvent("phase_1",1000, 0)
end


RegisterUnitEvent(24723, 1, "Selin_Start")
RegisterUnitEvent(24723, 3, "Sellin_OnKill")
RegisterUnitEvent(24723, 1, "Selin_EnterCombat")