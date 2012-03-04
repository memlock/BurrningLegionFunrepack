--[[ Teldrassil -- Ancient Protector.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function AncientProtector_OnCombat(Unit, Event)
Unit:RegisterEvent("AncientProtector_EntanglingRoots", 10000, 0)
Unit:RegisterEvent("AncientProtector_WarStomp", 6000, 0)
end

function AncientProtector_EntanglingRoots(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11922, pUnit:GetRandomPlayer(0)) 
end

function AncientProtector_WarStomp(pUnit, Event) 
pUnit:CastSpell(45) 
end

function AncientProtector_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AncientProtector_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AncientProtector_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2041, 1, "AncientProtector_OnCombat")
RegisterUnitEvent(2041, 2, "AncientProtector_OnLeaveCombat")
RegisterUnitEvent(2041, 3, "AncientProtector_OnKilledTarget")
RegisterUnitEvent(2041, 4, "AncientProtector_OnDied")


--[[ Teldrassil -- Bloodfeather Fury.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function BloodfeatherFury_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodfeatherFury_Savagery", 8000, 0)
end

function BloodfeatherFury_Savagery(pUnit, Event) 
pUnit:CastSpell(5515) 
end

function BloodfeatherFury_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodfeatherFury_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodfeatherFury_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2019, 1, "BloodfeatherFury_OnCombat")
RegisterUnitEvent(2019, 2, "BloodfeatherFury_OnLeaveCombat")
RegisterUnitEvent(2019, 3, "BloodfeatherFury_OnKilledTarget")
RegisterUnitEvent(2019, 4, "BloodfeatherFury_OnDied")


--[[ Teldrassil -- Bloodfeather Harpy.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function BloodfeatherHarpy_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodfeatherHarpy_BloodLeech", 6000, 0)
end

function BloodfeatherHarpy_BloodLeech(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6958, pUnit:GetMainTank()) 
end

function BloodfeatherHarpy_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodfeatherHarpy_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodfeatherHarpy_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2015, 1, "BloodfeatherHarpy_OnCombat")
RegisterUnitEvent(2015, 2, "BloodfeatherHarpy_OnLeaveCombat")
RegisterUnitEvent(2015, 3, "BloodfeatherHarpy_OnKilledTarget")
RegisterUnitEvent(2015, 4, "BloodfeatherHarpy_OnDied")


--[[ Teldrassil -- Bloodfeather Matriarch.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function BloodfeatherMatriarch_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodfeatherMatriarch_HealingWave", 12000, 0)
Unit:RegisterEvent("BloodfeatherMatriarch_LightningBolt", 8000, 0)
end

function BloodfeatherMatriarch_HealingWave(pUnit, Event) 
pUnit:CastSpell(332) 
end

function BloodfeatherMatriarch_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9532, pUnit:GetMainTank()) 
end

function BloodfeatherMatriarch_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodfeatherMatriarch_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodfeatherMatriarch_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2021, 1, "BloodfeatherMatriarch_OnCombat")
RegisterUnitEvent(2021, 2, "BloodfeatherMatriarch_OnLeaveCombat")
RegisterUnitEvent(2021, 3, "BloodfeatherMatriarch_OnKilledTarget")
RegisterUnitEvent(2021, 4, "BloodfeatherMatriarch_OnDied")


--[[ Teldrassil -- Bloodfeather Sorceress.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function BloodfeatherSorceress_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodfeatherSorceress_FrostArmor", 2000, 2)
Unit:RegisterEvent("BloodfeatherSorceress_Fireball", 8000, 0)
end

function BloodfeatherSorceress_FrostArmor(pUnit, Event) 
pUnit:CastSpell(12544) 
end

function BloodfeatherSorceress_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20793, pUnit:GetMainTank()) 
end

function BloodfeatherSorceress_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodfeatherSorceress_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodfeatherSorceress_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2018, 1, "BloodfeatherSorceress_OnCombat")
RegisterUnitEvent(2018, 2, "BloodfeatherSorceress_OnLeaveCombat")
RegisterUnitEvent(2018, 3, "BloodfeatherSorceress_OnKilledTarget")
RegisterUnitEvent(2018, 4, "BloodfeatherSorceress_OnDied")


--[[ Teldrassil -- Bloodfeather Wind Witch.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function BloodfeatherWindWitch_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodfeatherWindWitch_GustofWind", 8000, 0)
end

function BloodfeatherWindWitch_GustofWind(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6982, pUnit:GetMainTank()) 
end

function BloodfeatherWindWitch_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodfeatherWindWitch_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodfeatherWindWitch_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2020, 1, "BloodfeatherWindWitch_OnCombat")
RegisterUnitEvent(2020, 2, "BloodfeatherWindWitch_OnLeaveCombat")
RegisterUnitEvent(2020, 3, "BloodfeatherWindWitch_OnKilledTarget")
RegisterUnitEvent(2020, 4, "BloodfeatherWindWitch_OnDied")


--[[ Teldrassil -- Dark Sprite.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function DarkSprite_OnCombat(Unit, Event)
Unit:RegisterEvent("DarkSprite_DarkenVision", 8000, 0)
end

function DarkSprite_DarkenVision(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5514, pUnit:GetMainTank()) 
end

function DarkSprite_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DarkSprite_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DarkSprite_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2004, 1, "DarkSprite_OnCombat")
RegisterUnitEvent(2004, 2, "DarkSprite_OnLeaveCombat")
RegisterUnitEvent(2004, 3, "DarkSprite_OnKilledTarget")
RegisterUnitEvent(2004, 4, "DarkSprite_OnDied")


--[[ Teldrassil -- Duskstalker.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function Duskstalker_OnCombat(Unit, Event)
Unit:RegisterEvent("Duskstalker_TendonRip", 8000, 0)
end

function Duskstalker_TendonRip(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3604, pUnit:GetMainTank()) 
end

function Duskstalker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Duskstalker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Duskstalker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(14430, 1, "Duskstalker_OnCombat")
RegisterUnitEvent(14430, 2, "Duskstalker_OnLeaveCombat")
RegisterUnitEvent(14430, 3, "Duskstalker_OnKilledTarget")
RegisterUnitEvent(14430, 4, "Duskstalker_OnDied")


--[[ Teldrassil -- Elder Timberling.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function ElderTimberling_OnCombat(Unit, Event)
Unit:RegisterEvent("ElderTimberling_HealingWave", 12000, 0)
Unit:RegisterEvent("ElderTimberling_LightningShield", 4000, 0)
end

function ElderTimberling_HealingWave(pUnit, Event) 
pUnit:CastSpell(332) 
end

function ElderTimberling_LightningShield(pUnit, Event) 
pUnit:CastSpell(324) 
end

function ElderTimberling_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ElderTimberling_OnDied(Unit, Event) 
Unit:RemoveEvents()
end



RegisterUnitEvent(2030, 1, "ElderTimberling_OnCombat")
RegisterUnitEvent(2030, 2, "ElderTimberlingElderTimberling_OnLeaveCombat")
RegisterUnitEvent(2030, 3, "ElderTimberling_OnKilledTarget")
RegisterUnitEvent(2030, 4, "ElderTimberling_OnDied")


--[[ Teldrassil -- Feral Nightsaber.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function FeralNightsaber_OnCombat(Unit, Event)
Unit:RegisterEvent("FeralNightsaber_MuscleTear", 8000, 0)
end

function FeralNightsaber_MuscleTear(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12166, pUnit:GetMainTank()) 
end

function FeralNightsaber_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FeralNightsaber_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FeralNightsaber_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2034, 1, "FeralNightsaber_OnCombat")
RegisterUnitEvent(2034, 2, "FeralNightsaber_OnLeaveCombat")
RegisterUnitEvent(2034, 3, "FeralNightsaber_OnKilledTarget")
RegisterUnitEvent(2034, 4, "FeralNightsaber_OnDied")


--[[ Teldrassil -- Ferocitas the Dream Eater.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function FerocitastheDreamEater_OnCombat(Unit, Event)
Unit:RegisterEvent("FerocitastheDreamEater_Thrash", 5000, 0)
end

function FerocitastheDreamEater_Thrash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3391, pUnit:GetMainTank()) 
end

function FerocitastheDreamEater_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FerocitastheDreamEater_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FerocitastheDreamEater_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(7234, 1, "FerocitastheDreamEater_OnCombat")
RegisterUnitEvent(7234, 2, "FerocitastheDreamEater_OnLeaveCombat")
RegisterUnitEvent(7234, 3, "FerocitastheDreamEater_OnKilledTarget")
RegisterUnitEvent(7234, 4, "FerocitastheDreamEater_OnDied")


--[[ Teldrassil -- Fury Shelda.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function FuryShelda_OnCombat(Unit, Event)
Unit:RegisterEvent("FuryShelda_DeafeningScreech", 10000, 0)
end

function FuryShelda_DeafeningScreech(pUnit, Event) 
pUnit:CastSpell(3589) 
end

function FuryShelda_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FuryShelda_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FuryShelda_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(14431, 1, "FuryShelda_OnCombat")
RegisterUnitEvent(14431, 2, "FuryShelda_OnLeaveCombat")
RegisterUnitEvent(14431, 3, "FuryShelda_OnKilledTarget")
RegisterUnitEvent(14431, 4, "FuryShelda_OnDied")


--[[ Teldrassil -- Gnarlpine Augur.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function GnarlpineAugur_OnCombat(Unit, Event)
Unit:RegisterEvent("GnarlpineAugur_GnarlpineVengance", 8000, 0)
end

function GnarlpineAugur_GnarlpineVengance(pUnit, Event) 
pUnit:CastSpell(5628) 
end

function GnarlpineAugur_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GnarlpineAugur_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GnarlpineAugur_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2011, 1, "GnarlpineAugur_OnCombat")
RegisterUnitEvent(2011, 2, "GnarlpineAugur_OnLeaveCombat")
RegisterUnitEvent(2011, 3, "GnarlpineAugur_OnKilledTarget")
RegisterUnitEvent(2011, 4, "GnarlpineAugur_OnDied")


--[[ Teldrassil -- Gnarlpine Avenger.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function GnarlpineAvenger_OnCombat(Unit, Event)
Unit:RegisterEvent("GnarlpineAvenger_GnarlpineVengance", 8000, 0)
end

function GnarlpineAvenger_GnarlpineVengance(pUnit, Event) 
pUnit:CastSpell(5628) 
end

function GnarlpineAvenger_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GnarlpineAvenger_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GnarlpineAvenger_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2011, 1, "GnarlpineAvenger_OnCombat")
RegisterUnitEvent(2011, 2, "GnarlpineAvenger_OnLeaveCombat")
RegisterUnitEvent(2011, 3, "GnarlpineAvenger_OnKilledTarget")
RegisterUnitEvent(2011, 4, "GnarlpineAvenger_OnDied")


--[[ Teldrassil -- Gnarlpine Mystic.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function GnarlpineMystic_OnCombat(Unit, Event)
Unit:RegisterEvent("GnarlpineMystic_Wrath", 6000, 0)
end

function GnarlpineMystic_Wrath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9739, pUnit:GetMainTank()) 
end

function GnarlpineMystic_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GnarlpineMystic_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GnarlpineMystic_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(7235, 1, "GnarlpineMystic_OnCombat")
RegisterUnitEvent(7235, 2, "GnarlpineMystic_OnLeaveCombat")
RegisterUnitEvent(7235, 3, "GnarlpineMystic_OnKilledTarget")
RegisterUnitEvent(7235, 4, "GnarlpineMystic_OnDied")


--[[ Teldrassil -- Gnarlpine Pathfinder.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function GnarlpinePathfinder_OnCombat(Unit, Event)
Unit:RegisterEvent("GnarlpinePathfinder_GnarlpineVengeance", 10000, 0)
Unit:RegisterEvent("GnarlpinePathfinder_Wrath", 6000, 0)
end

function GnarlpinePathfinder_GnarlpineVengeance(pUnit, Event) 
pUnit:CastSpell(5628) 
end

function GnarlpinePathfinder_Wrath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9739, pUnit:GetMainTank()) 
end

function GnarlpinePathfinder_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GnarlpinePathfinder_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GnarlpinePathfinder_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2012, 1, "GnarlpinePathfinder_OnCombat")
RegisterUnitEvent(2012, 2, "GnarlpinePathfinder_OnLeaveCombat")
RegisterUnitEvent(2012, 3, "GnarlpinePathfinder_OnKilledTarget")
RegisterUnitEvent(2012, 4, "GnarlpinePathfinder_OnDied")


--[[ Teldrassil -- Gnarlpine Totemic.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function GnarlpineTotemic_OnCombat(Unit, Event)
Unit:RegisterEvent("GnarlpineTotemic_GnarlpineVengeance", 10000, 0)
Unit:RegisterEvent("GnarlpineTotemic_HealingWard", 12000, 0)
end

function GnarlpineTotemic_GnarlpineVengeance(pUnit, Event) 
pUnit:CastSpell(5628) 
end

function GnarlpineTotemic_HealingWard(pUnit, Event) 
pUnit:CastSpell(5605) 
end

function GnarlpineTotemic_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GnarlpineTotemic_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GnarlpineTotemic_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2014, 1, "GnarlpineTotemic_OnCombat")
RegisterUnitEvent(2014, 2, "GnarlpineTotemic_OnLeaveCombat")
RegisterUnitEvent(2014, 3, "GnarlpineTotemic_OnKilledTarget")
RegisterUnitEvent(2014, 4, "GnarlpineTotemic_OnDied")


--[[ Teldrassil -- Gnarlpine Warrior.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function GnarlpineWarrior_OnCombat(Unit, Event)
Unit:RegisterEvent("GnarlpineWarrior_Strike", 6000, 0)
end

function GnarlpineWarrior_Strike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11976, pUnit:GetMainTank()) 
end

function GnarlpineWarrior_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GnarlpineWarrior_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GnarlpineWarrior_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2008, 1, "GnarlpineWarrior_OnCombat")
RegisterUnitEvent(2008, 2, "GnarlpineWarrior_OnLeaveCombat")
RegisterUnitEvent(2008, 3, "GnarlpineWarrior_OnKilledTarget")
RegisterUnitEvent(2008, 4, "GnarlpineWarrior_OnDied")


--[[ Teldrassil -- Gnarlpine Greenpaw.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function Greenpaw_OnCombat(Unit, Event)
Unit:RegisterEvent("Greenpaw_Rejuvenation", 10000, 0)
Unit:RegisterEvent("Greenpaw_Shock", 6000, 0)
end

function Greenpaw_Rejuvenation(pUnit, Event) 
pUnit:CastSpell(774) 
end

function Greenpaw_Shock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(2606, pUnit:GetMainTank()) 
end

function Greenpaw_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Greenpaw_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Greenpaw_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(1993, 1, "Greenpaw_OnCombat")
RegisterUnitEvent(1993, 2, "Greenpaw_OnLeaveCombat")
RegisterUnitEvent(1993, 3, "Greenpaw_OnKilledTarget")
RegisterUnitEvent(1993, 4, "Greenpaw_OnDied")


--[[ Teldrassil -- Lord Melenas.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function LordMelenas_OnCombat(Unit, Event)
Unit:RegisterEvent("LordMelenas_CatForm", 1000, 1)
Unit:RegisterEvent("LordMelenas_Rake", 6000, 0)
Unit:RegisterEvent("LordMelenas_Rejuvenation", 12000, 0)
end

function LordMelenas_CatForm(pUnit, Event) 
pUnit:CastSpell(5759) 
end

function LordMelenas_Rake(pUnit, Event) 
pUnit:FullCastSpellOnTarget(1822, pUnit:GetMainTank()) 
end

function LordMelenas_Rejuvenation(pUnit, Event) 
pUnit:CastSpell(774) 
end

function LordMelenas_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LordMelenas_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LordMelenas_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2038, 1, "LordMelenas_OnCombat")
RegisterUnitEvent(2038, 2, "LordMelenas_OnLeaveCombat")
RegisterUnitEvent(2038, 3, "LordMelenas_OnKilledTarget")
RegisterUnitEvent(2038, 4, "LordMelenas_OnDied")


--[[ Teldrassil -- Moon Priestess Amara.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function MoonPriestessAmara_OnCombat(Unit, Event)
Unit:RegisterEvent("MoonPriestessAmara_Shoot", 6000, 0)
end

function MoonPriestessAmara_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(18561, pUnit:GetMainTank()) 
end

function MoonPriestessAmara_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MoonPriestessAmara_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MoonPriestessAmara_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2151, 1, "MoonPriestessAmara_OnCombat")
RegisterUnitEvent(2151, 2, "MoonPriestessAmara_OnLeaveCombat")
RegisterUnitEvent(2151, 3, "MoonPriestessAmara_OnKilledTarget")
RegisterUnitEvent(2151, 4, "MoonPriestessAmara_OnDied")


--[[ Teldrassil -- Rageclaw.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function Rageclaw_OnCombat(Unit, Event)
Unit:RegisterEvent("Rageclaw_BearForm", 1000, 1)
Unit:RegisterEvent("Rageclaw_Maul", 4000, 0)
end

function Rageclaw_BearForm(pUnit, Event) 
pUnit:CastSpell(7090) 
end

function Rageclaw_Maul(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12161, pUnit:GetMainTank()) 
end

function Rageclaw_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Rageclaw_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Rageclaw_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(7318, 1, "Rageclaw_OnCombat")
RegisterUnitEvent(7318, 2, "Rageclaw_OnLeaveCombat")
RegisterUnitEvent(7318, 3, "Rageclaw_OnKilledTarget")
RegisterUnitEvent(7318, 4, "Rageclaw_OnDied")


--[[ Teldrassil -- Rascal Sprite.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function RascalSprite_OnCombat(Unit, Event)
Unit:RegisterEvent("RascalSprite_FaerieFire", 1000, 1)
end

function RascalSprite_FaerieFire(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6950, pUnit:GetMainTank()) 
end

function RascalSprite_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RascalSprite_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RascalSprite_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2002, 1, "RascalSprite_OnCombat")
RegisterUnitEvent(2002, 2, "RascalSprite_OnLeaveCombat")
RegisterUnitEvent(2002, 3, "RascalSprite_OnKilledTarget")
RegisterUnitEvent(2002, 4, "RascalSprite_OnDied")


--[[ Teldrassil -- Shadow Sprite.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function ShadowSprite_OnCombat(Unit, Event)
Unit:RegisterEvent("ShadowSprite_ShadowBolt", 8000, 0)
end

function ShadowSprite_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9613, pUnit:GetMainTank()) 
end

function ShadowSprite_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ShadowSprite_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ShadowSprite_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2003, 1, "ShadowSprite_OnCombat")
RegisterUnitEvent(2003, 2, "ShadowSprite_OnLeaveCombat")
RegisterUnitEvent(2003, 3, "ShadowSprite_OnKilledTarget")
RegisterUnitEvent(2003, 4, "ShadowSprite_OnDied")


--[[ Teldrassil -- Threggil.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function Threggil_OnCombat(Unit, Event)
Unit:RegisterEvent("Threggil_Strike", 6000, 0)
end

function Threggil_Strike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11976, pUnit:GetMainTank()) 
end

function Threggil_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Threggil_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Threggil_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(14432, 1, "Threggil_OnCombat")
RegisterUnitEvent(14432, 2, "Threggil_OnLeaveCombat")
RegisterUnitEvent(14432, 3, "Threggil_OnKilledTarget")
RegisterUnitEvent(14432, 4, "Threggil_OnDied")


--[[ Teldrassil -- Timberling Bark Ripper.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function TimberlingBarkRipper_OnCombat(Unit, Event)
Unit:RegisterEvent("TimberlingBarkRipper_PierceArmor", 8000, 0)
end

function TimberlingBarkRipper_PierceArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6016, pUnit:GetMainTank()) 
end

function TimberlingBarkRipper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TimberlingBarkRipper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TimberlingBarkRipper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2025, 1, "TimberlingBarkRipper_OnCombat")
RegisterUnitEvent(2025, 2, "TimberlingBarkRipper_OnLeaveCombat")
RegisterUnitEvent(2025, 3, "TimberlingBarkRipper_OnKilledTarget")
RegisterUnitEvent(2025, 4, "TimberlingBarkRipper_OnDied")


--[[ Teldrassil -- Timberling Mire Beast.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function TimberlingMireBeast_OnCombat(Unit, Event)
Unit:RegisterEvent("TimberlingMireBeast_MiringMud", 8000, 0)
end

function TimberlingMireBeast_MiringMud(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5567, pUnit:GetMainTank()) 
end

function TimberlingMireBeast_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TimberlingMireBeast_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TimberlingMireBeast_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2029, 1, "TimberlingMireBeast_OnCombat")
RegisterUnitEvent(2029, 2, "TimberlingMireBeast_OnLeaveCombat")
RegisterUnitEvent(2029, 3, "TimberlingMireBeast_OnKilledTarget")
RegisterUnitEvent(2029, 4, "TimberlingMireBeast_OnDied")


--[[ Teldrassil -- Webwood Silkspinner.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function WebwoodSilkspinner_OnCombat(Unit, Event)
Unit:RegisterEvent("WebwoodSilkspinner_Web", 8000, 0)
end

function WebwoodSilkspinner_Web(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12023, pUnit:GetMainTank()) 
end

function WebwoodSilkspinner_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WebwoodSilkspinner_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WebwoodSilkspinner_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2000, 1, "WebwoodSilkspinner_OnCombat")
RegisterUnitEvent(2000, 2, "WebwoodSilkspinner_OnLeaveCombat")
RegisterUnitEvent(2000, 3, "WebwoodSilkspinner_OnKilledTarget")
RegisterUnitEvent(2000, 4, "WebwoodSilkspinner_OnDied")


--[[ Teldrassil -- Ursal the Mauler.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function UrsaltheMauler_OnCombat(Unit, Event)
Unit:RegisterEvent("UrsaltheMauler_Maul", 6000, 0)
end

function UrsaltheMauler_Maul(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15793, pUnit:GetMainTank()) 
end

function UrsaltheMauler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function UrsaltheMauler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function UrsaltheMauler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2039, 1, "UrsaltheMauler_OnCombat")
RegisterUnitEvent(2039, 2, "UrsaltheMauler_OnLeaveCombat")
RegisterUnitEvent(2039, 3, "UrsaltheMauler_OnKilledTarget")
RegisterUnitEvent(2039, 4, "UrsaltheMauler_OnDied")


--[[ Teldrassil -- Uruson.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function Uruson_OnCombat(Unit, Event)
Unit:RegisterEvent("Uruson_DemoralizingRoar", 10000, 0)
end

function Uruson_DemoralizingRoar(pUnit, Event) 
pUnit:CastSpell(15971) 
end

function Uruson_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Uruson_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Uruson_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(14428, 1, "Uruson_OnCombat")
RegisterUnitEvent(14428, 2, "Uruson_OnLeaveCombat")
RegisterUnitEvent(14428, 3, "Uruson_OnKilledTarget")
RegisterUnitEvent(14428, 4, "Uruson_OnDied")


--[[ Teldrassil -- Vicious Grell.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function ViciousGrell_OnCombat(Unit, Event)
Unit:RegisterEvent("ViciousGrell_Savagery", 8000, 0)
end

function ViciousGrell_Savagery(pUnit, Event) 
pUnit:CastSpell(5515) 
end

function ViciousGrell_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ViciousGrell_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ViciousGrell_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2005, 1, "ViciousGrell_OnCombat")
RegisterUnitEvent(2005, 2, "ViciousGrell_OnLeaveCombat")
RegisterUnitEvent(2005, 3, "ViciousGrell_OnKilledTarget")
RegisterUnitEvent(2005, 4, "ViciousGrell_OnDied")