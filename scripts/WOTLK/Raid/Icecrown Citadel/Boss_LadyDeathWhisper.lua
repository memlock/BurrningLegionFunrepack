--//////////////////////////////////
--////   Holystone Productions  ////
--////       Copy Right         ////
--////  Blizzlike Repack v 2.0  ////
--//////////////////////////////////

print("Loading Lady Deathwhisper")

function LadyDeathWhisper_OnCombat(punit, event)
   punit:SendChatMessage(14, 0, "What is this disturbance?! You dare trespass upon this hallowed ground? This shall be your final resting place.")
   punit:PlaySoundToSet(16868)
   punit:Root()
   punit:RegisterEvent("Lady_PhaseOne", 1000, 1)
end

function Lady_PhaseOne(punit, event)
   punit:RemoveEvents()
   punit:SetCombatCapable(1)
   punit:CastSpell(70842)
   punit:RegisterEvent("Lady_ShadowBolt", 3000, 0)
   punit:RegisterEvent("Lady_Add_Waves", 60000, 0)
   punit:RegisterEvent("Lady_DeathAndDecay", 15000, 0)
   punit:RegisterEvent("Lady_PhaseTwo", 1000, 0)
end

function Lady_ShadowBolt(punit, event)
   punit:FullCastSpellOnTarget(71254, punit:GetRandomPlayer(0))
end

function Lady_Add_Waves(punit, event)
   local Addsspawn = math.random (1, 2)
    if (Addsspawn== 1) then
   punit:SpawnCreature(37890, -578.322083, 2158.094238, 50.848976, 1.799545, 14, 80000)
   punit:SpawnCreature(37890, -598.961670, 2158.418945, 50.848976, 1.799545, 14, 80000)
   punit:SpawnCreature(37949, -619.599487, 2159.182617, 50.848976, 1.799545, 14, 80000)
   punit:SendChatMessage(42, 0, "Two Cult Fanatics and a Cult Adherent join the fight!")
    elseif (Addsspawn== 2) then
   punit:SpawnCreature(37949, -618.308908, 2260.111816, 50.848759, 4.634829, 14, 80000)
   punit:SpawnCreature(37890, -598.538269, 2258.878662, 50.848759, 4.705512, 14, 80000)
   punit:SpawnCreature(37949, -579.590100, 2259.016602, 50.848694, 4.489560, 14, 80000)
   punit:SendChatMessage(42, 0, "Two Cult Adherents and a Cult Fanatic join the fight!")
  end
end

function Lady_DeathAndDecay(punit, event)
    punit:PlaySoundToSet(16880)
    punit:SendChatMessage(14, 0, "Arise and exult in your pure form!")
     local player = punit:GetRandomPlayer(0)
    punit:CastSpellAoF(player:GetX(), player:GetY(), player:GetZ(), 72110)
end

function Lady_PhaseTwo(punit, event)
   if punit:GetHealthPct() <= 70 then
  punit:SendChatMessage(42, 0, "The Mana Barrier fades!")
  punit:SendChatMessage(14, 0, "This charade has gone on long enough! I see I must take matters into my own hands!")
  punit:RemoveEvents()
  punit:RemoveAllAuras()
  punit:SetHealthPct(100)
  punit:SetMana(0)
  punit:Unroot()
  punit:RegisterEvent("Lady_Frostbolt", 3000, 0)
  punit:RegisterEvent("Lady_DeathandDecayTwo", 15000, 0)
  punit:RegisterEvent("Lady_TouchofInsignificance", 5000, 0)
  end
end

function Lady_Frostbolt(punit, event)
  punit:FullCastSpellOnTarget(71420, punit:GetRandomPlayer(0))
end

function Lady_DeathandDecayTwo(punit, event)
    punit:PlaySoundToSet(16880)
    punit:SendChatMessage(14, 0, "Arise and exult in your pure form!")
     local player = punit:GetRandomPlayer(0)
    punit:CastSpellAoF(player:GetX(), player:GetY(), player:GetZ(), 72110)
end

function Lady_TouchofInsignificance(punit, event)
    local plr = punit:GetClosestTarget()
	plr:AddAura(71204, 30000)
end

function LadyDeathWhisper_OnLeaveCombat(punit, event)
    punit:RemoveEvents()
end

function LadyDeathWhisper_OnKillPlayer(punit, event)
  local chance = math.random(1, 2)
   if(chance == 1) then
  punit:PlaySoundToSet(16869)
  punit:SendChatMessage(14, 0, "Do you yet grasp of the futility of your actions?")
   end 
   if(chance == 2) then
  punit:PlaySoundToSet(16870)
  punit:SendChatMessage(14, 0, "Embrace the darkness... Darkness eternal!")
 end
end

function LadyDeathWhisper_OnDead(punit, event)
  punit:SendChatMessage(14, 0, "All part of the masters plan! Your end is... inevitable!")
  punit:PlaySoundToSet(16871)
  punit:RemoveEvents()
end

function CultAdherents_OnSpawn(punit, event)
 punit:RegisterEvent("Move_To_Player", 1000, 1)
end

function Move_To_Player(punit, event)
  local go = punit:GetRandomPlayer(0)
   local x = go:GetX() 
   local y = go:GetY()
   local z = go:GetZ() 
   local o = go:GetO()
  punit:MoveTo(x, y, z, o)
end

function CultFanatic_OnSpawn(punit, event)
 punit:RegisterEvent("Move_To_Player_Two", 1000, 1)
end

function Move_To_Player_Two(punit, event)
  local go = punit:GetRandomPlayer(0)
   local x = go:GetX() 
   local y = go:GetY()
   local z = go:GetZ() 
   local o = go:GetO()
  punit:MoveTo(x, y, z, o)
end


RegisterUnitEvent(36855, 1, "LadyDeathWhisper_OnCombat")
RegisterUnitEvent(36855, 2, "LadyDeathWhisper_OnLeaveCombat")
RegisterUnitEvent(36855, 3, "LadyDeathWhisper_OnKillPlayer")
RegisterUnitEvent(36855, 4, "LadyDeathWhisper_OnDead")
RegisterUnitEvent(37949, 18, "CultAdherents_OnSpawn")
RegisterUnitEvent(37890, 18, "CultFanatic_OnSpawn")