--[[ Netherstorm -- Abjurist Belmara.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 21th, 2008. ]]

function Abjurist_OnEnterCombat(pUnit, Event)
    pUnit:RegisterEvent("Abjurist_Armor", 10000, 0)
    pUnit:RegisterEvent("Abjurist_Missiles", 1000,0)
end
    
function Abjurist_Armor(pUnit, Event)
    pUnit:CastSpell(12544)
end

function Abjurist_Missiles(pUnit, Event)
    pUnit:FullCastSpellOnTarget(34447,pUnit:GetClosestPlayer())
end

function Abjurist_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Abjurist_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (19546, 1, "Abjurist_OnEnterCombat")
RegisterUnitEvent (19546, 2, "Abjurist_OnLeaveCombat")
RegisterUnitEvent (19546, 4, "Abjurist_OnDied")

--[[ Netherstorm -- Ambassador Solannas.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 21th, 2008. ]]

function Ambassador_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Ambassador_Fireball", 3000, 0)
end

function Ambassador_Fireball(pUnit,Event)
    pUnit:FullCastSpellOnTarget(9053,pUnit:GetClosestPlayer())
end

function Ambassador_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Ambassador_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20163, 1, "Ambassador_OnEnterCombat")
RegisterUnitEvent (20163, 2, "Ambassador_OnLeaveCombat")
RegisterUnitEvent (20163, 4, "Ambassador_OnDied")

--[[ Netherstorm -- Ambassador's Honor Guard.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 21th, 2008. ]]

function Honor_OnEnterCombat(pUnit, Event)
    pUnit:RegisterEvent("Honor_Cleave",1000,0)
end

function Honor_Cleave(pUnit, Event)
    pUnit:FullCastSpellOnTarget(15284,pUnit:GetClosestPlayer())
end

function Honor_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Honor_OnDied(pUnit,Event)
    pUnit:RemoveEvents()
end

RegisterUnitEvent (20199, 1, "Honor_OnEnterCombat")
RegisterUnitEvent (20199, 2, "Honor_OnLeaveCombat")
RegisterUnitEvent (20199, 4, "Honor_OnDied")

--[[ Netherstorm -- Anchorite Karja.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 21th, 2008. ]]

function Anchorite_OnEnterCombat(pUnit, Event)
    pUnit:RegisterEvent("Anchorite_Heal", 3500, 0)
    pUnit:RegisterEvent("Anchorite_Fire", 5000, 0)
    pUnit:RegisterEvent("Anchorite_Smite", 2500, 0)
end

function Anchorite_Heal(pUnit, Event)
    pUnit:CastSpell(35096)
end

function Anchorite_Fire(pUnit, Event)
    pUnit:FullCastSpellOnTarget(17141, pUnit:GetClosestPlayer())
end

function Anchorite_Smite(pUnit, Event)
    pUnit:FullCastSpellOnTarget(9734, pUnit:GetClosestPlayer())
end

function Anchorite_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Anchorite_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (19467, 1, "Anchorite_OnEnterCombat")
RegisterUnitEvent (19467, 2, "Anchorite_OnLeaveCombat")
RegisterUnitEvent (19467, 4, "Anchorite_OnDied")

--[[ Netherstorm -- Angered Nether-wraith.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 21th, 2008. ]]

function Angered_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Angered_Bolt", 1000, 0)
    pUnit:RegisterEvent("Angered_Blast", 6000, 0)
end

function Angered_Bolt(pUnit,Event)
    pUnit:FullCastSpellOnTarget(39337, pUnit:GetClosestPlayer())
end

function Angered_Blast(pUnit,Event)
    pUnit:FullCastSpellOnTarget(38205, pUnit:GetClosestPlayer())
end

function Angered_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Angered_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (17870, 1, "Angered_OnEnterCombat")
RegisterUnitEvent (17870, 2, "Angered_OnLeaveCombat")
RegisterUnitEvent (17870, 4, "Angered_OnDied")


--[[ Netherstorm -- Arcanist Ardonis.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 21th, 2008. ]]

function Ardonis_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Ardonis_Shadows",10000,0)
    pUnit:RegisterEvent("Ardonis_Desecration",1000,0)
end

function Ardonis_Shadows(pUnit,Event)
    pUnit:CastSpell(36472)
end

function Ardonis_Desecration(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36473, pUnit:GetClosestPlayer())
end

function Ardonis_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Ardonis_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (19830, 1, "Ardonis_OnEnterCombat")
RegisterUnitEvent (19830, 2, "Ardonis_OnLeaveCombat")
RegisterUnitEvent (19830, 4, "Ardonis_OnDied")

--[[ Netherstorm -- Arconus the Insatiable.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 21th, 2008. ]]

function Arconus_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Arconus_Shadows",10000,0)
    pUnit:RegisterEvent("Arconus_Desecration",1000,0)
end

function Arconus_Shadows(pUnit,Event)
    pUnit:CastSpell(36472)
end

function Arconus_Desecration(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36473, pUnit:GetClosestPlayer())
end

function Arconus_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Arconus_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20554, 1, "Arconus_OnEnterCombat")
RegisterUnitEvent (20554, 2, "Arconus_OnLeaveCombat")
RegisterUnitEvent (20554, 4, "Arconus_OnDied")

--[[ Netherstorm -- Ar'kelos.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 21th, 2008, 2008. ]]

function Ark_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Ark_Explosion",1500,0)
end

function Ark_Explosion(pUnit,Event)
    pUnit:FullCastSpellOnTarget(11975, pUnit:GetClosestPlayer())
end

function Ark_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Ark_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (19494, 1, "Ark_OnEnterCombat")
RegisterUnitEvent (19494, 2, "Ark_OnLeaveCombat")
RegisterUnitEvent (19494, 4, "Ark_OnDied")

--[[ Netherstorm -- Artifact Seeker.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 21th, 2008. ]]

function Seeker_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Seeker_Burn",3000,0)
    pUnit:RegisterEvent("Seeker_Lock",1000,0)
end

function Seeker_Burn(pUnit,Event)
    pUnit:FullCastSpellOnTarget(11981, pUnit:GetClosestPlayer())
end

function Seeker_Lock(pUnit,Event)
    pUnit:FullCastSpellOnTarget(30849, pUnit:GetClosestPlayer())
end

function Ark_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Ark_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (19852, 1, "Seeker_OnEnterCombat")
RegisterUnitEvent (19852, 2, "Seeker_OnLeaveCombat")
RegisterUnitEvent (19852, 4, "Seeker_OnDied")

--[[ Netherstorm -- Avatar of Sathal.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 23th, 2008. ]]

function Avatar_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Avatar_Rain",1000,0)
    pUnit:RegisterEvent("Avatar_Bolt",3000,0)
end

function Avatar_Rain(pUnit,Event)
    pUnit:FullCastSpellOnTarget(34017, pUnit:GetClosestPlayer())
end

function Avatar_Bolt(pUnit,Event)
    pUnit:FullCastSpellOnTarget(12471, pUnit:GetClosestPlayer())
end

function Avatar_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Avatar_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (21925, 1, "Avatar_OnEnterCombat")
RegisterUnitEvent (21925, 2, "Avatar_OnLeaveCombat")
RegisterUnitEvent (21925, 4, "Avatar_OnDied")

--[[ Netherstorm -- Azurebeak.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 23th, 2008. ]]

function Azure_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Azure_Screech", 1000,0)
end

function Azure_Screech(pUnit,Event)
    pUnit:FullCastSpellOnTarget(31273, pUnit:GetClosestPlayer())
end

function Azure_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Azure_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (21005, 1, "Azure_OnEnterCombat")
RegisterUnitEvent (21005, 2, "Azure_OnLeaveCombat")
RegisterUnitEvent (21005, 4, "Azure_OnDied")

--[[ Netherstorm -- Barbscale Crocolisk.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 23th, 2008. ]]

function Crocolisk_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Crocolisk_Rip",1000,0)
end

function Crocolisk_Rip(pUnit,Event)
    pUnit:FullCastSpellOnTarget(3604, pUnit:GetClosestPlayer())
end

function Crocolisk_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Crocolisk_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20773, 1, "Crocolisk_OnEnterCombat")
RegisterUnitEvent (20773, 2, "Crocolisk_OnLeaveCombat")
RegisterUnitEvent (20773, 4, "Crocolisk_OnDied")

--[[ Netherstorm -- Battle-Mage Dathric.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 23th, 2008. ]]

function Mage_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Mage_Blast", 6000,0)
    pUnit:RegisterEvent("Mage_Flames",2500,0)
end

function Mage_Rip(pUnit,Event)
    pUnit:FullCastSpellOnTarget(17273, pUnit:GetClosestPlayer())
end

function Mage_Flames(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36104, pUnit:GetClosestPlayer())
end
    
function Mage_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Mage_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (19543, 1, "Mage_OnEnterCombat")
RegisterUnitEvent (19543, 2, "Mage_OnLeaveCombat")
RegisterUnitEvent (19543, 4, "Mage_OnDied")

--[[ Netherstorm -- Boom Bot.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 23th, 2008. ]]

function Bot_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Bot_Suicide",4000,1)
end

function Bot_Suicide(pUnit,Event)
	pUnit:FullCastSpellOnTarget(7,pUnit:GetClosestPlayer())
	pUnit:CastSpell(7)
end

function Bot_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Bot_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (19692, 1, "Bot_OnEnterCombat")
RegisterUnitEvent (19692, 2, "Bot_OnLeaveCombat")
RegisterUnitEvent (19692, 4, "Bot_OnDied")

--[[ Netherstorm -- Captain Arathyn.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 23th, 2008. ]]

function Captain_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Captain_Summon",1000,1)
    pUnit:RegisterEvent("Captain_Whirl",1000,0)
    pUnit:RegisterEvent("Captain_Wind",2000,0)
end

function Captain_Summon(pUnit,Event)
    pUnit:CastSpell(35882)
end

function Captain_Whirl(pUnit,Event)
    pUnit:FullCastSpellOnTarget(15576,pUnit:GetClosestPlayer())
end

function Capatain_Wind(pUnit,Event)
    pUnit:FullCastSpellOnTarget(17207,pUnit:GetClosestPlayer())
end

function Capatain_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Capatain_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (19635, 1, "Capatain_OnEnterCombat")
RegisterUnitEvent (19635, 2, "Capatain_OnLeaveCombat")
RegisterUnitEvent (19635, 4, "Capatain_OnDied")

--[[ Netherstorm -- Captain Saeed.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 23th, 2008. ]]

function Captain_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Captain_Cleave",1000,0)
end

function Captain_Cleave(pUnit,Event)
    pUnit:FullCastSpellOnTarget(15576,pUnit:GetClosestPlayer())
end

function Capatain_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Capatain_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20985, 1, "Capatain_OnEnterCombat")
RegisterUnitEvent (20985, 2, "Capatain_OnLeaveCombat")
RegisterUnitEvent (20985, 4, "Capatain_OnDied")

--[[ Netherstorm -- Captain Zovax.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 23th, 2008. ]]

function Captain_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Captain_Cleave",1000,0)
    pUnit:RegisterEvent("Captain_Toughen",1000,0)
end

function Captain_Cleave(pUnit,Event)
    pUnit:FullCastSpellOnTarget(15576,pUnit:GetClosestPlayer())
end

function Captain_Thougen(pUnit,Event)
    pUnit:CastSpell(33962)
end

function Capatain_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Capatain_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20727, 1, "Capatain_OnEnterCombat")
RegisterUnitEvent (20727, 2, "Capatain_OnLeaveCombat")
RegisterUnitEvent (20727, 4, "Capatain_OnDied")

--[[ Netherstorm -- Captured Protectorate Vanguard.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 23th, 2008. ]]

function Captured_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Captured_Glaive",1000,0)
    pUnit:RegisterEvent("Captured_Hamstring",10000,0)
end

function Captured_Glaive(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36500,pUnit:GetClosestPlayer())
end

function Captured_Hamstring(pUnit,Event)
    pUnit:FullCastSpellOnTarget(31553,pUnit:GetClosestPlayer())
end

function Captured_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Captured_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20763, 1, "Captured_OnEnterCombat")
RegisterUnitEvent (20763, 2, "Captured_OnLeaveCombat")
RegisterUnitEvent (20763, 4, "Captured_OnDied")

--[[ Netherstorm -- Chief Engineer Lorthander.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 23th, 2008. ]]

function Chief_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Chief_Glaive",1000,0)
end

function Chief_Glaive(pUnit,Event)
    pUnit:FullCastSpellOnTarget(38204,pUnit:GetClosestPlayer())
end

function Chief_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Chief_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (18697, 1, "Chief_OnEnterCombat")
RegisterUnitEvent (18697, 2, "Chief_OnLeaveCombat")
RegisterUnitEvent (18697, 4, "Chief_OnDied")

--[[ Netherstorm -- Cohlien Frostweaver.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 23th, 2008. ]]

function Frost_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Frost_Nova",8000,0)
    pUnit:RegisterEvent("Frost_Bolt",3000,0)
    pUnit:RegisterEvent("Frost_Barrier",30000,0)
end

function Frost_Nova(pUnit,Event)
    pUnit:FullCastSpellOnTarget(11831,pUnit:GetClosestPlayer())
end

function Frost_Bolt(pUnit,Event)
    pUnit:FullCastSpellOnTarget(9672,pUnit:GetClosestPlayer())
end

function Frost_Barrier(pUnit,Event)
    pUnit:CastSpell(33245)
end

function Frost_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Frost_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (19545, 1, "Frost_OnEnterCombat")
RegisterUnitEvent (19545, 2, "Frost_OnLeaveCombat")
RegisterUnitEvent (19545, 4, "Frost_OnDied")

--[[ Netherstorm -- Commander Dawnforge.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 24th, 2008. ]]

function Commander_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Commander_Cleave",1000,0)
    pUnit:RegisterEvent("Commander_Spellbreaker",1000,0)
end

function Commander_Cleave(pUnit,Event)
    pUnit:FullCastSpellOnTarget(35473,pUnit:GetClosestPlayer())
end

function Commander_Spellbreaker(pUnit,Event)
    pUnit:FullCastSpellOnTarget(35871,pUnit:GetClosestPlayer())
end

function Commander_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Commander_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (19831, 1, "Commander_OnEnterCombat")
RegisterUnitEvent (19831, 2, "Commander_OnLeaveCombat")
RegisterUnitEvent (19831, 4, "Commander_OnDied")
--[[ Netherstorm -- Conjurer Luminrath.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 24th, 2008. ]]

function Conjurer_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Conjurer_Bolt",3000,0)
    pUnit:RegisterEvent("Conjurer_Sword",30000,0)
end

function Conjurer_Bolt(pUnit,Event)
    pUnit:FullCastSpellOnTarget(9532,pUnit:GetClosestPlayer())
end

function Conjurer_Sword(pUnit,Event)
    pUnit:CastSpell(36110)
end

function Conjurer_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Conjurer_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (19544, 1, "Conjurer_OnEnterCombat")
RegisterUnitEvent (19544, 2, "Conjurer_OnLeaveCombat")
RegisterUnitEvent (19544, 4, "Conjurer_OnDied")

--[[ Netherstorm -- Craghide Basilisk.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 24th, 2008. ]]

function Basilisk_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Basilisk_Gaze",45000,0)
    pUnit:RegisterEvent("Basilisk_Charge",1000,0)
end

function Basilisk_Gaze(pUnit,Event)
    pUnit:FullCastSpellOnTarget(35313, pUnit:GetClosestPlayer())
end

function Basilisk_Charge(pUnit,Event)
    pUnit:FullCastSpellOnTarget(35385, pUnit:GetClosestPlayer())
end

function Basilisk_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Basilisk_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20607, 1, "Basilisk_OnEnterCombat")
RegisterUnitEvent (20607, 2, "Basilisk_OnLeaveCombat")
RegisterUnitEvent (20607, 4, "Basilisk_OnDied")

--[[ Netherstorm -- Culuthas.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 24th, 2008. ]]

function Culuthas_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Culuthas_Felfire",3000,0)
end

function Culuthas_Felfire(pUnit,Event)
    pUnit:FullCastSpellOnTarget(37089, pUnit:GetClosestPlayer())
end

function Culuthas_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Culuthas_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20138, 1, "Culuthas_OnEnterCombat")
RegisterUnitEvent (20138, 2, "Culuthas_OnLeaveCombat")
RegisterUnitEvent (20138, 4, "Culuthas_OnDied")

--[[ Netherstorm -- Cyber-Rage Forgelord.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 24th, 2008. ]]

function Forgelord_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Forgelord_Nova",2000,0)
    pUnit:RegisterEvent("Forgelord_Enrage",120000,0)
end

function Forgelord_Nova(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36255, pUnit:GetClosestPlayer())
end

function Forgelord_Enrage(pUnit,Event)
    pUnit:CastSpell(8599)
end

function Forgelord_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Forgelord_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (16943, 1, "Forgelord_OnEnterCombat")
RegisterUnitEvent (16943, 2, "Forgelord_OnLeaveCombat")
RegisterUnitEvent (16943, 4, "Forgelord_OnDied")

--[[ Netherstorm -- Dancing Flames.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 24th, 2008. ]]

function Flames_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Flames_Dance",1000,0)
    pUnit:RegisterEvent("Flames_Seduction",180000,0)
    pUnit:RegisterEvent("Flames_Summon",1000,(1))
end

function Flames_Dance(pUnit,Event)
    pUnit:CastSpell(45427)
end

function Flames_Seduction(pUnit,Event)
    pUnit:FullCastSpellOnTarget(47057, pUnit:GetClosestPlayer())
end

function Flames_Summon(pUnit,Event)
    pUnit:CastSpell(45423)
end

function Flames_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Flames_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (25305, 1, "Flames_OnEnterCombat")
RegisterUnitEvent (25305, 2, "Flames_OnLeaveCombat")
RegisterUnitEvent (25305, 4, "Flames_OnDied")

--[[ Netherstorm -- Daughter of Destiny.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 24th, 2008. ]]

function Daughter_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Daughter_Nova",2000,0)
end

function Daughter_Nova(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36225, pUnit:GetClosestPlayer())
end

function Daughter_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Daughter_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (18860, 1, "Daughter_OnEnterCombat")
RegisterUnitEvent (18860, 2, "Daughter_OnLeaveCombat")
RegisterUnitEvent (18860, 4, "Daughter_OnDied")

--[[ Netherstorm -- Dimensius the All-Devouring.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 24th, 2008. ]]

function Dimensius_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Dimensius_Trick",1000,(1))
    pUnit:RegisterEvent("Dimensius_Spiral",3000,0)
    pUnit:RegisterEvent("Dimensius_Vault",1000,0)
end

function Dimensius_Trick(pUnit,Event)
    pUnit:CastSpell(37425)
end

function Dimensius_Spiral(pUnit,Event)
    pUnit:FullCastSpellOnTarget(37500,pUnit:GetClosestPlayer())
end

function Dimensius_Vault(pUnit,Event)
    pUnit:FullCastSpellOnTarget(37412,pUnit:GetClosestPlayer())
end

function Dimensius_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Dimensius_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (19554, 1, "Dimensius_OnEnterCombat")
RegisterUnitEvent (19554, 2, "Dimensius_OnLeaveCombat")
RegisterUnitEvent (19554, 4, "Dimensius_OnDied")

--[[ Netherstorm -- Disembodied Exarch.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 24th, 2008. ]]

function Exarch_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Exarch_Fortitude",2000,0)
    pUnit:RegisterEvent("Exarch_Devotion",1000,0)
end

function Exarch_Fortitude(pUnit,Event)
    pUnit:CastSpellOnTarget(36004,pUnit:GetRandomFriend())
end

function Exarch_Devotion(pUnit,Event)
    pUnit:CastSpell(8258)
end

function Exarch_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Exarch_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (21058, 1, "Exarch_OnEnterCombat")
RegisterUnitEvent (21058, 2, "Exarch_OnLeaveCombat")
RegisterUnitEvent (21058, 4, "Exarch_OnDied")

--[[ Netherstorm -- Disembodied Protector.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 24th, 2008. ]]

function Protector_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Protector_Strike",1000,0)
    pUnit:RegisterEvent("Protector_Smite",2500,0)
end

function Protector_Strike(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36647,pUnit:GetClosestPlayer())
end

function Protector_Smite(pUnit,Event)
    pUnit:FullCastSpellOnTarget(9734,pUnit:GetClosestPlayer())
end

function Protector_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Protector_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (18873, 1, "Protector_OnEnterCombat")
RegisterUnitEvent (18873, 2, "Protector_OnLeaveCombat")
RegisterUnitEvent (18873, 4, "Protector_OnDied")

--[[ Netherstorm -- Disembodied Vindicator.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 24th, 2008. ]]

function Vindicator_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Vindicator_Revenge",1000,0)
    pUnit:RegisterEvent("Vindicator_Vindication",1000,0)
end

function Vindicator_Revenge(pUnit,Event)
    pUnit:CastSpellOnTarget(36647,GetInRangeFriends())
end

function Vindicator_Vindication(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36002,pUnit:GetClosestPlayer())
end

function Vindicator_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Vindicator_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (18872, 1, "Vindicator_OnEnterCombat")
RegisterUnitEvent (18872, 2, "Vindicator_OnLeaveCombat")
RegisterUnitEvent (18872, 4, "Vindicator_OnDied")

--[[ Netherstorm -- Doomclaw.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 26th, 2008. ]]

function Doomclaw_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Doomclaw_Swipe",1000,0)
    pUnit:RegisterEvent("Doomclaw_Claw",1100,0)
    pUnit:RegisterEvent("Doomclaw_Slime",1000,0)
end

function Doomclaw_Swipe(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36205,pUnit:GetClosestPlayer())
end

function Doomclaw_Claw(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36996,pUnit:GetClosestPlayer())
end

function Doomclaw_Slime(pUnit,Event)
    pUnit:FullCastSpellOnTarget(34261,pUnit:GetClosestPlayer())
end

function Doomclaw_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Doomclaw_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (19738, 1, "Doomclaw_OnEnterCombat")
RegisterUnitEvent (19738, 2, "Doomclaw_OnLeaveCombat")
RegisterUnitEvent (19738, 4, "Doomclaw_OnDied")

--[[ Netherstorm -- Dr. Boom.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 26th, 2008. ]]

function Boom_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Boom_Dynamite",1000,0)
end

function Boom_Dynamite(pUnit,Event)
    pUnit:FullCastSpellOnTarget(35276,pUnit:GetClosestPlayer())
end

function Boom_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Boom_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20284, 1, "Boom_OnEnterCombat")
RegisterUnitEvent (20284, 2, "Boom_OnLeaveCombat")
RegisterUnitEvent (20284, 4, "Boom_OnDied")

--[[ Netherstorm -- Ekkorash the Inquisitor.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 26th, 2008. ]]

function Inquisitor_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Inquisitor_Weakness",1000,0)
    pUnit:RegisterEvent("Inquisitor_Flamestrike",3000,0)
end

function Inquisitor_Weakness(pUnit,Event)
    pUnit:FullCastSpellOnTarget(11980,pUnit:GetClosestPlayer())
end

function Inquisitor_Flamestrike(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36040,pUnit:GetClosestPlayer())
end

function Inquisitor_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Inquisitor_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (19493, 1, "Inquisitor_OnEnterCombat")
RegisterUnitEvent (19493, 2, "Inquisitor_OnEnterCombat")
RegisterUnitEvent (19493, 4, "Inquisitor_OnEnterCombat")

--[[ Netherstorm -- Ethereum Archon.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 26th, 2008. ]]

function Archon_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Archon_Flux",1000,0)
    pUnit:RegisterEvent("Archon_Intangible",1000,0)
    pUnit:RegisterEvent("Archon_Overspark",1000,0)
    pUnit:RegisterEvent("Archon_Shadow",1000,0)
end

function Archon_Flux(pUnit,Event)
    pUnit:FullCastSpellOnTarget(35924,pUnit:GetClosestPlayer())
end

function Archon_Intangible(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36513,pUnit:GetClosestPlayer())
end

function Archon_Overspark(pUnit,Event)
    pUnit:FullCastSpellOnTarget(35579,pUnit:GetClosestPlayer())
end

function Archon_Shadow(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36515,pUnit:GetClosestPlayer())
end

function Archon_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Archon_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20458, 1, "Archon_OnEnterCombat")
RegisterUnitEvent (20458, 2, "Archon_OnEnterCombat")
RegisterUnitEvent (20458, 4, "Archon_OnEnterCombat")

--[[ Netherstorm -- Ethereum Assassin.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 26th, 2008. ]]

function Assassin_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Assassin_Kick",1000,0)
    pUnit:RegisterEvent("Assassin_Warp",1000,0)
end

function Assassin_Kick(pUnit,Event)
    pUnit:FullCastSpellOnTarget(34802,pUnit:GetClosestPlayer())
end

function Assassin_Warp(pUnit,Event)
    pUnit:FullCastSpellOnTarget(32920,pUnit:GetClosestPlayer())
end

function Assassin_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Assassin_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20452, 1, "Assassin_OnEnterCombat")
RegisterUnitEvent (20452, 2, "Assassin_OnEnterCombat")
RegisterUnitEvent (20452, 4, "Assassin_OnEnterCombat")

--[[ Netherstorm -- Ethereum Avenger.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 29th, 2008. ]]

function Avenger_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Avenger_Shout",1000,0)
    pUnit:RegisterEvent("Avenger_Charge",1000,0)
    pUnit:RegisterEvent("Avenger_Weapons",1000,0)
end

function Avenger_Charge(pUnit,Event)
    pUnit:FullCastSpellOnTarget(32064,pUnit:GetClosestPlayer())
end

function Avenger_Intangible(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36509,pUnit:GetClosestPlayer())
end

function Avenger_Weapons(pUnit,Event)
    pUnit:FullCastSpellOnTarget(39489,pUnit:GetClosestPlayer())
end

function Avenger_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Avenger_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (22821, 1, "Avenger_OnEnterCombat")
RegisterUnitEvent (22821, 2, "Avenger_OnEnterCombat")
RegisterUnitEvent (22821, 4, "Avenger_OnEnterCombat")

--[[ Netherstorm -- Ethereum Gladiator.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 29th, 2008. ]]

function Gladiator_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Gladiator_Cleave",1000,0)
    pUnit:RegisterEvent("Gladiator_Hamstring",1000,0)
    pUnit:RegisterEvent("Gladiator_Strike",1000,0)
end

function Gladiator_Cleave(pUnit,Event)
    pUnit:FullCastSpellOnTarget(15284,pUnit:GetClosestPlayer())
end

function Gladiator_Hamstring(pUnit,Event)
    pUnit:FullCastSpellOnTarget(9080,pUnit:GetClosestPlayer())
end

function Gladiator_Strike(pUnit,Event)
    pUnit:FullCastSpellOnTarget(16856,pUnit:GetClosestPlayer())
end

function Gladiator_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Gladiator_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20854, 1, "Gladiator_OnEnterCombat")
RegisterUnitEvent (20854, 2, "Gladiator_OnEnterCombat")
RegisterUnitEvent (20854, 4, "Gladiator_OnEnterCombat")

--[[ Netherstorm -- Ethereum Jailor.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 29th, 2008. ]]

function Jailor_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Jailor_Presence",1000,0)
end

function Jailor_Presence(pUnit,Event)
    pUnit:CastSpell(36513)
end

function Jailor_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Jailor_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (23008, 1, "Jailor_OnEnterCombat")
RegisterUnitEvent (23008, 2, "Jailor_OnEnterCombat")
RegisterUnitEvent (23008, 4, "Jailor_OnEnterCombat")

--[[ Netherstorm -- Ethereum Nexus-Stalker.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 29th, 2008. ]]

function Stalker_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Stalker_Shadowsurge",1000,0)
    pUnit:RegisterEvent("Stalker_Shadowtouched",1000,0)
end

function Stalker_Shadowsurge(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36517,pUnit:GetClosestPlayer())
end

function Stalker_Shadowtouched(pUnit,Event)
    pUnit:CastSpell(36515)
end

function Stalker_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Stalker_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20474, 1, "Stalker_OnEnterCombat")
RegisterUnitEvent (20474, 2, "Stalker_OnEnterCombat")
RegisterUnitEvent (20474, 4, "Stalker_OnEnterCombat")

--[[ Netherstorm -- Ethereum Nullifier.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 29th, 2008. ]]

function Nullifier_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Nullifier_Presence",1000,0)
end

function Nullifier_Presence(pUnit,Event)
    pUnit:CastSpell(36513)
end

function Nullifier_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Nullifier_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (22822, 1, "Nullifier_OnEnterCombat")
RegisterUnitEvent (22822, 2, "Nullifier_OnEnterCombat")
RegisterUnitEvent (22822, 4, "Nullifier_OnEnterCombat")

--[[ Netherstorm -- Ethereum Overlord.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 29th, 2008. ]]

function Overlord_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Overlord_Shout",1000,0)
    pUnit:RegisterEvent("Overlord_Charge",1000,0)
    pUnit:RegisterEvent("Overlord_Weapons",1000,0)
    pUnit:RegisterEvent("Overlord_Shadowtouched",1000,0)
end

function Overlord_Charge(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36509,pUnit:GetMainTank())
end

function Overlord_Shout(pUnit,Event)
    pUnit:CastSpell(32064)
end

function Overlord_Weapons(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36510,pUnit:GetClosestPlayer())
end

function Overlord_Shadowtouched(pUnit,Event)
    pUnit:CastSpell(36515)
end

function Overlord_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Overlord_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20459, 1, "Overlord_OnEnterCombat")
RegisterUnitEvent (20459, 2, "Overlord_OnLeaveCombat")
RegisterUnitEvent (20459, 4, "Overlord_OnDied")

--[[ Netherstorm -- Ethereum Relay.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 29th, 2008. ]]

function Relay_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Relay_Shadowform",1000,0)
end

function Relay_Shadowform(pUnit,Event)
    pUnit:CastSpell(16592)
end

function Relay_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Relay_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20619, 1, "Relay_OnEnterCombat")
RegisterUnitEvent (20619, 2, "Relay_OnLeaveCombat")
RegisterUnitEvent (20619, 4, "Relay_OnDied")

--[[ Netherstorm -- Ethereum Researcher.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 29th, 2008. ]]

function Researcher_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Researcher_Energy",1000,0)
    pUnit:RegisterEvent("Researcher_Surge",1000,0)
    pUnit:RegisterEvent("Researcher_Bolt",3000,0)
end

function Researcher_Energy(pUnit,Event)
    pUnit:CastSpell(16592)
end

function Researcher_Surge(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36508,pUnit:GetClosestPlayer())
end

function Researcher_Bolt(pUnit,Event)
    pUnit:FullCastSpellOnTarget(9532,pUnit:GetClosestPlayer())
end

function Researcher_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Researcher_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20456, 1, "Researcher_OnEnterCombat")
RegisterUnitEvent (20456, 2, "Researcher_OnLeaveCombat")
RegisterUnitEvent (20456, 4, "Researcher_OnDied")

--[[ Netherstorm -- Ethereum Shocktrooper.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 29th, 2008. ]]

function Shocktrooper_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Shocktrooper_Glaive",1000,0)
    pUnit:RegisterEvent("Shocktrooper_Hamstring",1000,0)
end

function Shocktrooper_Glaive(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36500,pUnit:GetClosestPlayer())
end

function Shocktrooper_Hamstring(pUnit,Event)
    pUnit:FullCastSpellOnTarget(31553,pUnit:GetClosestPlayer())
end

function Shocktrooper_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Shocktrooper_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20453, 1, "Shocktrooper_OnEnterCombat")
RegisterUnitEvent (20453, 2, "Shocktrooper_OnLeaveCombat")
RegisterUnitEvent (20453, 4, "Shocktrooper_OnDied")

--[[ Netherstorm -- Exarch Orelis.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 29th, 2008. ]]

function Orelis_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Orelis_Shout",1000,0)
    pUnit:RegisterEvent("Orelis_Strike",1000,0)
    pUnit:RegisterEvent("Orelis_Rend",1000,0)
end

function Orelis_Shout(pUnit,Event)
    pUnit:FullCastSpellOnTarget(13730,pUnit:GetClosestPlayer())
end

function Orelis_Strike(pUnit,Event)
    pUnit:FullCastSpellOnTarget(29426,pUnit:GetClosestPlayer())
end

function Orelis_Rend(pUnit,Event)
    pUnit:FullCastSpellOnTarget(16509,pUnit:GetClosestPlayer())
end

function Orelis_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Orelis_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (19466, 1, "Orelis_OnEnterCombat")
RegisterUnitEvent (19466, 2, "Orelis_OnLeaveCombat")
RegisterUnitEvent (19466, 4, "Orelis_OnDied")

--[[ Netherstorm -- Eye of Culuthas.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 29th, 2008. ]]

function Eye_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Eye_Bursts",1000,0)
end

function Eye_Bursts(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36414,pUnit:GetClosestPlayer())
end

function Eye_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Eye_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20394, 1, "Eye_OnEnterCombat")
RegisterUnitEvent (20394, 2, "Eye_OnLeaveCombat")
RegisterUnitEvent (20394, 4, "Eye_OnDied")

--[[ Netherstorm -- Farahlon Lasher.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 29th, 2008. ]]

function Lasher_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Lasher_Enrage",1000,0)
    pUnit:RegisterEvent("Lasher_Roots",1500,0)
    pUnit:RegisterEvent("Lasher_Growth",500,0)
end

function Lasher_Enrage(pUnit,Event)
    pUnit:CastSpell(3019)
end

function Lasher_Roots(pUnit,Event)
    pUnit:FullCastSpellOnTarget(12747,pUnit:GetClosestPlayer())
end

function Lasher_Growth(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36604,pUnit:GetClosestPlayer())
end

function Lasher_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Lasher_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20774, 1, "Lasher_OnEnterCombat")
RegisterUnitEvent (20774, 2, "Lasher_OnLeaveCombat")
RegisterUnitEvent (20774, 4, "Lasher_OnDied")

--[[ Netherstorm -- Fel Imp.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 29th, 2008. ]]

function Imp_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Imp_Bolt",2000,0)
end

function Imp_Bolt(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36227,pUnit:GetClosestPlayer())
end

function Imp_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Imp_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (21135, 1, "Imp_OnEnterCombat")
RegisterUnitEvent (21135, 2, "Imp_OnLeaveCombat")
RegisterUnitEvent (21135, 4, "Imp_OnDied")

--[[ Netherstorm -- Felblade Doomguard.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 29th, 2008. ]]

function Doomguard_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Doomguard_Strike",1000,0)
    pUnit:RegisterEvent("Doomguard_Stomp",1000,0)
end

function Doomguard_Strike(pUnit,Event)
    pUnit:FullCastSpellOnTarget(32736,pUnit:GetClosestPlayer())
end

function Doomguard_Stomp(pUnit,Event)
    pUnit:FullCastSpellOnTarget(35238,pUnit:GetClosestPlayer())
end

function Doomguard_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Doomguard_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (19853, 1, "Doomguard_OnEnterCombat")
RegisterUnitEvent (19853, 2, "Doomguard_OnLeaveCombat")
RegisterUnitEvent (19853, 4, "Doomguard_OnDied")

--[[ Netherstorm -- Furious Nether-wraith.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 29th, 2008. ]]

function Wraith_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Wraith_Bolt",1000,0)
    pUnit:RegisterEvent("Wraith_Blast",6000,0)
end

function Wraith_Bolt(pUnit,Event)
    pUnit:FullCastSpellOnTarget(39337,pUnit:GetClosestPlayer())
end

function Wraith_Blast(pUnit,Event)
    pUnit:FullCastSpellOnTarget(38205,pUnit:GetClosestPlayer())
end

function Wraith_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Wraith_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (22408, 1, "Wraith_OnEnterCombat")
RegisterUnitEvent (22408, 2, "Wraith_OnLeaveCombat")
RegisterUnitEvent (22408, 4, "Wraith_OnDied")

--[[ Netherstorm -- Gan'arg Engineer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 29th, 2008. ]]

function Engineer_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Engineer_Dynamite",1000,0)
end

function Engineer_Dynamite(pUnit,Event)
    pUnit:FullCastSpellOnTarget(7978,pUnit:GetClosestPlayer())
end

function Engineer_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Engineer_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (16948, 1, "Engineer_OnEnterCombat")
RegisterUnitEvent (16948, 2, "Engineer_OnLeaveCombat")
RegisterUnitEvent (16948, 4, "Engineer_OnDied")

--[[ Netherstorm -- Gan'arg Mekgineer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, August, 2th, 2008. ]]

function Mekgineer_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Mekgineer_Drain",1000,0)
    pUnit:RegisterEvent("Mekgineer_Steal",1000,0)
end

function Mekgineer_Drain(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36825,pUnit:GetClosestPlayer())
end

function Mekgineer_Steal(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36208,pUnit:GetClosestPlayer())
end

function Mekgineer_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Mekgineer_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (16949, 1, "Mekgineer_OnEnterCombat")
RegisterUnitEvent (16949, 2, "Mekgineer_OnLeaveCombat")
RegisterUnitEvent (16949, 4, "Mekgineer_OnDied")

--[[ Netherstorm -- Gan'arg Warp-Tinker.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, August, 2th, 2008. ]]

function Tinker_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Tinker_Bomb",2000,0)
    pUnit:RegisterEvent("Tinker_Steal",1000,0)
end

function Tinker_Bomb(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36846,pUnit:GetClosestPlayer())
end

function Tinker_Steal(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36208,pUnit:GetClosestPlayer())
end

function Tinker_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Tinker_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20285, 1, "Tinker_OnEnterCombat")
RegisterUnitEvent (20285, 2, "Tinker_OnLeaveCombat")
RegisterUnitEvent (20285, 4, "Tinker_OnDied")

--[[ Netherstorm -- Hatecryer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, August, 2th, 2008. ]]

function Hatecryer_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Hatecryer_Curse",1000,0)
    pUnit:RegisterEvent("Hatecryer_Rain",1000,0)
end

function Hatecryer_Curse(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36541,pUnit:GetClosestPlayer())
end

function Hatecryer_Rain(pUnit,Event)
    pUnit:FullCastSpellOnTarget(34017,pUnit:GetClosestPlayer())
end

function Hatecryer_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Hatecryer_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20930, 1, "Hatecryer_OnEnterCombat")
RegisterUnitEvent (20930, 2, "Hatecryer_OnLeaveCombat")
RegisterUnitEvent (20930, 4, "Hatecryer_OnDied")

--[[ Netherstorm -- Hound of Culuthas.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, August, 2th, 2008. ]]

function Hound_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Hound_Breath",2500,0)
    pUnit:RegisterEvent("Hound_Stomp",1000,0)
end

function Hound_Breath(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36406,pUnit:GetClosestPlayer())
end

function Hound_Stomp(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36405,pUnit:GetClosestPlayer())
end

function Hound_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Hound_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20141, 1, "Hound_OnEnterCombat")
RegisterUnitEvent (20141, 2, "Hound_OnLeaveCombat")
RegisterUnitEvent (20141, 4, "Hound_OnDied")

--[[ Netherstorm -- Ironspine Forgelord.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, August, 2th, 2008. ]]

function Forgelord_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Forgelord_Hammer",1000,0)
    pUnit:RegisterEvent("Forgelord_Slam",1900,0)
    pUnit:RegisterEvent("Forgelord_Toughen",1000,0)
end

function Forgelord_Hammer(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36251,pUnit:GetClosestPlayer())
end

function Forgelord_Slam(pUnit,Event)
    pUnit:FullCastSpellOnTarget(37179,pUnit:GetClosestPlayer())
end

function Forgelord_Toughen(pUnit,Event)
    pUnit:CastSpell(33962)
end

function Forgelord_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Forgelord_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20928, 1, "Forgelord_OnEnterCombat")
RegisterUnitEvent (20928, 2, "Forgelord_OnLeaveCombat")
RegisterUnitEvent (20928, 4, "Forgelord_OnDied")

--[[ Netherstorm -- Kaylaan.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, August, 2th, 2008. ]]

function Kaylaan_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Kaylaan_Ressurection",4000,0)
end

function Kaylaan_Ressurection(pUnit,Event)
    pUnit:CastSpell(35746)
end

function Kaylaan_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Kaylaan_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20780, 1, "Kaylaan_OnEnterCombat")
RegisterUnitEvent (20780, 2, "Kaylaan_OnLeaveCombat")
RegisterUnitEvent (20780, 4, "Kaylaan_OnDied")

--[[ Netherstorm -- Kirin'Var Apprentice.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, August, 2th, 2008. ]]

function Apprentice_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Apprentice_Hammer",1500,0)
end

function Apprentice_Hammer(pUnit,Event)
    pUnit:FullCastSpellOnTarget(37554,pUnit:GetClosestPlayer())
end

function Apprentice_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Apprentice_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20409, 1, "Apprentice_OnEnterCombat")
RegisterUnitEvent (20409, 2, "Apprentice_OnLeaveCombat")
RegisterUnitEvent (20409, 4, "Apprentice_OnDied")

--[[ Netherstorm -- Kirin'Var Ghost.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, August, 2th, 2008. ]]

function Ghost_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Ghost_Soulbind",2000,0)
end

function Ghost_Soulbind(pUnit,Event)
    pUnit:CastSpell(36153)
end

function Ghost_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Ghost_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20409, 1, "Ghost_OnEnterCombat")
RegisterUnitEvent (20409, 2, "Ghost_OnLeaveCombat")
RegisterUnitEvent (20409, 4, "Ghost_OnDied")

--[[ Netherstorm -- Kirin'Var Spectre.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, August, 2th, 2008. ]]

function Spectre_OnEnterCombat(Unit,Event)
    Unit:RegisterEvent("Spectre_Curse",1000,0)
    Unit:RegisterEvent("Spectre_Bolt",3000,0)
end

function Spectre_Curse(pUnit,Event)
    pUnit:FullCastSpellOnTarget(11980,pUnit:GetClosestPlayer())
end

function Spectre_Bolt(pUnit,Event)
    pUnit:FullCastSpellOnTarget(9613,pUnit:GetClosestPlayer())
end

function Spectre_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Spectre_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20496, 1, "Spectre_OnEnterCombat")
RegisterUnitEvent (20496, 2, "Spectre_OnLeaveCombat")
RegisterUnitEvent (20496, 4, "Spectre_OnDied")

--[[ Netherstorm -- Legion Destroyer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, August, 2th, 2008. ]]

function Destroyer_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Destroyer_Knock",1000,0)
    pUnit:RegisterEvent("Destroyer_Strike",1000,0)
end

function Destroyer_Knock(pUnit,Event)
    pUnit:FullCastSpellOnTarget(11428,pUnit:GetClosestPlayer())
end

function Destroyer_Strike(pUnit,Event)
    pUnit:FullCastSpellOnTarget(13737,pUnit:GetClosestPlayer())
end

function Destroyer_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Destroyer_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20403, 1, "Destroyer_OnEnterCombat")
RegisterUnitEvent (20403, 2, "Destroyer_OnLeaveCombat")
RegisterUnitEvent (20403, 4, "Destroyer_OnDied")

--[[ Netherstorm -- Legion Fel Cannon.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, August, 2th, 2008. ]]

function Cannon_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Cannon_Blast",3000,0)
end

function Cannon_Blast(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36238,pUnit:GetClosestPlayer())
end

function Cannon_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Cannon_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (21233, 1, "Cannon_OnEnterCombat")
RegisterUnitEvent (21233, 2, "Cannon_OnLeaveCombat")
RegisterUnitEvent (21233, 4, "Cannon_OnDied")

--[[ Netherstorm -- Legion Shocktrooper.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, August, 2th, 2008. ]]

function Shocktrooper_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Shocktrooper_Rand",1000,0)
end

function Shocktrooper_Rand(pUnit,Event)
    pUnit:FullCastSpellOnTarget(35144,pUnit:GetClosestPlayer())
end

function Shocktrooper_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Shocktrooper_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20402, 1, "Shocktrooper_OnEnterCombat")
RegisterUnitEvent (20402, 2, "Shocktrooper_OnLeaveCombat")
RegisterUnitEvent (20402, 4, "Shocktrooper_OnDied")

--[[ Netherstorm -- Mageslayer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, August, 2th, 2008. ]]

function Mageslayer_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Mageslayer_Reflection",8000,0)
end

function Mageslayer_Reflection(pUnit,Event)
    pUnit:CastSpell(36096)
end

function Mageslayer_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Mageslayer_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (18866, 1, "Mageslayer_OnEnterCombat")
RegisterUnitEvent (18866, 2, "Mageslayer_OnLeaveCombat")
RegisterUnitEvent (18866, 4, "Mageslayer_OnDied")

--[[ Netherstorm -- Mana Beast.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, August, 2th, 2008. ]]

function Beast_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Beast_Burn",1000,0)
end

function Beast_Burn(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36484,pUnit:GetClosestPlayer())
end

function Beast_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Beast_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (21267, 1, "Beast_OnEnterCombat")
RegisterUnitEvent (21267, 2, "Beast_OnLeaveCombat")
RegisterUnitEvent (21267, 4, "Beast_OnDied")

--[[ Netherstorm -- Mana Seeker.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, August, 2th, 2008. ]]

function Seeker_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Seeker_Burn",3000,0)
    pUnit:RegisterEvent("Seeker_Slow",2000,0)
end

function Seeker_Burn(pUnit,Event)
    pUnit:FullCastSpellOnTarget(11981,pUnit:GetClosestPlayer())
end

function Seeker_Slow(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36843,pUnit:GetClosestPlayer())
end

function Seeker_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Seeker_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (18867, 1, "Seeker_OnEnterCombat")
RegisterUnitEvent (18867, 2, "Seeker_OnLeaveCombat")
RegisterUnitEvent (18867, 4, "Seeker_OnDied")

--[[ Netherstorm -- Mana Snapper.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, August, 2th, 2008. ]]

function Snapper_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Snapper_DeMaterialize",1000,0)
    pUnit:RegisterEvent("Snapper_Burn",1000,0)
end

function Snapper_DeMaterialize(pUnit,Event)
    pUnit:CastSpell(34814)
end

function Snapper_Burn(pUnit,Event)
    pUnit:FullCastSpellOnTarget(37176,pUnit:GetMainTank())
end

function Snapper_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Snapper_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (18883, 1, "Snapper_OnEnterCombat")
RegisterUnitEvent (18883, 2, "Snapper_OnLeaveCombat")
RegisterUnitEvent (18883, 4, "Snapper_OnDied")

--[[ Netherstorm -- Mana Wraith.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, August, 2th, 2008. ]]

function Wraith_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Wraith_Mana",2000,0)
end

function Wraith_Mana(pUnit,Event)
    pUnit:FullCastSpellOnTarget(29054,pUnit:GetClosestPlayer())
end

function Wraith_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Wraith_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (18864, 1, "Wraith_OnEnterCombat")
RegisterUnitEvent (18864, 2, "Wraith_OnLeaveCombat")
RegisterUnitEvent (18864, 4, "Wraith_OnDied")

--[[ Netherstorm -- Markaru.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, August, 2th, 2008. ]]

function Markaru_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Markaru_Spit",2500,0)
end

function Markaru_Spit(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36627,pUnit:GetClosestPlayer())
end

function Markaru_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Markaru_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20775, 1, "Markaru_OnEnterCombat")
RegisterUnitEvent (20775, 2, "Markaru_OnLeaveCombat")
RegisterUnitEvent (20775, 4, "Markaru_OnDied")

--[[ Netherstorm -- Master Daellis Dawnstrike.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, August, 2th, 2008. ]]

function Master_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Master_Arrow",1000,0)
    pUnit:RegisterEvent("Master_Clip",1000,0)
    pUnit:RegisterEvent("Master_Shoot",1000,0)
end

function Master_Arrow(pUnit,Event)
    pUnit:FullCastSpellOnTarget(35964,pUnit:GetClosestPlayer())
end

function Master_Clip(pUnit,Event)
    pUnit:FullCastSpellOnTarget(35963,pUnit:GetClosestPlayer())
end

function Master_Shoot(pUnit,Event)
    pUnit:FullCastSpellOnTarget(6660,pUnit:GetClosestPlayer())
end

function Master_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Master_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (19705, 1, "Master_OnEnterCombat")
RegisterUnitEvent (19705, 2, "Master_OnLeaveCombat")
RegisterUnitEvent (19705, 4, "Master_OnDied")

--[[ Netherstorm -- Mo'arg Doomsmith.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, August, 2th, 2008. ]]

function Doomsmith_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Doomsmith_Doomsaw",1300,0)
end

function Doomsmith_Doomsaw(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36200,pUnit:GetClosestPlayer())
end

function Doomsmith_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Doomsmith_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (16944, 1, "Doomsmith_OnEnterCombat")
RegisterUnitEvent (16944, 2, "Doomsmith_OnLeaveCombat")
RegisterUnitEvent (16944, 4, "Doomsmith_OnDied")

--[[ Netherstorm -- Mo'arg Warp-Master.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, August, 2th, 2008. ]]

function WarpMaster_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("WarpMaster_Spray",2000,0)
end

function WarpMaster_Spray(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36486,pUnit:GetClosestPlayer())
end

function WarpMaster_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function WarpMaster_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20326, 1, "WarpMaster_OnEnterCombat")
RegisterUnitEvent (20326, 2, "WarpMaster_OnLeaveCombat")
RegisterUnitEvent (20326, 4, "WarpMaster_OnDied")

--[[ Netherstorm -- Mutated Farahlon Lasher.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, August, 2th, 2008. ]]

function Lasher_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Lasher_Growth",1500,0)
end

function Lasher_Growth(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36604,pUnit:GetClosestPlayer())
end

function Lasher_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Lasher_OnDied(Unit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20983, 1, "Lasher_OnEnterCombat")
RegisterUnitEvent (20983, 2, "Lasher_OnLeaveCombat")
RegisterUnitEvent (20983, 4, "Lasher_OnDied")

--[[ Netherstorm -- Nether Dragon.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 29th, 2008. ]]

function Dragon_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Dragon_Presence",1000,0)
    pUnit:RegisterEvent("Dragon_Netherbreath",2500,0)
end

function Dragon_Presence(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36513,pUnit:GetClosestPlayer())
end

function Dragon_Netherbreath(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36631,pUnit:GetClosestPlayer())
end

function Dragon_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Dragon_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20332, 1, "Dragon_OnEnterCombat")
RegisterUnitEvent (20332, 2, "Dragon_OnLeaveCombat")
RegisterUnitEvent (20332, 4, "Dragon_OnDied")

--[[ Netherstorm -- Nether Drake.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 29th, 2008. ]]

function Drake_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Drake_Presence",1000,0)
end

function Drake_Presence(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36513,pUnit:GetClosestPlayer())
end

function Drake_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Drake_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (18877, 1, "Drake_OnEnterCombat")
RegisterUnitEvent (18877, 2, "Drake_OnLeaveCombat")
RegisterUnitEvent (18877, 4, "Drake_OnDied")

--[[ Netherstorm -- Nether Ray.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 29th, 2008. ]]

function Ray_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Ray_Drain",1000,0)
    pUnit:RegisterEvent("Ray_Shock",1000,0)
    pUnit:RegisterEvent("Ray_Sting",1000,0)
end

function Ray_Drain(pUnit,Event)
    pUnit:FullCastSpellOnTarget(17008,pUnit:GetClosestPlayer())
end

function Ray_Shock(pUnit,Event)
    pUnit:FullCastSpellOnTarget(35334,pUnit:GetClosestPlayer())
end

function Ray_Sting(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36659,pUnit:GetClosestPlayer())
end

function Ray_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Ray_OnDied(Unit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (18880, 1, "Ray_OnEnterCombat")
RegisterUnitEvent (18880, 2, "Ray_OnLeaveCombat")
RegisterUnitEvent (18880, 4, "Ray_OnDied")

--[[ Netherstorm -- Overmaster Grindgarr.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, September, 29th, 2008. ]]

function Grindgarr_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Grindgarr_Flames",5000,0)
    pUnit:RegisterEvent("Grindgarr_Stomp",4000,0)
end

function Grindgarr_Flames(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36487,pUnit:GetClosestPlayer())
end   
   
function Grindgarr_Stomp(pUnit,Event)
    pUnit:FullCastSpellOnTarget(35238,pUnit:GetClosestPlayer())
end
    
function Grindgarr_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Grindgarr_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20803, 1, "Grindgarr_OnEnterCombat")
RegisterUnitEvent (20803, 2, "Grindgarr_OnLeaveCombat")
RegisterUnitEvent (20803, 4, "Grindgarr_OnDied")

--[[ Netherstorm -- Overseer Athanel.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, September, 29th, 2008. ]]

function Athanel_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Athanel_Cleave",4000,0)
end

function Athanel_Cleave(pUnit,Event)
    pUnit:FullCastSpellOnTarget(15496,pUnit:GetMainTank())
end   
    
function Athanel_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Athanel_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20435, 1, "Athanel_OnEnterCombat")
RegisterUnitEvent (20435, 2, "Athanel_OnLeaveCombat")
RegisterUnitEvent (20435, 4, "Athanel_OnDied")

--[[ Netherstorm -- Overseer Azarad.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, September, 29th, 2008. ]]

function Azarad_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Azarad_Rage",12000,0)
end

function Azarad_Rage(pUnit,Event)
    pUnit:CastSpell(35491)
end   
    
function Azarad_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Azarad_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20685, 1, "Azarad_OnEnterCombat")
RegisterUnitEvent (20685, 2, "Azarad_OnLeaveCombat")
RegisterUnitEvent (20685, 4, "Azarad_OnDied")

--[[ Netherstorm -- Overseer Seylanna.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, September, 29th, 2008. ]]

function Seylanna_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Seylanna_Crystal",2000,0)
    pUnit:RegisterEvent("Seylanna_Beam",4000,0)
end

function Seylanna_Crystal(pUnit,Event)
    pUnit:CastSpell(36179)
end   
   
function Seylanna_Beam(pUnit,Event)
    pUnit:FullCastSpellOnTarget(35919,pUnit:GetClosestPlayer())
end
    
function Seylanna_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Seylanna_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20397, 1, "Seylanna_OnEnterCombat")
RegisterUnitEvent (20397, 2, "Seylanna_OnLeaveCombat")
RegisterUnitEvent (20397, 4, "Seylanna_OnDied")

--[[ Netherstorm -- Overseer Theredis.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, September, 29th, 2008. ]]

function Theredis_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Theredis_Disarm",8000,0)
    pUnit:RegisterEvent("Theredis_Breaker",9000,0)
end

function Theredis_Crystal(pUnit,Event)
    pUnit:FullCastSpellOnTarget(6713,pUnit:GetMainTank())
end   
   
function Theredis_Breaker(pUnit,Event)
    pUnit:FullCastSpellOnTarget(35871,pUnit:GetMainTank())
end
    
function Theredis_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Theredis_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20416, 1, "Theredis_OnEnterCombat")
RegisterUnitEvent (20416, 2, "Theredis_OnLeaveCombat")
RegisterUnitEvent (20416, 4, "Theredis_OnDied")

--[[ Netherstorm -- Parasitic Fleshbeast.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, September, 29th, 2008. ]]

function Beast_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Beast_Rend",15000,0)
    pUnit:RegisterEvent("Beast_Parasite_Spell",6000,0)
    pUnit:RegisterEvent("Beast_Parasite_Spawn",36000,0)
end

function Beast_Rend(pUnit,Event)
    pUnit:FullCastSpellOnTarget(13443,pUnit:GetMainTank())
end

function Beast_Parasite_Spell(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36469,pUnit:GetRandomPlayer(0))
end

function Beast_Parasite_Spawn(pUnit,Event)
    local x = pUnit:GetX()
	local y = pUnit:GetY()
	local z = pUnit:GetZ()
	local o = pUnit:GetO()
    pUnit:CastSpell(36468)
    pUnit:SpawnCreature(21265, x-1, y, z, o, 14, o)
end

function Beast_OnLeaveCombat(pUnit,Event)
    pUnit:RemoveEvents()
end

function Beast_OnDied(pUnit,Event)
    pUnit:RemoveEvents()
end

RegisterUnitEvent(20335,1,"Beast_OnEnterCombat")
RegisterUnitEvent(20335,2,"Beast_OnLeaveCombat")
RegisterUnitEvent(20335,4,"Beast_OnDied")

--[[ Netherstorm -- Pentatharon.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, September, 29th, 2008. ]]

function Pentatharon_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Pentatharon_Swarm",4000,0)
end

function Pentatharon_Swarm(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36039,pUnit:ClosestPlayer())
end   
    
function Pentatharon_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Pentatharon_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20215, 1, "Pentatharon_OnEnterCombat")
RegisterUnitEvent (20215, 2, "Pentatharon_OnLeaveCombat")
RegisterUnitEvent (20215, 4, "Pentatharon_OnDied")

--[[ Netherstorm -- Phase Hunter.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, September, 30th, 2008. ]]

function Hunter_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Hunter_DeMaterialize",8000,0)
    pUnit:RegisterEvent("Hunter_ManaBurn",3000,0)
end

function Hunter_DeMaterialize(pUnit,Event)
    pUnit:CastSpell(34814)
    pUnit:RegisterEvent("Hunter_Materialize",3000,0)
end   
   
function Hunter_ManaBurn(pUnit,Event)
    pUnit:FullCastSpellOnTarget(13321,pUnit:GetClosestPlayer())
end

function Hunter_Materialize(pUnit,Event)
    pUnit:CastSpell(34804)
end
    
function Hunter_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Hunter_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (18879, 1, "Hunter_OnEnterCombat")
RegisterUnitEvent (18879, 2, "Hunter_OnLeaveCombat")
RegisterUnitEvent (18879, 4, "Hunter_OnDied")

--[[ Netherstorm -- Pilots.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, September, 30th, 2008. ]]

local cry_delay = 78000
local announces = {}
local announcei = 1 
local choice = 1

RegisterUnitEvent(19776, 6, "ExperimentalPilot1_Setup")
announces[1] = "All my bags are packed, I'm ready to go."

function ExperimentalPilot1_Tick(pUnit, Event)
   choice = math.random(1, announcei)
   pUnit:SendChatMessage(12, 0, announces[choice])
end

function ExperimentalPilot1_Setup(pUnit, Event)
   pUnit:RegisterEvent("ExperimentalPilot1_Tick", cry_delay, 0)
end


local cry_delay = 86000
local announces = {}
local announcei = 1 
local choice = 1

RegisterUnitEvent(19737, 6, "ExperimentalCrew1_Setup")
announces[1] = "The ship's not ready yet. We still need to calibrate the fuse length to make sure that it doesn't burn out and leave you up there alone."

function ExperimentalCrew1_Tick(pUnit, Event)
   choice = math.random(1, announcei)
   pUnit:SendChatMessage(12, 0, announces[choice])
end

function ExperimentalCrew1_Setup(pUnit, Event)
   pUnit:RegisterEvent("ExperimentalCrew1_Tick", cry_delay, 0)
end


local cry_delay = 94000
local announces = {}
local announcei = 1 
local choice = 1

RegisterUnitEvent(19776, 6, "ExperimentalPilot2_Setup")
announces[1] = "You need to do what? All this science, I don't understand ... Look, this is just my job, five days a week."

function ExperimentalPilot2_Tick(pUnit, Event)
   choice = math.random(1, announcei)
   pUnit:SendChatMessage(12, 0, announces[choice])
end

function ExperimentalPilot2_Setup(pUnit, Event)
   pUnit:RegisterEvent("ExperimentalPilot2_Tick", cry_delay, 0)
end


local cry_delay = 102000
local announces = {}
local announcei = 1 
local choice = 1

RegisterUnitEvent(19737, 6, "ExperimentalCrew2_Setup")
announces[1] = "Essentially, it's going to be a long, long time till we are ready to launch. Maybe you should just head back home to your family."

function ExperimentalCrew2_Tick(pUnit, Event)
   choice = math.random(1, announcei)
   pUnit:SendChatMessage(12, 0, announces[choice])
end

function ExperimentalCrew2_Setup(pUnit, Event)
   pUnit:RegisterEvent("ExperimentalCrew2_Tick", cry_delay, 0)
end

local cry_delay = 110000
local announces = {}
local announcei = 1 
local choice = 1

RegisterUnitEvent(19776, 6, "ExperimentalPilot3_Setup")
announces[1] = "I can't. I'm not the man they think I am at home. Besides, I didn't bring them out here."

function ExperimentalPilot3_Tick(pUnit, Event)
   choice = math.random(1, announcei)
   pUnit:SendChatMessage(12, 0, announces[choice])
end

function ExperimentalPilot3_Setup(pUnit, Event)
   pUnit:RegisterEvent("ExperimentalPilot3_Tick", cry_delay, 0)
end


local cry_delay = 190000
local announces = {}
local announcei = 1 
local choice = 1

RegisterUnitEvent(19737, 6, "ExperimentalCrew3_Setup")
announces[1] = "Why not? A family can give you strength."

function ExperimentalCrew3_Tick(pUnit, Event)
   choice = math.random(1, announcei)
   pUnit:SendChatMessage(12, 0, announces[choice])
end

function ExperimentalCrew3_Setup(pUnit, Event)
   pUnit:RegisterEvent("ExperimentalCrew3_Tick", cry_delay, 0)
end


local cry_delay = 270000
local announces = {}
local announcei = 1 
local choice = 1

RegisterUnitEvent(19776, 6, "ExperimentalPilot4_Setup")
announces[1] = "This isn't the kind of place to raise your kids. It's cold, and there'd be no one to raise them."

function ExperimentalPilot4_Tick(pUnit, Event)
   choice = math.random(1, announcei)
   pUnit:SendChatMessage(12, 0, announces[choice])
end

function ExperimentalPilot4_Setup(pUnit, Event)
   pUnit:RegisterEvent("ExperimentalPilot4_Tick", cry_delay, 0)
end


local cry_delay = 350000
local announces = {}
local announcei = 1 
local choice = 1

RegisterUnitEvent(19737, 6, "ExperimentalCrew4_Setup")
announces[1] = "Couldn't you raise them?"

function ExperimentalCrew4_Tick(pUnit, Event)
   choice = math.random(1, announcei)
   pUnit:SendChatMessage(12, 0, announces[choice])
end

function ExperimentalCrew4_Setup(pUnit, Event)
   pUnit:RegisterEvent("ExperimentalCrew4_Tick", cry_delay, 0)
end


local cry_delay = 430000
local announces = {}
local announcei = 1 
local choice = 1

RegisterUnitEvent(19776, 6, "ExperimentalPilot5_Setup")
announces[1] = "Oh, no, no, no... I'm a rocket man."

function ExperimentalPilot5_Tick(pUnit, Event)
   choice = math.random(1, announcei)
   pUnit:SendChatMessage(12, 0, announces[choice])
end

function ExperimentalPilot5_Setup(pUnit, Event)
   pUnit:RegisterEvent("ExperimentalPilot5_Tick", cry_delay, 0)
end

--[[ Netherstorm -- Porfus the Gem Gorger.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, September, 30th, 2008. ]]

function Porfus_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Porfus_Hamstring",5000,0)
end

function Porfus_Hamstring(pUnit,Event)
    pUnit:FullCastSpellOnTarget(31553,pUnit:GetMainTank())
end   
    
function Porfus_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Porfus_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20783, 1, "Porfus_OnEnterCombat")
RegisterUnitEvent (20783, 2, "Porfus_OnLeaveCombat")
RegisterUnitEvent (20783, 4, "Porfus_OnDied")

--[[ Netherstorm -- Protectorate Avenger.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, September, 30th, 2008. ]]

function Avenger_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Avenger_Claive",4000,0)
end

function Avenger_Claive(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36500,pUnit:GetMainTank())
end   
    
function Avenger_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Avenger_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (21805, 1, "Avenger_OnEnterCombat")
RegisterUnitEvent (21805, 2, "Avenger_OnLeaveCombat")
RegisterUnitEvent (21805, 4, "Avenger_OnDied")

--[[ Netherstorm -- Protectorate Defender.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, September, 30th, 2008. ]]

function Defender_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Defender_Claive",4000,0)
    pUnit:RegisterEvent("Defender_Hamstring",5000,0)
end

function Defender_Claive(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36500,pUnit:GetMainTank())
end   
    
function Defender_Hamstring(pUnit,Event)
    pUnit:FullCastSpellOnTarget(31553,pUnit:GetMainTank())
end 
    
function Defender_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Defender_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20984, 1, "Defender_OnEnterCombat")
RegisterUnitEvent (20984, 2, "Defender_OnLeaveCombat")
RegisterUnitEvent (20984, 4, "Defender_OnDied")

--[[ Netherstorm -- Protectorate Regenerator.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, September, 30th, 2008. ]]

function Regenerator_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Regenerator_Bolt",2500,0)
end

function Regenerator_Bolt(pUnit,Event)
    pUnit:FullCastSpellOnTarget(34232,pUnit:ClosestPlayer())
end   
    
function Regenerator_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Regenerator_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (21783, 1, "Regenerator_OnEnterCombat")
RegisterUnitEvent (21783, 2, "Regenerator_OnLeaveCombat")
RegisterUnitEvent (21783, 4, "Regenerator_OnDied")

--[[ Netherstorm -- Rhonsus.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, September, 30th, 2008. ]]

function Rhonsus_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Rhonsus_Smithery",4000,0)
end

function Rhonsus_Smithery(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36103,pUnit:ClosestPlayer())
end   
    
function Rhonsus_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Rhonsus_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20410, 1, "Rhonsus_OnEnterCombat")
RegisterUnitEvent (20410, 2, "Rhonsus_OnLeaveCombat")
RegisterUnitEvent (20410, 4, "Rhonsus_OnDied")

--[[ Netherstorm -- Ripfang Lynx.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, September, 30th, 2008. ]]

function Lynx_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Lynx_Dash",5000,0)
    pUnit:RegisterEvent("Lynx_Rip",6000,0)
    pUnit:RegisterEvent("Lynx_Swipe",5000,0)
end

function Lynx_Dash(pUnit,Event)
    pUnit:CastSpell(36589)
end   
   
function Lynx_Rip(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36590,pUnit:GetMainTank())
end

function Lynx_Swipe(pUnit,Event)
    pUnit:FullCastSpellOnTarget(31279,pUnit:GetMainTank())
end
    
function Lynx_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Lynx_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20671, 1, "Lynx_OnEnterCombat")
RegisterUnitEvent (20671, 2, "Lynx_OnLeaveCombat")
RegisterUnitEvent (20671, 4, "Lynx_OnDied")

--[[ Netherstorm -- Scythetooth Raptor.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, September, 30th, 2008. ]]

function Raptor_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Raptor_Enrage",20000,0)
end

function Raptor_Enrage(pUnit,Event)
    pUnit:CastSpell(8599)
end   
    
function Raptor_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Raptor_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20634, 1, "Raptor_OnEnterCombat")
RegisterUnitEvent (20634, 2, "Raptor_OnLeaveCombat")
RegisterUnitEvent (20634, 4, "Raptor_OnDied")

--[[ Netherstorm -- Seeping Sludge.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, September, 30th, 2008. ]]

function Sludge_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Sludge_Split",2500,0)
end

function Sludge_Split(pUnit,Event)
    pUnit:CastSpell(36465)
    local x = pUnit:GetX()
	local y = pUnit:GetY()
	local z = pUnit:GetZ()
	local o = pUnit:GetO()
    pUnit:SpawnCreature(21264, x-1, y, z, o, 14, o)
end   
    
function Sludge_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Sludge_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20501, 1, "Sludge_OnEnterCombat")
RegisterUnitEvent (20501, 2, "Sludge_OnLeaveCombat")
RegisterUnitEvent (20501, 4, "Sludge_OnDied")

--[[ Netherstorm -- Severed Defender.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, September, 30th, 2008. ]]

function Defender_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Defender_Block",1000,(1))
    pUnit:RegisterEvent("Defender_Strike",5000,0)
end

function Defender_Block(pUnit,Event)
    pUnit:CastSpell(12169)
end   

function Defender_Strike(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36093,pUnit:GetMainTank())
end

function Defender_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Defender_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20934, 1, "Defender_OnEnterCombat")
RegisterUnitEvent (20934, 2, "Defender_OnLeaveCombat")
RegisterUnitEvent (20934, 4, "Defender_OnDied")

--[[ Netherstorm -- Severed Spirit.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, September, 30th, 2008. ]]

function Spirit_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Spirit_Nova",10000,0)
    pUnit:RegisterEvent("Spirit_Bolt",4000,0)
end

function Spirit_Nova(pUnit,Event)
    pUnit:CastSpell(11831)
end   

function Spirit_Bolt(pUnit,Event)
    pUnit:FullCastSpellOnTarget(20822,pUnit:GetMainTank())
end

function Spirit_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Spirit_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (19881, 1, "Spirit_OnEnterCombat")
RegisterUnitEvent (19881, 2, "Spirit_OnLeaveCombat")
RegisterUnitEvent (19881, 4, "Spirit_OnDied")

--[[ Netherstorm -- Shaleskin Flayer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, September, 30th, 2008. ]]

function Flayer_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Flayer_Skin",5000,0)
end

function Flayer_Skin(pUnit,Event)
    pUnit:CastSpell(36576)
end   

function Flayer_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Flayer_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20210, 1, "Flayer_OnEnterCombat")
RegisterUnitEvent (20210, 2, "Flayer_OnLeaveCombat")
RegisterUnitEvent (20210, 4, "Flayer_OnDied")

--[[ Netherstorm -- Shimmerwing Moth.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, September, 30th, 2008. ]]

function Moth_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Moth_Dust",10000,0)
    pUnit:RegisterEvent("Moth_Buffet",2000,0)
end

function Moth_Dust(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36592,pUnit:GetMainTank())
end   

function Moth_Buffet(pUnit,Event)
    pUnit:FullCastSpellOnTarget(32914,pUnit:GetMainTank())
end

function Moth_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Moth_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20611, 1, "Moth_OnEnterCombat")
RegisterUnitEvent (20611, 2, "Moth_OnLeaveCombat")
RegisterUnitEvent (20611, 4, "Moth_OnDied")

--[[ Netherstorm -- Skeletal Stallion.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 01th, 2008. ]]

function Stallion_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Stallion_Kick",5000,0)
end

function Stallion_Kick(pUnit,Event)
    pUnit:FullCastSpellOnTarget(11978,pUnit:GetMainTank())
end   

function Stallion_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Stallion_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20495, 1, "Stallion_OnEnterCombat")
RegisterUnitEvent (20495, 2, "Stallion_OnLeaveCombat")
RegisterUnitEvent (20495, 4, "Stallion_OnDied")

--[[ Netherstorm -- Spawn of Dimensius.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 01th, 2008. ]]

function Dimensius_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Dimensius_Feed",5000,0)
end

function Dimensius_Feed(pUnit,Event)
    pUnit:FullCastSpellOnTarget(37450,pUnit:GetMainTank())
end   

function Dimensius_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Dimensius_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (21780, 1, "Dimensius_OnEnterCombat")
RegisterUnitEvent (21780, 2, "Dimensius_OnLeaveCombat")
RegisterUnitEvent (21780, 4, "Dimensius_OnDied")

--[[ Netherstorm -- Spellbinder Maryana.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 01th, 2008. ]]

function Maryana_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Maryana_Blast",5000,0)
    pUnit:RegisterEvent("Maryana_Fire",7000,0)
    pUnit:RegisterEvent("Maryana_Intellect",1000,(1))
end

function Maryana_Blast(pUnit,Event)
    pUnit:CastSpell(37450)
end   

function Maryana_Fire(pUnit,Event)
    pUnit:CastSpell(15091)
end

function Maryana_Intellect(pUnit,Event)
    pUnit:CastSpell(35917)
end

function Maryana_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Maryana_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (19593, 1, "Maryana_OnEnterCombat")
RegisterUnitEvent (19593, 2, "Maryana_OnLeaveCombat")
RegisterUnitEvent (19593, 4, "Maryana_OnDied")

--[[ Netherstorm -- Spellreaver Marathelle.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 01th, 2008. ]]

function Marathelle_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Marathelle_Tempest",4500,0)
    pUnit:RegisterEvent("Marathelle_Ring",20000,0)
end

function Marathelle_Tempest(pUnit,Event)
    pUnit:FullCastSpellOnTarget(35843,pUnit:GetClosestPlayer())
end   

function Marathelle_Ring(pUnit,Event)
    pUnit:FullCastSpellOnTarget(35831,pUnit:GetRandomPlayer(0))
end

function Marathelle_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Marathelle_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (19926, 1, "Marathelle_OnEnterCombat")
RegisterUnitEvent (19926, 2, "Marathelle_OnLeaveCombat")
RegisterUnitEvent (19926, 4, "Marathelle_OnDied")

--[[ Netherstorm -- Summoner Kanthin.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 26th, 2008. ]]

function Summoner_Kanthin_OnCombat(pUnit, Event)
pUnit:RegisterEvent("Summoner_Kanthin_Fireball", 4000, 0)
pUnit:RegisterEvent("Summoner_Kanthin_Nova", 10000, 0)
pUnit:RegisterEvent("Summoner_Kanthin_Pyroblast", 7000, 0)
end

function Summoner_Kanthin_OnLeaveCombat(pUnit, Event)
pUnit:RemoveEvents()
end

function Summoner_Kanthin_OnKillTarget(pUnit, Event)
pUnit:RemoveEvents()
end

function Summoner_Kanthin_OnDeath(pUnit, Event)
pUnit:RemoveEvents()
end

RegisterUnitEvent(19657, 1, "Summoner_Kanthin_OnCombat")
RegisterUnitEvent(19657, 2, "Summoner_Kanthin_OnLeaveCombat")
RegisterUnitEvent(19657, 3, "Summoner_Kanthin_OnKillTarget")
RegisterUnitEvent(19657, 4, "Summoner_Kanthin_OnDeath")

function Summoner_Kanthin_Fireball(pUnit, Event)
pUnit:FullCastSpellOnTarget(19816,pUnit:GetClosestPlayer())
end

function Summoner_Kanthin_Nova(pUnit, Event)
pUnit:FullCastSpellOnTarget(19657,pUnit:GetMainTank())
end

function Summoner_Kanthin_Pyroblast(pUnit, Event)
pUnit:FullCastSpellOnTarget(17273,pUnit:GetClosestPlayer())
end

--[[ Netherstorm -- Sundered Rumbler.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 26th, 2008. ]]

function Sundered_Rumbler_OnCombat(pUnit, Event)
pUnit:RegisterEvent("Sundered_Rumbler_Summon_Sundered_Shard", 8000, 0)
end

function Sundered_Rumbler_OnLeaveCombat(pUnit, Event)
pUnit:RemoveEvents()
end

function Sundered_Rumbler_OnKillTarget(pUnit, Event)
pUnit:RemoveEvents()
end

function Sundered_Rumbler_OnDeath(pUnit, Event)
pUnit:RemoveEvents()
end

RegisterUnitEvent(18881, 1, "Sundered_Rumbler_OnCombat")
RegisterUnitEvent(18881, 2, "Sundered_Rumbler_OnLeaveCombat")
RegisterUnitEvent(18881, 3, "Sundered_Rumbler_OnKillTarget")
RegisterUnitEvent(18881, 4, "Sundered_Rumbler_OnDeath")

function Sundered_Rumbler_Summon_Sundered_Shard(pUnit, Event)
pUnit:CastSpell(35310)
local X = pUnit:GetX()
local Y = pUnit:GetY()
local Z = pUnit:GetZ()
local O = pUnit:GetO()
pUnit:SpawnCreature(20498, X, Y, Z, O, 35, 0)
end

--[[ Netherstorm -- Sundered Thunderer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 27th, 2008. ]]

function Sundered_Thunderer_OnCombat(pUnit, Event)
pUnit:RegisterEvent("Sundered_Thunderer_Summon_Sundered_Shard", 8000, 0)
pUnit:RegisterEvent("Sundered_Thunderer_Thunder_Clap", 6000, 0)
end

function Sundered_Thunderer_OnLeaveCombat(pUnit, Event)
pUnit:RemoveEvents()
end

function Sundered_Thunderer_OnKillTarget(pUnit, Event)
pUnit:RemoveEvents()
end

function Sundered_Thunderer_OnDeath(pUnit, Event)
pUnit:RemoveEvents()
end

RegisterUnitEvent(18882, 1, "Sundered_Thunderer_OnCombat")
RegisterUnitEvent(18882, 2, "Sundered_Thunderer_OnLeaveCombat")
RegisterUnitEvent(18882, 3, "Sundered_Thunderer_OnKillTarget")
RegisterUnitEvent(18882, 4, "Sundered_Thunderer_OnDeath")

function Sundered_Thunderer_Thunder_Clap(pUnit, Event)
pUnit:FullCastSpellOnTarget(6000,pUnit:GetMainTank())
end

function Sundered_Thunderer_Summon_Sundered_Shard(pUnit, Event)
pUnit:CastSpell(35007)
local X = pUnit:GetX()
local Y = pUnit:GetY()
local Z = pUnit:GetZ()
local O = pUnit:GetO()
pUnit:SpawnCreature(20498, X, Y, Z, O, 35, 0)
end

--[[ Netherstorm -- Sunfury Arcanist.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 27th, 2008. ]]

function Sunfury_Arcanist_OnCombat(pUnit, Event)
pUnit:RegisterEvent("Sunfury_Arcanist_Arcane_Missiles", 6000, 0)
pUnit:RegisterEvent("Sunfury_Arcanist_Bloodcrystal_Surge", 10000, 0)
end

function Sunfury_Arcanist_OnLeaveCombat(pUnit, Event)
pUnit:RemoveEvents()
end

function Sunfury_Arcanist_OnKillTarget(pUnit, Event)
pUnit:RemoveEvents()
end

function Sunfury_Arcanist_OnDeath(pUnit, Event)
pUnit:RemoveEvents()
end

RegisterUnitEvent(20134, 1, "Sunfury_Arcanist_OnCombat")
RegisterUnitEvent(20134, 2, "Sunfury_Arcanist_OnLeaveCombat")
RegisterUnitEvent(20134, 3, "Sunfury_Arcanist_OnKillTarget")
RegisterUnitEvent(20134, 4, "Sunfury_Arcanist_OnDeath")

function Sunfury_Arcanist_Arcane_Missiles(pUnit, Event)
pUnit:FullCastSpellOnTarget(34447,pUnit:GetMainTank())
end

function Sunfury_Arcanist_Bloodcrystal_Surge(pUnit, Event)
pUnit:CastSpell(35778)
end

--[[ Netherstorm -- Sunfury Arch Mage.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 27th, 2008. ]]

function Sunfury_Arch_Mage_OnCombat(pUnit, Event)
pUnit:RegisterEvent("Sunfury_Arch_Mage_Nova", 10000, 0)
pUnit:RegisterEvent("Sunfury_Arch_Mage_Fiery_Intellect", 1000, (1))
pUnit:RegisterEvent("Sunfury_Arch_Mage_Fireball", 4000, 0)
end

function Sunfury_Arch_Mage_OnLeaveCombat(pUnit, Event)
pUnit:RemoveEvents()
end

function Sunfury_Arch_Mage_OnKillTarget(pUnit, Event)
pUnit:RemoveEvents()
end

function Sunfury_Arch_Mage_OnDeath(pUnit, Event)
pUnit:RemoveEvents()
end

RegisterUnitEvent(20135, 1, "Sunfury_Arch_Mage_OnCombat")
RegisterUnitEvent(20135, 2, "Sunfury_Arch_Mage_OnLeaveCombat")
RegisterUnitEvent(20135, 3, "Sunfury_Arch_Mage_OnKillTarget")
RegisterUnitEvent(20135, 4, "Sunfury_Arch_Mage_OnDeath")

function Sunfury_Arch_Mage_Nova(pUnit, Event)
pUnit:CastSpell(11831)
end

function Sunfury_Arch_Mage_Fiery_Intellect(pUnit, Event)
pUnit:CastSpell(35917)
end

function Sunfury_Arch_Mage_Fireball(pUnit, Event)
pUnit:FullCastSpellOnTarget(20823,pUnit:GetMainTank())
end

--[[ Netherstorm -- Sunfury Archer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 27th, 2008. ]]

function Sunfury_Archer_OnCombat(Unit, Event)
Unit:RegisterEvent("Sunfury_Archer_Net", 8000, 0)
Unit:RegisterEvent("Sunfury_Archer_Immolation_Arrow", 6000, 0)
Unit:RegisterEvent("Sunfury_Archer_Shoot", 6000, 0)
end

function Sunfury_Archer_Immolation_Arrow(pUnit, Event) 
pUnit:FullCastSpellOnTarget(37847, pUnit:GetMainTank()) 
end

function Sunfury_Archer_Net(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12024, pUnit:GetMainTank()) 
end

function Sunfury_Archer_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function Sunfury_Archer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Sunfury_Archer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Sunfury_Archer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(19707, 1, "Sunfury_Archer_OnCombat")
RegisterUnitEvent(19707, 2, "Sunfury_Archer_OnLeaveCombat")
RegisterUnitEvent(19707, 3, "Sunfury_Archer_OnKilledTarget")
RegisterUnitEvent(19707, 4, "Sunfury_Archer_OnDied")

--[[ Netherstorm -- Sunfury Astromancer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 27th, 2008. ]]

function Astromancer_OnCombat(Unit, Event)
Unit:RegisterEvent("Astromancer_Focus", 6000, 0)
Unit:RegisterEvent("Astromancer_Intellect", 1000, 1)
Unit:RegisterEvent("Astromancer_Scorch", 4000, 0)
end

function Astromancer_Focus(pUnit, Event) 
pUnit:CastSpell(35914) 
end

function Astromancer_Intellect(pUnit, Event) 
pUnit:CastSpell(35917) 
end

function Astromancer_Scorch(pUnit, Event) 
pUnit:FullCastSpellOnTarget(38391, pUnit:GetMainTank()) 
end

function Astromancer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Astromancer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Astromancer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(19643, 1, "Astromancer_OnCombat")
RegisterUnitEvent(19643, 2, "Astromancer_OnLeaveCombat")
RegisterUnitEvent(19643, 3, "Astromancer_OnKilledTarget")
RegisterUnitEvent(19643, 4, "Astromancer_OnDied")

--[[ Netherstorm -- Sunfury Blood Knight.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 27th, 2008. ]]

function Knight_OnCombat(Unit, Event)
end

function Knight_Heal(pUnit, Event) 
pUnit:CastSpell(36476) 
end

function Knight_Enrage(pUnit, Event) 
pUnit:CastSpell(8599) 
end

function Knight_Breaker(pUnit, Event) 
pUnit:FullCastSpellOnTarget(35871, pUnit:GetMainTank()) 
end

function Knight_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Knight_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Knight_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(21089, 1, "Knight_OnCombat")
RegisterUnitEvent(21089, 2, "Knight_OnLeaveCombat")
RegisterUnitEvent(21089, 3, "Knight_OnKilledTarget")
RegisterUnitEvent(21089, 4, "Knight_OnDied")

--[[ Netherstorm -- Sunfury Bloodwarder.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 27th, 2008. ]]

function Bloodwarder_OnCombat(Unit, Event)
Unit:RegisterEvent("Bloodwarder_Enrage", 25000, 1)
Unit:RegisterEvent("Bloodwarder_Mark", 10000, 0)
end

function Bloodwarder_Enrage(pUnit, Event) 
pUnit:CastSpell(8599) 
end

function Bloodwarder_Mark(pUnit, Event) 
pUnit:FullCastSpellOnTarget(35877, pUnit:GetMainTank()) 
end

function Bloodwarder_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Bloodwarder_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Bloodwarder_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(18853, 1, "Bloodwarder_OnCombat")
RegisterUnitEvent(18853, 2, "Bloodwarder_OnLeaveCombat")
RegisterUnitEvent(18853, 3, "Bloodwarder_OnKilledTarget")
RegisterUnitEvent(18853, 4, "Bloodwarder_OnDied")

--[[ Netherstorm -- Sunfury Bowman.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 27th, 2008. ]]

function Sunfury_Bowman_OnCombat(Unit, Event)
Unit:RegisterEvent("Sunfury_Bowman_Net", 8000, 0)
Unit:RegisterEvent("Sunfury_Bowman_Immolation_Arrow", 6000, 0)
Unit:RegisterEvent("Sunfury_Bowman_Shoot", 6000, 0)
end

function Sunfury_Bowman_Immolation_Arrow(pUnit, Event) 
pUnit:FullCastSpellOnTarget(37847, pUnit:GetMainTank()) 
end

function Sunfury_Bowman_Net(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12024, pUnit:GetMainTank()) 
end

function Sunfury_Bowman_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function Sunfury_Bowman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Sunfury_Bowman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Sunfury_Bowman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(20207, 1, "Sunfury_Bowman_OnCombat")
RegisterUnitEvent(20207, 2, "Sunfury_Bowman_OnLeaveCombat")
RegisterUnitEvent(20207, 3, "Sunfury_Bowman_OnKilledTarget")
RegisterUnitEvent(20207, 4, "Sunfury_Bowman_OnDied")

--[[ Netherstorm -- Sunfury Captain.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 27th, 2008. ]]

function Captain_OnCombat(Unit, Event)
Unit:RegisterEvent("Captain_Shout", 1000, 3)
Unit:RegisterEvent("Captain_Enrage", 25000, 1)
Unit:RegisterEvent("Captain_Breaker", 10000, 0)
Unit:RegisterEvent("Captain_Breaker", 10000, 0)
end

function Captain_Shout(pUnit, Event) 
pUnit:CastSpellOnTarget(32064, pUnit:GetRandomFriend(0)) 
end

function Captain_Enrage(pUnit, Event) 
pUnit:CastSpell(8599) 
end

function Captain_Breaker(pUnit, Event) 
pUnit:CastSpell(35871) 
end

function Captain_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Captain_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Captain_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(19453, 1, "Captain_OnCombat")
RegisterUnitEvent(19453, 2, "Captain_OnLeaveCombat")
RegisterUnitEvent(19453, 3, "Captain_OnKilledTarget")
RegisterUnitEvent(19453, 4, "Captain_OnDied")

--[[ Netherstorm -- Sunfury Centurion.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 27th, 2008. ]]

function Centurion_OnCombat(Unit, Event)
Unit:RegisterEvent("Centurion_Enrage", 25000, 1)
Unit:RegisterEvent("Centurion_Breaker", 10000, 0)
end

function Centurion_Enrage(pUnit, Event) 
pUnit:CastSpell(8599) 
end

function Centurion_Breaker(pUnit, Event) 
pUnit:CastSpell(35871) 
end

function Centurion_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Centurion_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Centurion_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(20140, 1, "Centurion_OnCombat")
RegisterUnitEvent(20140, 2, "Centurion_OnLeaveCombat")
RegisterUnitEvent(20140, 3, "Centurion_OnKilledTarget")
RegisterUnitEvent(20140, 4, "Centurion_OnDied")

--[[ Netherstorm -- Sunfury Conjurer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 27th, 2008. ]]

function Conjurer_OnCombat(Unit, Event)
Unit:RegisterEvent("Conjurer_Surge", 10000, 0)
Unit:RegisterEvent("Conjurer_Flamestrike", 8000, 0)
Unit:RegisterEvent("Conjurer_Frostbolt", 6000, 0)
end

function Conjurer_Surge(pUnit, Event) 
pUnit:CastSpell(35778) 
end

function Conjurer_Flamestrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11829, pUnit:GetMainTank()) 
end

function Conjurer_Frostbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9672, pUnit:GetMainTank()) 
end

function Conjurer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Conjurer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Conjurer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(20139, 1, "Conjurer_OnCombat")
RegisterUnitEvent(20139, 2, "Conjurer_OnLeaveCombat")
RegisterUnitEvent(20139, 3, "Conjurer_OnKilledTarget")
RegisterUnitEvent(20139, 4, "Conjurer_OnDied")

--[[ Netherstorm -- Sunfury Flamekeeper.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 27th, 2008. ]]

function Flamekeeper_OnCombat(Unit, Event)
Unit:RegisterEvent("Flamekeeper_Enrage", 25000, 0)
Unit:RegisterEvent("Flamekeeper_Flame", 10000, 0)
Unit:RegisterEvent("Flamekeeper_Torch", 5000, 0)
end

function Flamekeeper_Enrage(pUnit, Event) 
pUnit:CastSpell(8599) 
end

function Flamekeeper_Flame(pUnit, Event) 
pUnit:FullCastSpellOnTarget(33731, pUnit:GetMainTank()) 
end

function Flamekeeper_Torch(pUnit, Event) 
pUnit:FullCastSpellOnTarget(35857, pUnit:GetMainTank()) 
end

function Flamekeeper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Flamekeeper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Flamekeeper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(20221, 1, "Flamekeeper_OnCombat")
RegisterUnitEvent(20221, 2, "Flamekeeper_OnLeaveCombat")
RegisterUnitEvent(20221, 3, "Flamekeeper_OnKilledTarget")
RegisterUnitEvent(20221, 4, "Flamekeeper_OnDied")

--[[ Netherstorm -- Sunfury Geologist.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 27th, 2008. ]]

function Geologist_OnCombat(Unit, Event)
Unit:RegisterEvent("Geologist_Armor", 10000, 0)
Unit:RegisterEvent("Geologist_Rock", 6000, 0)
end

function Geologist_Armor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(35918, pUnit:GetMainTank()) 
end

function Geologist_Rock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(36645, pUnit:GetMainTank()) 
end

function Geologist_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Geologist_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Geologist_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(19779, 1, "Geologist_OnCombat")
RegisterUnitEvent(19779, 2, "Geologist_OnLeaveCombat")
RegisterUnitEvent(19779, 3, "Geologist_OnKilledTarget")
RegisterUnitEvent(19779, 4, "Geologist_OnDied")

--[[ Netherstorm -- Sunfury Guardsman.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 27th, 2008. ]]

function Guardsman_OnCombat(Unit, Event)
Unit:RegisterEvent("Guardsman_Enrage", 25000, 0)
Unit:RegisterEvent("Guardsman_Mark", 10000, 0)
end

function Guardsman_Enrage(pUnit, Event) 
pUnit:CastSpell(8599) 
end

function Guardsman_Mark(pUnit, Event) 
pUnit:FullCastSpellOnTarget(35877, pUnit:GetMainTank()) 
end

function Guardsman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Guardsman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Guardsman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(18850, 1, "Guardsman_OnCombat")
RegisterUnitEvent(18850, 2, "Guardsman_OnLeaveCombat")
RegisterUnitEvent(18850, 3, "Guardsman_OnKilledTarget")
RegisterUnitEvent(18850, 4, "Guardsman_OnDied")

--[[ Netherstorm -- Sunfury Magister.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 27th, 2008. ]]

function Magister_OnCombat(Unit, Event)
Unit:RegisterEvent("Magister_Fireball", 6000, 0)
Unit:RegisterEvent("Magister_Surge", 10000, 0)
end

function Magister_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9053, pUnit:GetMainTank()) 
end

function Magister_Surge(pUnit, Event) 
pUnit:CastSpell(35778) 
end

function Magister_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Magister_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Magister_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(18855, 1, "Magister_OnCombat")
RegisterUnitEvent(18855, 2, "Magister_OnLeaveCombat")
RegisterUnitEvent(18855, 3, "Magister_OnKilledTarget")
RegisterUnitEvent(18855, 4, "Magister_OnDied")

--[[ Netherstorm -- Sunfury Nethermancer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 27th, 2008. ]]

function Nethermancer_OnCombat(Unit, Event)
Unit:RegisterEvent("Nethermancer_Surge", 10000, 0)
Unit:RegisterEvent("Nethermancer_Bolt", 5000, 0)
Unit:RegisterEvent("Nethermance_Summon",20000,0)
end

function Nethermancer_Surge(pUnit, Event) 
pUnit:CastSpell(35778) 
end

function Nethermance_Summon(pUnit,Event)
    local x = pUnit:GetX()
	local y = pUnit:GetY()
	local z = pUnit:GetZ()
	local o = pUnit:GetO()
    pUnit:CastSpell(36477)
    pUnit:SpawnCreature(21267, x-1, y, z, o, 14, o)
end

function Nethermancer_Bolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9613, pUnit:GetMainTank()) 
end

function Nethermancer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Nethermancer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Nethermancer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(20248, 1, "Nethermancer_OnCombat")
RegisterUnitEvent(20248, 2, "Nethermancer_OnLeaveCombat")
RegisterUnitEvent(20248, 3, "Nethermancer_OnKilledTarget")
RegisterUnitEvent(20248, 4, "Nethermancer_OnDied")

--[[ Netherstorm -- Sunfury Researcher.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 27th, 2008. ]]

function Researcher_OnCombat(Unit, Event)
Unit:RegisterEvent("Researcher_Armor", 6000, 0)
end

function Researcher_Armor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(35918, pUnit:GetMainTank()) 
end

function Researcher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Researcher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Researcher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(20136, 1, "Researcher_OnCombat")
RegisterUnitEvent(20136, 2, "Researcher_OnLeaveCombat")
RegisterUnitEvent(20136, 3, "Researcher_OnKilledTarget")
RegisterUnitEvent(20136, 4, "Researcher_OnDied")

--[[ Netherstorm -- Sunfury Warp-Engineer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 27th, 2008. ]]

function Engineer_OnCombat(Unit, Event)
Unit:RegisterEvent("Engineer_Beam", 6000, 0)
end

function Engineer_Beam(pUnit, Event) 
pUnit:FullCastSpellOnTarget(35919, pUnit:GetMainTank()) 
end

function Engineer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Engineer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Engineer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(18852, 1, "Engineer_OnCombat")
RegisterUnitEvent(18852, 2, "Engineer_OnLeaveCombat")
RegisterUnitEvent(18852, 3, "Engineer_OnKilledTarget")
RegisterUnitEvent(18852, 4, "Engineer_OnDied")

--[[ Netherstorm -- Sunfury Warp-Master.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 27th, 2008. ]]

function Master_OnCombat(Unit, Event)
Unit:RegisterEvent("Master_Beam", 6000, 0)
end

function Master_Beam(pUnit, Event) 
pUnit:FullCastSpellOnTarget(35919, pUnit:GetMainTank()) 
end

function Master_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Master_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Master_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(18857, 1, "Master_OnCombat")
RegisterUnitEvent(18857, 2, "Master_OnLeaveCombat")
RegisterUnitEvent(18857, 3, "Master_OnKilledTarget")
RegisterUnitEvent(18857, 4, "Master_OnDied")

--[[ Netherstorm -- Swiftwing Shredder.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 27th, 2008. ]]

function Shredder_OnCombat(Unit, Event)
Unit:RegisterEvent("Shredder_Blast", 6000, 0)
Unit:RegisterEvent("Shredder_Shield", 1000, 1)
end

function Shredder_Blast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(36594, pUnit:GetMainTank()) 
end

function Shredder_Shield(pUnit, Event) 
pUnit:CastSpell(19514) 
end

function Shredder_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Shredder_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Shredder_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(20673, 1, "Shredder_OnCombat")
RegisterUnitEvent(20673, 2, "Shredder_OnLeaveCombat")
RegisterUnitEvent(20673, 3, "Shredder_OnKilledTarget")
RegisterUnitEvent(20673, 4, "Shredder_OnDied")

--[[ Netherstorm -- Talbuk Doe.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 27th, 2008. ]]

function Doe_OnCombat(Unit, Event)
Unit:RegisterEvent("Doe_Gore", 5000, 0)
end

function Doe_Gore(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32019, pUnit:GetMainTank()) 
end

function Doe_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Doe_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Doe_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(20610, 1, "Doe_OnCombat")
RegisterUnitEvent(20610, 2, "Doe_OnLeaveCombat")
RegisterUnitEvent(20610, 3, "Doe_OnKilledTarget")
RegisterUnitEvent(20610, 4, "Doe_OnDied")

--[[ Netherstorm -- Talbuk Sire.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 27th, 2008. ]]

function Sire_OnCombat(Unit, Event)
Unit:RegisterEvent("Sire_Stomp", 6000, 0)
end

function Sire_Stomp(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32023, pUnit:GetMainTank()) 
end

function Sire_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Sire_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Sire_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(20777, 1, "Sire_OnCombat")
RegisterUnitEvent(20777, 2, "Sire_OnLeaveCombat")
RegisterUnitEvent(20777, 3, "Sire_OnKilledTarget")
RegisterUnitEvent(20777, 4, "Sire_OnDied")

--[[ Netherstorm -- Terrorguard Protector.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 27th, 2008. ]]

function Protector_OnCombat(Unit, Event)
Unit:RegisterEvent("Protector_Cleave", 7000, 0)
Unit:RegisterEvent("Protector_Flames", 5000, 0)
end

function Protector_Cleave(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15496, pUnit:GetMainTank()) 
end

function Protector_Flames(pUnit, Event) 
pUnit:FullCastSpellOnTarget(37488, pUnit:GetMainTank()) 
end

function Protector_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Protector_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Protector_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(21923, 1, "Protector_OnCombat")
RegisterUnitEvent(21923, 2, "Protector_OnLeaveCombat")
RegisterUnitEvent(21923, 3, "Protector_OnKilledTarget")
RegisterUnitEvent(21923, 4, "Protector_OnDied")

--[[ Netherstorm -- Tormented Citizen.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 27th, 2008. ]]

function Citizen_OnCombat(Unit, Event)
Unit:RegisterEvent("Citizen_Curse", 1000, 1)
Unit:RegisterEvent("Citizen_Bolt", 6000, 0)
Unit:RegisterEvent("Citizen_Immune", 6000, 0)
end

function Citizen_Curse(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11980, pUnit:GetMainTank()) 
end

function Citizen_Bolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9613, pUnit:GetMainTank()) 
end

function Citizen_Immune(pUnit, Event) 
pUnit:FullCastSpellOnTarget(36153, pUnit:GetMainTank()) 
end

function Citizen_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Citizen_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Citizen_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(21065, 1, "Citizen_OnCombat")
RegisterUnitEvent(21065, 2, "Citizen_OnLeaveCombat")
RegisterUnitEvent(21065, 3, "Citizen_OnKilledTarget")
RegisterUnitEvent(21065, 4, "Citizen_OnDied")

--[[ Netherstorm -- Tormented Soul.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 27th, 2008. ]]

function Soul_OnCombat(Unit, Event)
Unit:RegisterEvent("Soul_Immune", 6000, 0)
end

function Soul_Immune(pUnit, Event) 
pUnit:FullCastSpellOnTarget(36153, pUnit:GetMainTank()) 
end

function Soul_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Soul_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Soul_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(20512, 1, "Soul_OnCombat")
RegisterUnitEvent(20512, 2, "Soul_OnLeaveCombat")
RegisterUnitEvent(20512, 3, "Soul_OnKilledTarget")
RegisterUnitEvent(20512, 4, "Soul_OnDied")

--[[ Netherstorm -- Tyrantus.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 27th, 2008. ]]

function Tyrantus_OnCombat(Unit, Event)
Unit:RegisterEvent("Tyrantus_Wood", 7000, 0)
Unit:RegisterEvent("Tyrantus_Fear", 6000, 0)
end

function Tyrantus_Wood(pUnit, Event) 
pUnit:FullCastSpellOnTarget(35321, pUnit:GetMainTank()) 
end

function Tyrantus_Fear(pUnit, Event) 
pUnit:FullCastSpellOnTarget(36629, pUnit:GetClosestPlayer()) 
end

function Tyrantus_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Tyrantus_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Tyrantus_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(20931, 1, "Tyrantus_OnCombat")
RegisterUnitEvent(20931, 2, "Tyrantus_OnLeaveCombat")
RegisterUnitEvent(20931, 3, "Tyrantus_OnKilledTarget")
RegisterUnitEvent(20931, 4, "Tyrantus_OnDied")

--[[ Netherstorm -- Unstable Voidwraith.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 27th, 2008. ]]

function Voidwraith_OnCombat(Unit, Event)
Unit:RegisterEvent("Voidwraith_Spawn", 6000, 0)
Unit:RegisterEvent("Voidwraith_Summon", 15000,0)
end

function Voidwraith_Spawn(pUnit, Event) 
pUnit:CastSpell(34302) 
end

function Voidwraith_Summon(pUnit,Event)
    local x = pUnit:GetX()
	local y = pUnit:GetY()
	local z = pUnit:GetZ()
	local o = pUnit:GetO()
    pUnit:CastSpell(36463)
    pUnit:SpawnCreature(17471, x-1, y, z, o, 14, o)
end

function Voidwraith_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Voidwraith_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Voidwraith_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(18869, 1, "Voidwraith_OnCombat")
RegisterUnitEvent(18869, 2, "Voidwraith_OnLeaveCombat")
RegisterUnitEvent(18869, 3, "Voidwraith_OnKilledTarget")
RegisterUnitEvent(18869, 4, "Voidwraith_OnDied")

--[[ Netherstorm -- Veronia.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 27th, 2008. ]]

function Veronia_OnCombat(Unit, Event)
Unit:RegisterEvent("Veronia_Fight", 8000, 0)
end

function Veronia_Fight(pUnit, Event) 
pUnit:CastSpell(34905) 
end

function Veronia_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Veronia_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Veronia_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(20162, 1, "Veronia_OnCombat")
RegisterUnitEvent(20162, 2, "Veronia_OnLeaveCombat")
RegisterUnitEvent(20162, 3, "Veronia_OnKilledTarget")
RegisterUnitEvent(20162, 4, "Veronia_OnDied")

--[[ Netherstorm -- Void Conduit.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 27th, 2008. ]]

function Conduit_OnCombat(Unit, Event)
Unit:RegisterEvent("Conduit_Dummy", 9000, 0)
end

function Conduit_Dummy(pUnit, Event) 
pUnit:FullCastSpellOnTarget(36780, pUnit:GetMainTank()) 
end

function Conduit_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Conduit_OnDied(Unit, Event) 
Unit:RemoveEvents()
end



RegisterUnitEvent(20899, 1, "Conduit_OnCombat")
RegisterUnitEvent(20899, 2, "Conduit_OnLeaveCombat")
RegisterUnitEvent(20899, 3, "Conduit_OnKilledTarget")
RegisterUnitEvent(20899, 4, "Conduit_OnDied")

--[[ Netherstorm -- Void Waste.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 27th, 2008. ]]

function Waste_OnCombat(Unit, Event)
Unit:RegisterEvent("Waste_Toxic", 3000, 0)
end

function Waste_Toxic(pUnit, Event) 
pUnit:FullCastSpellOnTarget(36519, pUnit:GetMainTank()) 
end

function Waste_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Waste_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Waste_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(20778, 1, "Waste_OnCombat")
RegisterUnitEvent(20778, 2, "Waste_OnLeaveCombat")
RegisterUnitEvent(20778, 3, "Waste_OnKilledTarget")
RegisterUnitEvent(20778, 4, "Waste_OnDied")

--[[ Netherstorm -- Voidshrieker.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 27th, 2008. ]]

function Voidshrieker_OnCombat(Unit, Event)
Unit:RegisterEvent("Voidshrieker_Spawn", 8000, 0)
Unit:RegisterEvent("Voidshrieker_Bolt", 6000, 0)
end

function Voidshrieker_Spawn(pUnit, Event) 
pUnit:CastSpell(34302) 
end

function Voidshrieker_Bolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(34344, pUnit:GetMainTank()) 
end

function Voidshrieker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Voidshrieker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Voidshrieker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(18870, 1, "Voidshrieker_OnCombat")
RegisterUnitEvent(18870, 2, "Voidshrieker_OnLeaveCombat")
RegisterUnitEvent(18870, 3, "Voidshrieker_OnKilledTarget")
RegisterUnitEvent(18870, 4, "Voidshrieker_OnDied")

--[[ Netherstorm -- Warden Aberration.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 27th, 2008. ]]

function Aberration_OnCombat(Unit, Event)
Unit:RegisterEvent("Aberration_Shield", 1000, 1)
Unit:RegisterEvent("Aberration_Storm", 20000, 0)
end

function Aberration_Shield(pUnit, Event) 
pUnit:CastSpell(36640) 
end

function Aberration_Storm(pUnit, Event) 
    local x = pUnit:GetX()
	local y = pUnit:GetY()
	local z = pUnit:GetZ()
	local o = pUnit:GetO()
    pUnit:CastSpell(36577)
    pUnit:SpawnCreature(21322, x-1, y, z, o, 14, o)
end

function Aberration_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Aberration_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Aberration_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(18865, 1, "Aberration_OnCombat")
RegisterUnitEvent(18865, 2, "Aberration_OnLeaveCombat")
RegisterUnitEvent(18865, 3, "Aberration_OnKilledTarget")
RegisterUnitEvent(18865, 4, "Aberration_OnDied")

--[[ Netherstorm -- Warden Chaser.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 27th, 2008. ]]

function Chaser_OnCombat(Unit, Event)
Unit:RegisterEvent("Chaser_Invisible", 15000, 0)
Unit:RegisterEvent("Chaser_Bite", 4000, 0)
Unit:RegisterEvent("Chaser_Warp", 7000, 0)
Unit:RegisterEvent("Chaser_WarpCharge", 5000, 0)
end

function Chaser_Invisible(pUnit, Event) 
pUnit:CastSpell(32943) 
end

function Chaser_Bite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32739, pUnit:GetMainTank()) 
end

function Chaser_Warp(pUnit, Event) 
pUnit:CastSpell(32920) 
end

function Chaser_WarpCharge(pUnit, Event) 
pUnit:FullCastSpellOnTarget(37417, pUnit:GetMainTank()) 
end

function Chaser_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Chaser_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Chaser_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(18884, 1, "Chaser_OnCombat")
RegisterUnitEvent(18884, 2, "Chaser_OnLeaveCombat")
RegisterUnitEvent(18884, 3, "Chaser_OnKilledTarget")
RegisterUnitEvent(18884, 4, "Chaser_OnDied")

--[[ Netherstorm -- Warden Icoshock.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 27th, 2008. ]]

function Icoshock_OnCombat(Unit, Event)
Unit:RegisterEvent("Icoshock_Surge", 7000, 0)
Unit:RegisterEvent("Icoshock_Drain", 1000, 1)
end

function Icoshock_Surge(pUnit, Event) 
pUnit:FullCastSpellOnTarget(36517, pUnit:GetMainTank()) 
end

function Icoshock_Drain(pUnit, Event) 
pUnit:CastSpell(36515) 
end

function Icoshock_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Icoshock_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Icoshock_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(20770, 1, "Icoshock_OnCombat")
RegisterUnitEvent(20770, 2, "Icoshock_OnLeaveCombat")
RegisterUnitEvent(20770, 3, "Icoshock_OnKilledTarget")
RegisterUnitEvent(20770, 4, "Icoshock_OnDied")

--[[ Netherstorm -- Warden Monstrosity.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 27th, 2008. ]]

function Monstrosity_OnCombat(Unit, Event)
Unit:RegisterEvent("Monstrosity_Arcane", 6000, 0)
Unit:RegisterEvent("Monstrosity_Storm", 20000, 0)
end

function Monstrosity_Arcane(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13901, pUnit:GetMainTank()) 
end

function Monstrosity_Storm(pUnit, Event) 
    local x = pUnit:GetX()
	local y = pUnit:GetY()
	local z = pUnit:GetZ()
	local o = pUnit:GetO()
    pUnit:CastSpell(36577)
    pUnit:SpawnCreature(21322, x-1, y, z, o, 14, o)
end

function Monstrosity_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Monstrosity_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Monstrosity_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(20516, 1, "Monstrosity_OnCombat")
RegisterUnitEvent(20516, 2, "Monstrosity_OnLeaveCombat")
RegisterUnitEvent(20516, 3, "Monstrosity_OnKilledTarget")
RegisterUnitEvent(20516, 4, "Monstrosity_OnDied")

--[[ Netherstorm -- Warp-Gate Engineer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 27th, 2008. ]]


function Engineer_OnCombat(Unit, Event)
Unit:RegisterEvent("Engineer_Swipe", 6000, 0)
end

function Engineer_Swipe(pUnit, Event) 
pUnit:FullCastSpellOnTarget(35147, pUnit:GetMainTank()) 
end

function Engineer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Engineer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Engineer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(20404, 1, "Engineer_OnCombat")
RegisterUnitEvent(20404, 2, "Engineer_OnLeaveCombat")
RegisterUnitEvent(20404, 3, "Engineer_OnKilledTarget")
RegisterUnitEvent(20404, 4, "Engineer_OnDied")

--[[ Netherstorm -- Warp-Raider Nesaad.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 27th, 2008. ]]

function Nesaad_OnCombat(Unit, Event)
Unit:RegisterEvent("Nesaad_Flux", 7000, 0)
end

function Nesaad_Flux(pUnit, Event) 
pUnit:CastSpell(35924) 
end

function Nesaad_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Nesaad_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Nesaad_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(19641, 1, "Nesaad_OnCombat")
RegisterUnitEvent(19641, 2, "Nesaad_OnLeaveCombat")
RegisterUnitEvent(19641, 3, "Nesaad_OnKilledTarget")
RegisterUnitEvent(19641, 4, "Nesaad_OnDied")

--[[ Netherstorm -- Withered Corpse.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 27th, 2008. ]]

function Corpse_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Corpse_Rend",15000,0)
    pUnit:RegisterEvent("Corpse_Parasite_Spell",6000,0)
    pUnit:RegisterEvent("Corpse_Parasite_Spawn",36000,0)
end

function Corpse_Rend(pUnit,Event)
    pUnit:FullCastSpellOnTarget(13443,pUnit:GetMainTank())
end

function Corpse_Parasite_Spell(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36469,pUnit:GetRandomPlayer(0))
end

function Corpse_Parasite_Spawn(pUnit,Event)
    local x = pUnit:GetX()
	local y = pUnit:GetY()
	local z = pUnit:GetZ()
	local o = pUnit:GetO()
    pUnit:CastSpell(36468)
    pUnit:SpawnCreature(21265, x-1, y, z, o, 14, o)
end

function Corpse_OnLeaveCombat(pUnit,Event)
    pUnit:RemoveEvents()
end

function Corpse_OnKilledTarget(pUnit,Event)
    pUnit:RemoveEvents()
end

function Corpse_OnDied(pUnit,Event)
    pUnit:RemoveEvents()
end

RegisterUnitEvent(20561,1,"Corpse_OnEnterCombat")
RegisterUnitEvent(20561,2,"Corpse_OnLeaveCombat")
RegisterUnitEvent(20561,3,"Corpes_OnKilledTarget")
RegisterUnitEvent(20561,4,"Corpse_OnDied")

--[[ Netherstorm -- Wrath Lord.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 27th, 2008. ]]

function Lord_OnCombat(Unit, Event)
Unit:RegisterEvent("Lord_Cleave", 6000, 0)
end

function Lord_Cleave(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15496, pUnit:GetMainTank()) 
end

function Lord_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Lord_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Lord_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(20929, 1, "Lord_OnCombat")
RegisterUnitEvent(20929, 2, "Lord_OnLeaveCombat")
RegisterUnitEvent(20929, 3, "Lord_OnKilledTarget")
RegisterUnitEvent(20929, 4, "Lord_OnDied")

--[[ Netherstorm -- Wrath Priestess.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 27th, 2008. ]]

function Priestess_OnCombat(Unit, Event)
Unit:RegisterEvent("Priestess_Rain", 9000, 0)
end

function Priestess_Rain(pUnit, Event) 
pUnit:CastSpell(34017) 
end

function Priestess_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Priestess_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Priestess_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(18859, 1, "Priestess_OnCombat")
RegisterUnitEvent(18859, 2, "Priestess_OnLeaveCombat")
RegisterUnitEvent(18859, 3, "Priestess_OnKilledTarget")
RegisterUnitEvent(18859, 4, "Priestess_OnDied")

--[[ Netherstorm -- Wrathbringer Laz-tarash.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 27th, 2008. ]]

function Laztarash_OnCombat(Unit, Event)
Unit:RegisterEvent("Laztarash_Hamstring", 8000, 0)
end

function Laztarash_Hamstring(pUnit, Event) 
pUnit:FullCastSpellOnTarget(31553, pUnit:GetMainTank()) 
end

function Laztarash_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Laztarash_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Laztarash_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(20789, 1, "Laztarash_OnCombat")
RegisterUnitEvent(20789, 2, "Laztarash_OnLeaveCombat")
RegisterUnitEvent(20789, 3, "Laztarash_OnKilledTarget")
RegisterUnitEvent(20789, 4, "Laztarash_OnDied")

--[[ Netherstorm -- Zaxxis Raider.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 27th, 2008. ]]

function Raider_OnCombat(Unit, Event)
Unit:RegisterEvent("Raider_Energy", 8000, 0)
end

function Raider_Energy(pUnit, Event) 
pUnit:CastSpell(35922) 
end

function Raider_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Raider_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Raider_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(18875, 1, "Raider_OnCombat")
RegisterUnitEvent(18875, 2, "Raider_OnLeaveCombat")
RegisterUnitEvent(18875, 3, "Raider_OnKilledTarget")
RegisterUnitEvent(18875, 4, "Raider_OnDied")

--[[ Netherstorm -- Zaxxis Stalker.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 27th, 2008. ]]

function Stalker_OnCombat(Unit, Event)
Unit:RegisterEvent("Stalker_Backstab", 6000, 0)
Unit:RegisterEvent("Stalker_Warp", 8000, 0)
end

function Stalker_Backstab(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7159, pUnit:GetMainTank()) 
end

function Stalker_Warp(pUnit, Event) 
pUnit:CastSpell(32920) 
end

function Stalker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Stalker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Stalker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(19642, 1, "Stalker_OnCombat")
RegisterUnitEvent(19642, 2, "Stalker_OnLeaveCombat")
RegisterUnitEvent(19642, 3, "Stalker_OnKilledTarget")
RegisterUnitEvent(19642, 4, "Stalker_OnDied")

--[[ Netherstorm -- Apex.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 21th, 2008. ]]

function Apex_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Apex_Thunderclap",1000,0)
end

function Apex_Thunderclap(pUnit,Event)
    pUnit:FullCastSpellOnTraget(8078, pUnit:GetClosestPlayer())
end

function Apex_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Apex_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (19940, 1, "Apex_OnEnterCombat")
RegisterUnitEvent (19940, 2, "Apex_OnLeaveCombat")
RegisterUnitEvent (19940, 4, "Apex_OnDied")

--[[ Netherstorm -- Arcane Annihilator.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 21th, 2008. ]]

function Annihilator_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Annihilator_Explosion",1500,0)
    pUnit:RegisterEvent("Annihilator_Suppression",3000,0)
end

function Annihilator_Explosion(pUnit,Event)
    pUnit:FullCastSpellOnTarget(33860, pUnit:GetClosestPlayer())
end

function Annihilator_Suppression(pUnit,Event)
    pUnit:FullCastSpellOnTarget(35892, pUnit:GetClosestPlayer())
end

function Annihilator_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Annihilator_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (18856, 1, "Annihilator_OnEnterCombat")
RegisterUnitEvent (18856, 2, "Annihilator_OnLeaveCombat")
RegisterUnitEvent (18856, 4, "Annihilator_OnDied")

--[[ Netherstorm -- Area 52 Big Bruiser.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 21th, 2008. ]]

function Bruiser_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Bruiser_Net",1000,0)
end

function Bruiser_Net(pUnit,Event)
    pUnit:FullCastSpellOnTarget(12024, pUnit:GetClosestPlayer())
end

function Bruiser_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Bruiser_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20484, 1, "Bruiser_OnEnterCombat")
RegisterUnitEvent (20484, 2, "Bruiser_OnLeaveCombat")
RegisterUnitEvent (20484, 4, "Bruiser_OnDied")

--[[ Netherstorm -- Area 52 Death Machine.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 21th, 2008. ]]

function Machine_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Machine_Rocket",2000,0)
end

function Machine_Rocket(pUnit,Event)
    pUnit:FullCastSpellOnTarget(38083, pUnit:GetClosestPlayer())
end

function Machine_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Machine_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (21976, 1, "Machine_OnEnterCombat")
RegisterUnitEvent (21976, 2, "Machine_OnLeaveCombat")
RegisterUnitEvent (21976, 4, "Machine_OnDied")

--[[ Netherstorm -- Area 52 Bruiser.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 21th, 2008. ]]

function Bruiser_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Bruiser_Net",1000,0)
end

function Bruiser_Net(pUnit,Event)
    pUnit:FullCastSpellOnTarget(12024, pUnit:GetClosestPlayer())
end

function Bruiser_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Bruiser_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20485, 1, "Bruiser_OnEnterCombat")
RegisterUnitEvent (20485, 2, "Bruiser_OnLeaveCombat")
RegisterUnitEvent (20485, 4, "Bruiser_OnDied")

--[[ Netherstorm -- Cosmowrench Bruiser.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 24th, 2008. ]]

function Bruiser_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Bruiser_Net",1000,0)
end

function Bruiser_Net(pUnit,Event)
    pUnit:FullCastSpellOnTarget(12024,pUnit:GetClosestPlayer())
end

function Bruiser_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Bruiser_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (22494,1,"Bruiser_OnEnterCombat")
RegisterUnitEvent (22494,2,"Bruiser_OnLeaveCombat")
RegisterUnitEvent (22494,4,"Bruiser_OnDied")

--[[ Netherstorm -- Cragskaar.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 24th, 2008. ]]

function Cragskaar_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Cragskaar_Knock",45000,0)
end

function Cragskaar_Knock(pUnit,Event)
    pUnit:FullCastSpellOnTarget(32959, pUnit:GetClosestPlayer())
end

function Cragskaar_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Cragskaar_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20202, 1, "Cragskaar_OnEnterCombat")
RegisterUnitEvent (20202, 2, "Cragskaar_OnLeaveCombat")
RegisterUnitEvent (20202, 4, "Cragskaar_OnDied")

--[[ Netherstorm -- Ever-Core the Punisher.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 29th, 2008. ]]

function Punisher_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Punisher_Explosion",1500,0)
    pUnit:RegisterEvent("Punisher_Suppression",3000,0)
end

function Punisher_Explosion(pUnit,Event)
    pUnit:FullCastSpellOnTarget(33860,pUnit:GetClosestPlayer())
end

function Punisher_Suppression(pUnit,Event)
    pUnit:FullCastSpellOnTarget(35892,pUnit:GetClosestPlayer())
end

function Punisher_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Punisher_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (18698, 1, "Punisher_OnEnterCombat")
RegisterUnitEvent (18698, 2, "Punisher_OnLeaveCombat")
RegisterUnitEvent (18698, 4, "Punisher_OnDied")

--[[ Netherstorm -- Forgemaster Morug.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 29th, 2008. ]]

function Morug_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Morug_Blade",1500,0)
    pUnit:RegisterEvent("Morug_Spray",1000,0)
end

function Morug_Blade(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36228,pUnit:GetClosestPlayer())
end

function Morug_Spray(pUnit,Event)
    pUnit:FullCastSpellOnTarget(34261,pUnit:GetClosestPlayer())
end

function Morug_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Morug_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20800, 1, "Morug_OnEnterCombat")
RegisterUnitEvent (20800, 2, "Morug_OnLeaveCombat")
RegisterUnitEvent (20800, 4, "Morug_OnDied")

--[[ Netherstorm -- Kaylaan the Lost.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, August, 2th, 2008. ]]

function Kaylannl_OnEnterCombat(pUnit,Event)
    if pUnit:GetHealthPct() == 99 then
    pUnit:RegisterEvent("Kaylannl_Phase1",1000,0)
end
end
    
function Kaylannl_Phase1(pUnit,Event)
    pUnit:RegisterEvent("Kaylaanl_Ressurection",15000,0)
    pUnit:RegisterEvent("Kaylaanl_Shield",18000,0)
    pUnit:RegisterEvent("Kaylannl_Light",5000,0)
    pUnit:RegisterEvent("Kaylannl_Power",6000,0)
    pUnit:RegisterEvent("Kaylannl_Consecration",6000,0)
    pUnit:RegisterEvent("Kaylannl_Shield2",25000,0)
    pUnit:RegisterEvent("Kaylannl_Heal",7000,0)
    pUnit:RegisterEvent("Kaylannl_Slam",7000,0)
    pUnit:RegisterEvent("Kaylannl_Wrath",25000,0)
    pUnit:RegisterEvent("Kaylannl_Despawn",1000,0)
end

function Kaylannl_Ressurection(pUnit,Event)
    pUnit:FullCastSpellOnTarget(35599,pUnit:GetRandomFriend(0))
end

function Kaylannl_Shield(pUnit,Event)
    pUnit:FullCastSpellOnTarget(37554,pUnit:GetRandomPlayer(0))
end

function Kaylannl_Light(pUnit,Event)
    pUnit:FullCastSpellOnTarget(37552,pUnit:GetMainTank())
end

function Kaylannl_Power(pUnit,Event)
    local plr = pUnit:GetRandomPlayer(0)
		if plr ~= nil then
			pUnit:ChannelSpell(plr:GetGUID(),35597)
    end
end

function Kaylannl_Consecration(pUnit,Event)
    pUnit:CastSpell(37553)
end

function Kaylannl_Shield2(pUnit,Event)
    pUnit:CastSpell(13874)
end

function Kaylannl_Heal(pUnit,Event)
    pUnit:CastSpellOnTarget(37569,pUnit:GetRandomFriend(0))
end

function Kaylannl_Slam(pUnit,Event)
    pUnit:FullCastSpellOnTarget(37572,pUnit:GetMainTank())
end

function Kaylannl_Wrath(pUnit,Event)
    pUnit:FullCastSpellOnTarget(35614,pUnit:GetRandomPlayer(0))
end

function Kaylannl_Despawn(pUnit,Event)
    if pUnit:GetHealthPct() == 25 then
    pUnit:Despawn(5000)
    local x = pUnit:GetX()
	local y = pUnit:GetY()
	local z = pUnit:GetZ()
	local o = pUnit:GetO()
    pUnit:SpawnCreature(20132, x-1, y, z, o, 14, o)
end
end

function Kaylannl_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Kaylannl_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20794, 1, "Kaylannl_OnEnterCombat")
RegisterUnitEvent (20794, 2, "Kaylannl_OnLeaveCombat")
RegisterUnitEvent (20794, 4, "Kaylannl_OnDied")

--[[ Netherstorm -- Naberius.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, August, 2th, 2008. ]]

function Naberius_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Naberius_Nova",1000,0)
    pUnit:RegisterEvent("Naberius_Bolt",3000,0)
end

function Naberius_Nova(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36148,pUnit:GetClosestPlayer())
end

function Naberius_Bolt(pUnit,Event)
    pUnit:FullCastSpellOnTarget(15497,pUnit:GetClosestPlayer())
end

function Naberius_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Naberius_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20483, 1, "Naberius_OnEnterCombat")
RegisterUnitEvent (20483, 2, "Naberius_OnLeaveCombat")
RegisterUnitEvent (20483, 4, "Naberius_OnDied")

--[[ Netherstorm -- Negatron.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 29th, 2008. ]]

function Negatron_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Negatron_Charge",1000,(1))
    pUnit:RegisterEvent("Negatron_Demolish",1000,0)
    pUnit:RegisterEvent("Negatron_Quake",1000,0)
    pUnit:RegisterEvent("Negatron_Enrage",1000,0)
end

function Negatron_Charge(pUnit,Event)
    pUnit:FullCastSpellOnTarget(35570,pUnit:GetClosestPlayer())
end

function Negatron_Demolish(pUnit,Event)
    pUnit:FullCastSpellOnTarget(34625,pUnit:GetClosestPlayer())
end

function Negatron_Quake(pUnit,Event)
    pUnit:FullCastSpellOnTarget(35565,pUnit:GetClosestPlayer())
end

function Negatron_Enrage(pUnit,Event)
    pUnit:CastSpell(34624)
end

function Negatron_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Negatron_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (19851, 1, "Negatron_OnEnterCombat")
RegisterUnitEvent (19851, 2, "Negatron_OnLeaveCombat")
RegisterUnitEvent (19851, 4, "Negatron_OnDied")

--[[ Netherstorm -- Stormspire Nexus-Guard.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 26th, 2008. ]]

function Guard_OnCombat(pUnit, Event)
pUnit:RegisterEvent("Guard_Cleave", 5000, 0)
pUnit:RegisterEvent("Guard_Hamstring", 6000, 0)
pUnit:RegisterEvent("Guard_Mortal_Strike", 7000, 0)
end

function Guard_OnLeaveCombat(pUnit, Event)
pUnit:RemoveEvents()
end

function Guard_OnKillTarget(pUnit, Event)
pUnit:RemoveEvents()
end

function Guard_OnDeath(pUnit, Event)
pUnit:RemoveEvents()
end

RegisterUnitEvent(19529, 1, "Guard_OnCombat")
RegisterUnitEvent(19529, 2, "Guard_OnLeaveCombat")
RegisterUnitEvent(19529, 3, "Guard_OnKillTarget")
RegisterUnitEvent(19529, 4, "Guard_OnDeath")

function Guard_Cleave(pUnit, Event)
pUnit:FullCastSpellOnTarget(15284, GetMainTank())
end

function Guard_Hamstring(pUnit, Event)
pUnit:FullCastSpellOnTarget(9080, GetMainTank())
end

function Guard_Mortal_Strike(pUnit, Event)
pUnit:FullCastSpellOnTarget(16856, GetMainTank())
end

--[[ Netherstorm -- Netherstorm Agent.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, September, 29th, 2008. ]]

function Agent_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Agent_Shoot",1000,0)
end

function Agent_Shoot(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36246,pUnit:GetClosestPlayer())
end

function Agent_OnLeaveCombat(Unit,Event)
	Unit:RemoveEvents()
end

function Agent_OnDied(Unit,Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent (19541, 1, "Agent_OnEnterCombat")
RegisterUnitEvent (19541, 2, "Agent_OnLeaveCombat")
RegisterUnitEvent (19541, 4, "Agent_OnDied")

--[[ Netherstorm -- Nexus-King Salhadaar.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, September, 29th, 2008. ]]

function King_OnEnterCombat(pUnit,Event)
    if Unit:GetHealthPct() == 99 then
    pUnit:RegisterEvent("King_Phase1",1000,0)
end
end

function King_Phase1(pUnit,Event)
    pUnit:RegisterEvent("King_Damagebuff",1000,(1))
    pUnit:RegisterEvent("King_Gravity",2500,0)
    pUnit:RegisterEvent("King_Statis",12000,0)
    pUnit:RegisterEvent("King_Phase2",1000,0)
end

function King_Dambagebuff(pUnit,Event)
    pUnit:CastSpell(37075)
end   
   
function King_Gravity(pUnit,Event)
    pUnit:CastSpell(36533)
end

function King_Statis(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36527,pUnit:GetRandomPlayer(0))
    pUnit:FullCastSpellOnTarget(36527,pUnit:GetRandomPlayer(0))
end

function King_Phase2(pUnit,Event)
    if pUnit:GetHealthPct() == 50 then
    pUnit:RegisterEvent("King_Damagebuff",1000,(1))
    pUnit:RegisterEvent("King_Gravity",2500,0)
    pUnit:RegisterEvent("King_Statis",6000,0)
    pUnit:RegisterEvent("King_Mirror1",1000,(1))
    pUnit:RegisterEvent("King_Mirror2",1000,(1))
end
end
    

function King_Mirror1(pUnit,Event)
    local x = pUnit:GetX()
	local y = pUnit:GetY()
	local z = pUnit:GetZ()
	local o = pUnit:GetO()
    pUnit:CastSpell(36847)
    pUnit:SpawnCreature(21425, x-1, y, z, o, 14, o)
end

function King_Mirror2(pUnit,Event)
    local x = pUnit:GetX()
	local y = pUnit:GetY()
	local z = pUnit:GetZ()
	local o = pUnit:GetO()
    pUnit:CastSpell(36848)
    pUnit:SpawnCreature(21425, x-1, y, z, o, 14, o)
end
    
function King_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function King_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20454, 1, "King_OnEnterCombat")
RegisterUnitEvent (20454, 2, "King_OnLeaveCombat")
RegisterUnitEvent (20454, 4, "King_OnDied")

--[[ Netherstorm -- Silroth.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, September, 30th, 2008. ]]

function Silroth_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Silroth_Flames1",10000,0)
    pUnit:RegisterEvent("Silroth_Flames2",2000,0)
end

function Silroth_Flames1(pUnit,Event)
    pUnit:CastSpell(36253)
end   

function Silroth_Flames2(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36252,pUnit:GetMainTank())
end

function Silroth_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Silroth_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20801, 1, "Silroth_OnEnterCombat")
RegisterUnitEvent (20801, 2, "Silroth_OnLeaveCombat")
RegisterUnitEvent (20801, 4, "Silroth_OnDied")

--[[ Netherstorm -- Socrethar.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 01th, 2008. ]]

function Socrethar_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Socrethar_Shield",10000,0)
    pUnit:RegisterEvent("Socrethar_Backslash",5000,0)
    pUnit:RegisterEvent("Socrethar_Cleave",6000,0)
    pUnit:RegisterEvent("Socrethar_Barrage",10000,0)
    pUnit:RegisterEvent("Socrethar_Protection",1000,(1))
    pUnit:RegisterEvent("Socrethar_Bolt",3000,0)
end

function Socrethar_Shield(pUnit,Event)
    pUnit:CastSpell(37538)
end

function Socrethar_Backslash(pUnit,Event)
    pUnit:FullCastSpellOnTarget(37537,pUnit:GetRandomPlayer(0))
end

function Socrethar_Cleave(pUnit,Event)
    pUnit:FullCastSpellOnTarget(15496,pUnit:GetMainTank())
end

function Socrethar_Barrage(pUnit,Event)
    pUnit:CastSpell(37541)
    local plr = pUnit:GetRandomPlayer()
    if plr ~= nil then
    pUnit:ChannelSpell(plr:GetGUID(),37540)
end
end

function Socrethar_Protection(pUnit,Event)
    pUnit:CastSpell(37539)
end

function Socrethar_Bolt(pUnit,Event)
    pUnit:FullCastSpellOnTarget(28448,pUnit:GetRandomPlayer(0))
end

function Socrethar_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Socrethar_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20132, 1, "Socrethar_OnEnterCombat")
RegisterUnitEvent (20132, 2, "Socrethar_OnLeaveCombat")
RegisterUnitEvent (20132, 4, "Socrethar_OnDied")

--[[ Netherstorm -- Nuramoc.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, September, 29th, 2008. ]]

function Nuramoc_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Nuramoc_Lightning",2000,0)
    pUnit:RegisterEvent("Nuramoc_Bolt",4000,0)
    pUnit:RegisterEvent("Nuramoc_Shield",5000,0)
end

function Nuramoc_Lightning(pUnit,Event)
    pUnit:FullCastSpellOnTarget(15797,pUnit:GetClosestPlayer())
end   
   
function Nuramoc_Bolt(pUnit,Event)
    pUnit:FullCastSpellOnTarget(21971,pUnit:GetClosestPlayer())
end

function Nuramoc_Shield(pUnit,Event)
    pUnit:CastSpell(38905)
end
    
function Nuramoc_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Nuramoc_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20932, 1, "Nuramoc_OnEnterCombat")
RegisterUnitEvent (20932, 2, "Nuramoc_OnLeaveCombat")
RegisterUnitEvent (20932, 4, "Nuramoc_OnDied")


--[[ ALL CREDITS GO TO BLUA SCRIPTING AND THE
                 WRITER OF THESE SCRIPTS BLACKHER0 
    BlackHer0, Oktober, 29th, 2008. --]]