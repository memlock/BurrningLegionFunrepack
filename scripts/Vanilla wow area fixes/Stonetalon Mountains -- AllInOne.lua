--[[ Stonetalon Mountains -- Antlered Courser.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function AntleredCourser_OnCombat(Unit, Event)
Unit:RegisterEvent("AntleredCourser_RushingCharge", 8000, 0)
end

function AntleredCourser_RushingCharge(pUnit, Event) 
pUnit:CastSpell(6268) 
end

function AntleredCourser_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AntleredCourser_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AntleredCourser_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4018, 1, "AntleredCourser_OnCombat")
RegisterUnitEvent(4018, 2, "AntleredCourser_OnLeaveCombat")
RegisterUnitEvent(4018, 3, "AntleredCourser_OnKilledTarget")
RegisterUnitEvent(4018, 4, "AntleredCourser_OnDied")

--[[ Stonetalon Mountains -- Besseleth.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function Besseleth_OnCombat(Unit, Event)
Unit:RegisterEvent("Besseleth_VenomSting", 10000, 0)
Unit:RegisterEvent("Besseleth_Web", 12000, 0)
end

function Besseleth_VenomSting(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5416, pUnit:GetMainTank()) 
end

function Besseleth_Web(pUnit, Event) 
pUnit:FullCastSpellOnTarget(745, pUnit:GetMainTank()) 
end

function Besseleth_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Besseleth_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Besseleth_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11921, 1, "Besseleth_OnCombat")
RegisterUnitEvent(11921, 2, "Besseleth_OnLeaveCombat")
RegisterUnitEvent(11921, 3, "Besseleth_OnKilledTarget")
RegisterUnitEvent(11921, 4, "Besseleth_OnDied")

--[[ Stonetalon Mountains -- Blackened Basilisk.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function BlackenedBasilisk_OnCombat(Unit, Event)
Unit:RegisterEvent("BlackenedBasilisk_CrystallineSlumber", 15000, 1)
end

function BlackenedBasilisk_CrystallineSlumber(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3636, pUnit:GetMainTank()) 
end

function BlackenedBasilisk_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BlackenedBasilisk_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BlackenedBasilisk_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4044, 1, "BlackenedBasilisk_OnCombat")
RegisterUnitEvent(4044, 2, "BlackenedBasilisk_OnLeaveCombat")
RegisterUnitEvent(4044, 3, "BlackenedBasilisk_OnKilledTarget")
RegisterUnitEvent(4044, 4, "BlackenedBasilisk_OnDied")

--[[ Stonetalon Mountains -- Bloodfury Ambusher.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function BloodfuryAmbusher_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodfuryAmbusher_Shock", 8000, 1)
end

function BloodfuryAmbusher_Shock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(2608, pUnit:GetMainTank()) 
end

function BloodfuryAmbusher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodfuryAmbusher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodfuryAmbusher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4025, 1, "BloodfuryAmbusher_OnCombat")
RegisterUnitEvent(4025, 2, "BloodfuryAmbusher_OnLeaveCombat")
RegisterUnitEvent(4025, 3, "BloodfuryAmbusher_OnKilledTarget")
RegisterUnitEvent(4025, 4, "BloodfuryAmbusher_OnDied")

--[[ Stonetalon Mountains -- Bloodfury Ripper.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function BloodfuryRipper_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodfuryRipper_Enrage", 15000, 1)
Unit:RegisterEvent("BloodfuryRipper_Rend", 10000, 0)
end

function BloodfuryRipper_Enrage(pUnit, Event) 
pUnit:CastSpell(8599) 
end

function BloodfuryRipper_Rend(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13443, pUnit:GetMainTank()) 
end

function BloodfuryRipper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodfuryRipper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodfuryRipper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12579, 1, "BloodfuryRipper_OnCombat")
RegisterUnitEvent(12579, 2, "BloodfuryRipper_OnLeaveCombat")
RegisterUnitEvent(12579, 3, "BloodfuryRipper_OnKilledTarget")
RegisterUnitEvent(12579, 4, "BloodfuryRipper_OnDied")

--[[ Stonetalon Mountains -- Bloodfury Roguefeather.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function BloodfuryRoguefeather_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodfuryRoguefeather_Thrash", 5000, 0)
end

function BloodfuryRoguefeather_Thrash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3391, pUnit:GetMainTank()) 
end

function BloodfuryRoguefeather_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodfuryRoguefeather_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodfuryRoguefeather_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4023, 1, "BloodfuryRoguefeather_OnCombat")
RegisterUnitEvent(4023, 2, "BloodfuryRoguefeather_OnLeaveCombat")
RegisterUnitEvent(4023, 3, "BloodfuryRoguefeather_OnKilledTarget")
RegisterUnitEvent(4023, 4, "BloodfuryRoguefeather_OnDied")

--[[ Stonetalon Mountains -- Bloodfury Slayer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function BloodfurySlayer_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodfuryRoguefeather_CurseofRecklessness", 5000, 2)
end

function BloodfuryRoguefeather_CurseofRecklessness(pUnit, Event) 
pUnit:FullCastSpellOnTarget(16231, pUnit:GetMainTank()) 
end

function BloodfurySlayer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodfurySlayer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodfurySlayer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4024, 1, "BloodfurySlayer_OnCombat")
RegisterUnitEvent(4024, 2, "BloodfurySlayer_OnLeaveCombat")
RegisterUnitEvent(4024, 3, "BloodfurySlayer_OnKilledTarget")
RegisterUnitEvent(4024, 4, "BloodfurySlayer_OnDied")

--[[ Stonetalon Mountains -- Bloodfury Storm Witch.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function BloodfuryStormWitch_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodfuryStormWitch_LightningBolt", 8000, 0)
Unit:RegisterEvent("BloodfuryStormWitch_LightningCloud", 4000, 1)
end

function BloodfuryStormWitch_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9532, pUnit:GetMainTank()) 
end

function BloodfuryStormWitch_LightningCloud(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6535, pUnit:GetMainTank()) 
end

function BloodfuryStormWitch_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodfuryStormWitch_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodfuryStormWitch_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4027, 1, "BloodfuryStormWitch_OnCombat")
RegisterUnitEvent(4027, 2, "BloodfuryStormWitch_OnLeaveCombat")
RegisterUnitEvent(4027, 3, "BloodfuryStormWitch_OnKilledTarget")
RegisterUnitEvent(4027, 4, "BloodfuryStormWitch_OnDied")

--[[ Stonetalon Mountains -- Bloodfury Windcaller.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function BloodfuryWindcaller_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodfuryWindcaller_EnvelopingWinds", 15000, 0)
end

function BloodfuryWindcaller_EnvelopingWinds(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6728, pUnit:GetMainTank()) 
end

function BloodfuryWindcaller_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodfuryWindcaller_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodfuryWindcaller_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4026, 1, "BloodfuryWindcaller_OnCombat")
RegisterUnitEvent(4026, 2, "BloodfuryWindcaller_OnLeaveCombat")
RegisterUnitEvent(4026, 3, "BloodfuryWindcaller_OnKilledTarget")
RegisterUnitEvent(4026, 4, "BloodfuryWindcaller_OnDied")

--[[ Stonetalon Mountains -- Brother Ravenoak.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function BrotherRavenoak_OnCombat(Unit, Event)
Unit:RegisterEvent("BrotherRavenoak_LowSwipe", 10000, 0)
Unit:RegisterEvent("BrotherRavenoak_Maul", 6000, 0)
end

function BrotherRavenoak_LowSwipe(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8716, pUnit:GetMainTank()) 
end

function BrotherRavenoak_Maul(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12161, pUnit:GetMainTank()) 
end

function BrotherRavenoak_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BrotherRavenoak_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BrotherRavenoak_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5915, 1, "BrotherRavenoak_OnCombat")
RegisterUnitEvent(5915, 2, "BrotherRavenoak_OnLeaveCombat")
RegisterUnitEvent(5915, 3, "BrotherRavenoak_OnKilledTarget")
RegisterUnitEvent(5915, 4, "BrotherRavenoak_OnDied")

--[[ Stonetalon Mountains -- Burning Destroyer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function BurningDestroyer_OnCombat(Unit, Event)
Unit:RegisterEvent("BurningDestroyer_AreaBurn", 3000, 2)
Unit:RegisterEvent("BurningDestroyer_Fireball", 8000, 0)
end

function BurningDestroyer_AreaBurn(pUnit, Event) 
pUnit:CastSpell(8000) 
end

function BurningDestroyer_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9053, pUnit:GetMainTank()) 
end

function BurningDestroyer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BurningDestroyer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BurningDestroyer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4038, 1, "BurningDestroyer_OnCombat")
RegisterUnitEvent(4038, 2, "BurningDestroyer_OnLeaveCombat")
RegisterUnitEvent(4038, 3, "BurningDestroyer_OnKilledTarget")
RegisterUnitEvent(4038, 4, "BurningDestroyer_OnDied")

--[[ Stonetalon Mountains -- Burning Ravager.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function BurningRavager_OnCombat(Unit, Event)
Unit:RegisterEvent("BurningRavager_FireShieldII", 4000, 2)
end

function BurningRavager_FireShieldII(pUnit, Event) 
pUnit:CastSpell(184) 
end

function BurningDestroyer_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9053, pUnit:GetMainTank()) 
end

function BurningRavager_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BurningRavager_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BurningRavager_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4037, 1, "BurningRavager_OnCombat")
RegisterUnitEvent(4037, 2, "BurningRavager_OnLeaveCombat")
RegisterUnitEvent(4037, 3, "BurningRavager_OnKilledTarget")
RegisterUnitEvent(4037, 4, "BurningRavager_OnDied")

--[[ Stonetalon Mountains -- Cenarion Botanist.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function CenarionBotanist_OnCombat(Unit, Event)
Unit:RegisterEvent("CenarionBotanist_Rejuvenation", 10000, 0)
Unit:RegisterEvent("CenarionBotanist_Wrath", 7000, 0)
end

function CenarionBotanist_Rejuvenation(pUnit, Event) 
pUnit:CastSpell(1430) 
end

function CenarionBotanist_Wrath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9739, pUnit:GetMainTank()) 
end

function CenarionBotanist_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CenarionBotanist_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CenarionBotanist_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4051, 1, "CenarionBotanist_OnCombat")
RegisterUnitEvent(4051, 2, "CenarionBotanist_OnLeaveCombat")
RegisterUnitEvent(4051, 3, "CenarionBotanist_OnKilledTarget")
RegisterUnitEvent(4051, 4, "CenarionBotanist_OnDied")

--[[ Stonetalon Mountains -- Cenarion Caretaker.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function CenarionCaretaker_OnCombat(Unit, Event)
Unit:RegisterEvent("CenarionCaretaker_Maul", 5000, 0)
Unit:RegisterEvent("CenarionCaretaker_BearForm", 2000, 1)
Unit:RegisterEvent("CenarionCaretaker_Thorns", 1000, 1)
end

function CenarionCaretaker_BearForm(pUnit, Event) 
pUnit:CastSpell(7090) 
end

function CenarionCaretaker_Maul(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12616, pUnit:GetMainTank()) 
end

function CenarionCaretaker_Thorns(pUnit, Event) 
pUnit:CastSpell(782) 
end

function CenarionCaretaker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CenarionCaretaker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CenarionCaretaker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4050, 1, "CenarionCaretaker_OnCombat")
RegisterUnitEvent(4050, 2, "CenarionCaretaker_OnLeaveCombat")
RegisterUnitEvent(4050, 3, "CenarionCaretaker_OnKilledTarget")
RegisterUnitEvent(4050, 4, "CenarionCaretaker_OnDied")

--[[ Stonetalon Mountains -- Cenarion Druid.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function CenarionDruid_OnCombat(Unit, Event)
Unit:RegisterEvent("CenarionDruid_Wrath", 5000, 2)
Unit:RegisterEvent("CenarionDruid_CatForm", 12000, 1)
Unit:RegisterEvent("CenarionDruid_TigersFury", 14000, 1)
end

function CenarionDruid_Wrath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9739, pUnit:GetMainTank()) 
end

function CenarionDruid_CatForm(pUnit, Event) 
pUnit:CastSpell(5759) 
end

function CenarionDruid_TigersFury(pUnit, Event) 
pUnit:CastSpell(5217) 
end

function CenarionDruid_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CenarionDruid_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CenarionDruid_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4052, 1, "CenarionDruid_OnCombat")
RegisterUnitEvent(4052, 2, "CenarionDruid_OnLeaveCombat")
RegisterUnitEvent(4052, 3, "CenarionDruid_OnKilledTarget")
RegisterUnitEvent(4052, 4, "CenarionDruid_OnDied")

--[[ Stonetalon Mountains -- Charred Ancient.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function CharredAncient_OnCombat(Unit, Event)
Unit:RegisterEvent("CharredAncient_EntanglingRoots", 10000, 0)
end

function CharredAncient_EntanglingRoots(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12747, pUnit:GetMainTank()) 
end

function CharredAncient_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CharredAncient_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CharredAncient_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4028, 1, "CharredAncient_OnCombat")
RegisterUnitEvent(4028, 2, "CharredAncient_OnLeaveCombat")
RegisterUnitEvent(4028, 3, "CharredAncient_OnKilledTarget")
RegisterUnitEvent(4028, 4, "CharredAncient_OnDied")

--[[ Stonetalon Mountains -- Chimaera Matriarch.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function ChimaeraMatriarch_OnCombat(Unit, Event)
Unit:RegisterEvent("ChimaeraMatriarch_CorrosivePoison", 10000, 0)
end

function ChimaeraMatriarch_CorrosivePoison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3397, pUnit:GetMainTank()) 
end

function ChimaeraMatriarch_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ChimaeraMatriarch_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ChimaeraMatriarch_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6167, 1, "ChimaeraMatriarch_OnCombat")
RegisterUnitEvent(6167, 2, "ChimaeraMatriarch_OnLeaveCombat")
RegisterUnitEvent(6167, 3, "ChimaeraMatriarch_OnKilledTarget")
RegisterUnitEvent(6167, 4, "ChimaeraMatriarch_OnDied")

--[[ Stonetalon Mountains -- Cliff Stormer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function CliffStormer_OnCombat(Unit, Event)
Unit:RegisterEvent("CliffStormer_LizardBolt", 5000, 0)
end

function CliffStormer_LizardBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5401, pUnit:GetMainTank()) 
end

function CliffStormer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CliffStormer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CliffStormer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4008, 1, "CliffStormer_OnCombat")
RegisterUnitEvent(4008, 2, "CliffStormer_OnLeaveCombat")
RegisterUnitEvent(4008, 3, "CliffStormer_OnKilledTarget")
RegisterUnitEvent(4008, 4, "CliffStormer_OnDied")

--[[ Stonetalon Mountains -- Corrosive SapBeast.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function CorrosiveSapBeast_OnCombat(Unit, Event)
Unit:RegisterEvent("CorrosiveSapBeast_CorrosivePoison", 10000, 0)
end

function CorrosiveSapBeast_CorrosivePoison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3397, pUnit:GetMainTank()) 
end

function CorrosiveSapBeast_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CorrosiveSapBeast_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CorrosiveSapBeast_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4021, 1, "CorrosiveSapBeast_OnCombat")
RegisterUnitEvent(4021, 2, "CorrosiveSapBeast_OnLeaveCombat")
RegisterUnitEvent(4021, 3, "CorrosiveSapBeast_OnKilledTarget")
RegisterUnitEvent(4021, 4, "CorrosiveSapBeast_OnDied")

--[[ Stonetalon Mountains -- Daughter of Cenarius.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function DaughterofCenarius_OnCombat(Unit, Event)
Unit:RegisterEvent("DaughterofCenarius_DispelMagic", 6000, 0)
Unit:RegisterEvent("DaughterofCenarius_Throw", 4000, 0)
end

function DaughterofCenarius_DispelMagic(pUnit, Event) 
pUnit:CastSpell(527) 
end

function DaughterofCenarius_Throw(pUnit, Event) 
pUnit:FullCastSpellOnTarget(10277, pUnit:GetMainTank()) 
end

function DaughterofCenarius_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DaughterofCenarius_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DaughterofCenarius_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4053, 1, "DaughterofCenarius_OnCombat")
RegisterUnitEvent(4053, 2, "DaughterofCenarius_OnLeaveCombat")
RegisterUnitEvent(4053, 3, "DaughterofCenarius_OnKilledTarget")
RegisterUnitEvent(4053, 4, "DaughterofCenarius_OnDied")

--[[ Stonetalon Mountains -- Deepmoss Creeper.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function DeepmossCreeper_OnCombat(Unit, Event)
Unit:RegisterEvent("DeepmossCreeper_Poison", 10000, 0)
end

function DeepmossCreeper_Poison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(744, pUnit:GetMainTank()) 
end

function DeepmossCreeper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DeepmossCreeper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DeepmossCreeper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4005, 1, "DeepmossCreeper_OnCombat")
RegisterUnitEvent(4005, 2, "DeepmossCreeper_OnLeaveCombat")
RegisterUnitEvent(4005, 3, "DeepmossCreeper_OnKilledTarget")
RegisterUnitEvent(4005, 4, "DeepmossCreeper_OnDied")

--[[ Stonetalon Mountains -- Deepmoss Hatchling.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function DeepmossHatchling_OnCombat(Unit, Event)
Unit:RegisterEvent("DaughterofCenarius_SummonDeepmossMatriarch", 4000, 1)
end

function DaughterofCenarius_SummonDeepmossMatriarch(pUnit, Event) 
pUnit:CastSpell(6536) 
end

function DeepmossHatchling_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DeepmossHatchling_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DeepmossHatchling_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4263, 1, "DeepmossHatchling_OnCombat")
RegisterUnitEvent(4263, 2, "DeepmossHatchling_OnLeaveCombat")
RegisterUnitEvent(4263, 3, "DeepmossHatchling_OnKilledTarget")
RegisterUnitEvent(4263, 4, "DeepmossHatchling_OnDied")

--[[ Stonetalon Mountains -- Deepmoss Venomspitter.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function DeepmossVenomspitter_OnCombat(Unit, Event)
Unit:RegisterEvent("DeepmossVenomspitter_ToxicSpit", 10000, 0)
end

function DeepmossVenomspitter_ToxicSpit(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7951, pUnit:GetMainTank()) 
end

function DeepmossVenomspitter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DeepmossVenomspitter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DeepmossVenomspitter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4007, 1, "DeepmossVenomspitter_OnCombat")
RegisterUnitEvent(4007, 2, "DeepmossVenomspitter_OnLeaveCombat")
RegisterUnitEvent(4007, 3, "DeepmossVenomspitter_OnKilledTarget")
RegisterUnitEvent(4007, 4, "DeepmossVenomspitter_OnDied")

--[[ Stonetalon Mountains -- Fey Dragon.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function FeyDragon_OnCombat(Unit, Event)
Unit:RegisterEvent("FeyDragon_NullifyMana", 6000, 0)
end

function FeyDragon_NullifyMana(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7994, pUnit:GetRandomPlayer(4)) 
end

function FeyDragon_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FeyDragon_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FeyDragon_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4016, 1, "FeyDragon_OnCombat")
RegisterUnitEvent(4016, 2, "FeyDragon_OnLeaveCombat")
RegisterUnitEvent(4016, 3, "FeyDragon_OnKilledTarget")
RegisterUnitEvent(4016, 4, "FeyDragon_OnDied")

--[[ Stonetalon Mountains -- Fledgling Chimaera.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function FledglingChimaera_OnCombat(Unit, Event)
Unit:RegisterEvent("FledglingChimaera_CorrosivePoison", 10000, 0)
end

function FledglingChimaera_CorrosivePoison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3397, pUnit:GetMainTank()) 
end

function FledglingChimaera_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FledglingChimaera_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FledglingChimaera_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4031, 1, "FledglingChimaera_OnCombat")
RegisterUnitEvent(4031, 2, "FledglingChimaera_OnLeaveCombat")
RegisterUnitEvent(4031, 3, "FledglingChimaera_OnKilledTarget")
RegisterUnitEvent(4031, 4, "FledglingChimaera_OnDied")

--[[ Stonetalon Mountains -- Foreman Rigger.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function ForemanRigger_OnCombat(Unit, Event)
Unit:RegisterEvent("ForemanRigger_Net", 10000, 0)
Unit:RegisterEvent("ForemanRigger_PierceArmor", 12000, 1)
end

function ForemanRigger_Net(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6533, pUnit:GetRandomPlayer(4)) 
end

function ForemanRigger_PierceArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6016, pUnit:GetMainTank()) 
end

function ForemanRigger_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ForemanRigger_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ForemanRigger_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5931, 1, "ForemanRigger_OnCombat")
RegisterUnitEvent(5931, 2, "ForemanRigger_OnLeaveCombat")
RegisterUnitEvent(5931, 3, "ForemanRigger_OnKilledTarget")
RegisterUnitEvent(5931, 4, "ForemanRigger_OnDied")

--[[ Stonetalon Mountains -- Furious Stone Spirit.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function FuriousStoneSpirit_OnCombat(Unit, Event)
Unit:RegisterEvent("FuriousStoneSpirit_Knockdown", 8000, 0)
end

function FuriousStoneSpirit_Knockdown(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5164, pUnit:GetMainTank()) 
end

function FuriousStoneSpirit_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FuriousStoneSpirit_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FuriousStoneSpirit_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4035, 1, "FuriousStoneSpirit_OnCombat")
RegisterUnitEvent(4035, 2, "FuriousStoneSpirit_OnLeaveCombat")
RegisterUnitEvent(4035, 3, "FuriousStoneSpirit_OnKilledTarget")
RegisterUnitEvent(4035, 4, "FuriousStoneSpirit_OnDied")

--[[ Stonetalon Mountains -- Gogger Geomancer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function GoggerGeomancer_OnCombat(Unit, Event)
Unit:RegisterEvent("GoggerGeomancer_Fireball", 8000, 0)
Unit:RegisterEvent("GoggerGeomancer_RainofFire", 11000, 1)
end

function GoggerGeomancer_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20793, pUnit:GetMainTank()) 
end

function GoggerGeomancer_RainofFire(pUnit, Event) 
pUnit:CastSpell(11990) 
end

function GoggerGeomancer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GoggerGeomancer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GoggerGeomancer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11917, 1, "GoggerGeomancer_OnCombat")
RegisterUnitEvent(11917, 2, "GoggerGeomancer_OnLeaveCombat")
RegisterUnitEvent(11917, 3, "GoggerGeomancer_OnKilledTarget")
RegisterUnitEvent(11917, 4, "GoggerGeomancer_OnDied")

--[[ Stonetalon Mountains -- Gogger Rock Keeper.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function GoggerRockKeeper_OnCombat(Unit, Event)
Unit:RegisterEvent("GoggerRockKeeper_EarthShock", 8000, 0)
end

function GoggerRockKeeper_EarthShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13281, pUnit:GetMainTank()) 
end

function GoggerRockKeeper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GoggerRockKeeper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GoggerRockKeeper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11915, 1, "GoggerRockKeeper_OnCombat")
RegisterUnitEvent(11915, 2, "GoggerRockKeeper_OnLeaveCombat")
RegisterUnitEvent(11915, 3, "GoggerRockKeeper_OnKilledTarget")
RegisterUnitEvent(11915, 4, "GoggerRockKeeper_OnDied")

--[[ Stonetalon Mountains -- Goggeroc.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function Goggeroc_OnCombat(Unit, Event)
Unit:RegisterEvent("Goggeroc_SnapKick", 6000, 0)
Unit:RegisterEvent("Goggeroc_Uppercut", 1000, 0)
end

function Goggeroc_SnapKick(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8646, pUnit:GetMainTank()) 
end

function Goggeroc_Uppercut(pUnit, Event) 
pUnit:FullCastSpellOnTarget(10966, pUnit:GetMainTank()) 
end

function Goggeroc_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Goggeroc_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Goggeroc_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11920, 1, "Goggeroc_OnCombat")
RegisterUnitEvent(11920, 2, "Goggeroc_OnLeaveCombat")
RegisterUnitEvent(11920, 3, "Goggeroc_OnKilledTarget")
RegisterUnitEvent(11920, 4, "Goggeroc_OnDied")

--[[ Stonetalon Mountains -- Gorehoof the Black.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function GorehooftheBlack_OnCombat(Unit, Event)
Unit:RegisterEvent("GorehooftheBlack_WarStomp", 8000, 0)
end

function GorehooftheBlack_WarStomp(pUnit, Event) 
pUnit:CastSpell(45) 
end

function GorehooftheBlack_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GorehooftheBlack_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GorehooftheBlack_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11914, 1, "GorehooftheBlack_OnCombat")
RegisterUnitEvent(11914, 2, "GorehooftheBlack_OnLeaveCombat")
RegisterUnitEvent(11914, 3, "GorehooftheBlack_OnKilledTarget")
RegisterUnitEvent(11914, 4, "GorehooftheBlack_OnDied")

--[[ Stonetalon Mountains -- Great Courser.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function GreatCourser_OnCombat(Unit, Event)
Unit:RegisterEvent("GreatCourser_RushingCharge", 8000, 0)
end

function GreatCourser_RushingCharge(pUnit, Event) 
pUnit:CastSpell(6268) 
end

function GreatCourser_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GreatCourser_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GreatCourser_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4019, 1, "GreatCourser_OnCombat")
RegisterUnitEvent(4019, 2, "GreatCourser_OnLeaveCombat")
RegisterUnitEvent(4019, 3, "GreatCourser_OnKilledTarget")
RegisterUnitEvent(4019, 4, "GreatCourser_OnDied")

--[[ Stonetalon Mountains -- Grimtotem Brute.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function GrimtotemBrute_OnCombat(Unit, Event)
Unit:RegisterEvent("GrimtotemBrute_RushingCharge", 8000, 0)
end

function GrimtotemBrute_RushingCharge(pUnit, Event) 
pUnit:CastSpell(6268) 
end

function GrimtotemBrute_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GrimtotemBrute_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GrimtotemBrute_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11912, 1, "GrimtotemBrute_OnCombat")
RegisterUnitEvent(11912, 2, "GrimtotemBrute_OnLeaveCombat")
RegisterUnitEvent(11912, 3, "GrimtotemBrute_OnKilledTarget")
RegisterUnitEvent(11912, 4, "GrimtotemBrute_OnDied")

--[[ Stonetalon Mountains -- Grimtotem Mercenary.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function GrimtotemMercenary_OnCombat(Unit, Event)
Unit:RegisterEvent("GrimtotemMercenary_Pummel", 10000, 0)
Unit:RegisterEvent("GrimtotemMercenary_Throw", 6000, 0)
end

function GrimtotemMercenary_Pummel(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12555, pUnit:GetMainTank()) 
end

function GrimtotemMercenary_Throw(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15607, pUnit:GetMainTank()) 
end

function GrimtotemMercenary_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GrimtotemMercenary_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GrimtotemMercenary_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11911, 1, "GrimtotemMercenary_OnCombat")
RegisterUnitEvent(11911, 2, "GrimtotemMercenary_OnLeaveCombat")
RegisterUnitEvent(11911, 3, "GrimtotemMercenary_OnKilledTarget")
RegisterUnitEvent(11911, 4, "GrimtotemMercenary_OnDied")

--[[ Stonetalon Mountains -- Grimtotem Sorcerer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function GrimtotemSorcerer_OnCombat(Unit, Event)
Unit:RegisterEvent("GrimtotemSorcerer_LightningBolt", 8000, 0)
Unit:RegisterEvent("GrimtotemSorcerer_Rejuvenation", 12000, 0)
end

function GrimtotemSorcerer_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20802, pUnit:GetMainTank()) 
end

function GrimtotemSorcerer_Rejuvenation(pUnit, Event) 
pUnit:CastSpell(12160) 
end

function GrimtotemSorcerer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GrimtotemSorcerer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GrimtotemSorcerer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11913, 1, "GrimtotemSorcerer_OnCombat")
RegisterUnitEvent(11913, 2, "GrimtotemSorcerer_OnLeaveCombat")
RegisterUnitEvent(11913, 3, "GrimtotemSorcerer_OnKilledTarget")
RegisterUnitEvent(11913, 4, "GrimtotemSorcerer_OnDied")

--[[ Stonetalon Mountains -- Mirkfallon Dryad.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function MirkfallonDryad_OnCombat(Unit, Event)
Unit:RegisterEvent("MirkfallonDryad_SlowingPoison", 10000, 0)
Unit:RegisterEvent("MirkfallonDryad_Throw", 6000, 0)
end

function MirkfallonDryad_SlowingPoison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7992, pUnit:GetMainTank()) 
end

function MirkfallonDryad_Throw(pUnit, Event) 
pUnit:FullCastSpellOnTarget(10277, pUnit:GetMainTank()) 
end

function MirkfallonDryad_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MirkfallonDryad_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MirkfallonDryad_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4061, 1, "MirkfallonDryad_OnCombat")
RegisterUnitEvent(4061, 2, "MirkfallonDryad_OnLeaveCombat")
RegisterUnitEvent(4061, 3, "MirkfallonDryad_OnKilledTarget")
RegisterUnitEvent(4061, 4, "MirkfallonDryad_OnDied")

--[[ Stonetalon Mountains -- Mirkfallon Keeper.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function MirkfallonKeeper_OnCombat(Unit, Event)
Unit:RegisterEvent("MirkfallonKeeper_MirkfallonFungus", 10000, 1)
end

function MirkfallonKeeper_MirkfallonFungus(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8138, pUnit:GetMainTank()) 
end

function MirkfallonKeeper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MirkfallonKeeper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MirkfallonKeeper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4056, 1, "MirkfallonKeeper_OnCombat")
RegisterUnitEvent(4056, 2, "MirkfallonKeeper_OnLeaveCombat")
RegisterUnitEvent(4056, 3, "MirkfallonKeeper_OnKilledTarget")
RegisterUnitEvent(4056, 4, "MirkfallonKeeper_OnDied")

--[[ Stonetalon Mountains -- Naltaszar.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function Naltaszar_OnCombat(Unit, Event)
Unit:RegisterEvent("Naltaszar_ChainBurn", 10000, 0)
Unit:RegisterEvent("Naltaszar_ChainLightning", 6000, 0)
end

function Naltaszar_ChainBurn(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8211, pUnit:GetRandomPlayer(4)) 
end

function Naltaszar_ChainLightning(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15305, pUnit:GetMainTank()) 
end

function Naltaszar_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Naltaszar_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Naltaszar_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4066, 1, "Naltaszar_OnCombat")
RegisterUnitEvent(4066, 2, "Naltaszar_OnLeaveCombat")
RegisterUnitEvent(4066, 3, "Naltaszar_OnKilledTarget")
RegisterUnitEvent(4066, 4, "Naltaszar_OnDied")

--[[ Stonetalon Mountains -- Pridewing Skyhunter.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function PridewingSkyhunter_OnCombat(Unit, Event)
Unit:RegisterEvent("PridewingSkyhunter_Poison", 10000, 0)
Unit:RegisterEvent("PridewingSkyhunter_Swoop", 6000, 0)
end

function PridewingSkyhunter_Poison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(744, pUnit:GetMainTank()) 
end

function PridewingSkyhunter_Swoop(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5708, pUnit:GetMainTank()) 
end

function PridewingSkyhunter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function PridewingSkyhunter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function PridewingSkyhunter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4013, 1, "PridewingSkyhunter_OnCombat")
RegisterUnitEvent(4013, 2, "PridewingSkyhunter_OnLeaveCombat")
RegisterUnitEvent(4013, 3, "PridewingSkyhunter_OnKilledTarget")
RegisterUnitEvent(4013, 4, "PridewingSkyhunter_OnDied")

--[[ Stonetalon Mountains -- Pridewing Wyvern.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function PridewingWyvern_OnCombat(Unit, Event)
Unit:RegisterEvent("PridewingWyvern_CorrosivePoison", 10000, 0)
end

function PridewingWyvern_CorrosivePoison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3397, pUnit:GetMainTank()) 
end

function PridewingWyvern_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function PridewingWyvern_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function PridewingWyvern_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4012, 1, "PridewingWyvern_OnCombat")
RegisterUnitEvent(4012, 2, "PridewingWyvern_OnLeaveCombat")
RegisterUnitEvent(4012, 3, "PridewingWyvern_OnKilledTarget")
RegisterUnitEvent(4012, 4, "PridewingWyvern_OnDied")

--[[ Stonetalon Mountains -- PridewingPatriarch.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function PridewingPatriarch_OnCombat(Unit, Event)
Unit:RegisterEvent("PridewingPatriarch_CorrosivePoison", 10000, 0)
end

function PridewingPatriarch_CorrosivePoison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3397, pUnit:GetMainTank()) 
end

function PridewingPatriarch_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function PridewingPatriarch_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function PridewingPatriarch_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4015, 1, "PridewingPatriarch_OnCombat")
RegisterUnitEvent(4015, 2, "PridewingPatriarch_OnLeaveCombat")
RegisterUnitEvent(4015, 3, "PridewingPatriarch_OnKilledTarget")
RegisterUnitEvent(4015, 4, "PridewingPatriarch_OnDied")

--[[ Stonetalon Mountains -- Raging Cliff Stormer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function RagingCliffStormer_OnCombat(Unit, Event)
Unit:RegisterEvent("RagingCliffStormer_RushingCharge", 10000, 0)
Unit:RegisterEvent("RagingCliffStormer_Thunderclap", 6000, 0)
end

function RagingCliffStormer_RushingCharge(pUnit, Event) 
pUnit:CastSpell(6268) 
end

function RagingCliffStormer_Thunderclap(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8078, pUnit:GetMainTank()) 
end

function RagingCliffStormer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RagingCliffStormer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RagingCliffStormer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4009, 1, "RagingCliffStormer_OnCombat")
RegisterUnitEvent(4009, 2, "RagingCliffStormer_OnLeaveCombat")
RegisterUnitEvent(4009, 3, "RagingCliffStormer_OnKilledTarget")
RegisterUnitEvent(4009, 4, "RagingCliffStormer_OnDied")

--[[ Stonetalon Mountains -- Rogue Flame Spirit.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function RogueFlameSpirit_OnCombat(Unit, Event)
Unit:RegisterEvent("RogueFlameSpirit_Inmolate", 10000, 0)
end

function RogueFlameSpirit_Inmolate(pUnit, Event) 
pUnit:FullCastSpellOnTarget(1094, pUnit:GetMainTank()) 
end

function RogueFlameSpirit_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RogueFlameSpirit_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RogueFlameSpirit_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4036, 1, "RogueFlameSpirit_OnCombat")
RegisterUnitEvent(4036, 2, "RogueFlameSpirit_OnLeaveCombat")
RegisterUnitEvent(4036, 3, "RogueFlameSpirit_OnKilledTarget")
RegisterUnitEvent(4036, 4, "RogueFlameSpirit_OnDied")

--[[ Stonetalon Mountains -- Rynthariel the Keymaster.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function RyntharieltheKeymaster_OnCombat(Unit, Event)
Unit:RegisterEvent("RyntharieltheKeymaster_SlowingPoison", 10000, 0)
Unit:RegisterEvent("RyntharieltheKeymaster_Throw", 6000, 0)
end

function RyntharieltheKeymaster_SlowingPoison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7992, pUnit:GetMainTank()) 
end

function RyntharieltheKeymaster_Throw(pUnit, Event) 
pUnit:FullCastSpellOnTarget(10277, pUnit:GetMainTank()) 
end

function RyntharieltheKeymaster_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RyntharieltheKeymaster_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RyntharieltheKeymaster_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(8518, 1, "RyntharieltheKeymaster_OnCombat")
RegisterUnitEvent(8518, 2, "RyntharieltheKeymaster_OnLeaveCombat")
RegisterUnitEvent(8518, 3, "RyntharieltheKeymaster_OnKilledTarget")
RegisterUnitEvent(8518, 4, "RyntharieltheKeymaster_OnDied")

--[[ Stonetalon Mountains -- SapBeast.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function SapBeast_OnCombat(Unit, Event)
Unit:RegisterEvent("SapBeast_Sap_Might", 10000, 0)
end

function SapBeast_Sap_Might(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7997, pUnit:GetMainTank()) 
end

function SapBeast_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SapBeast_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SapBeast_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4020, 1, "SapBeast_OnCombat")
RegisterUnitEvent(4020, 2, "SapBeast_OnLeaveCombat")
RegisterUnitEvent(4020, 3, "SapBeast_OnKilledTarget")
RegisterUnitEvent(4020, 4, "SapBeast_OnDied")

--[[ Stonetalon Mountains -- Scorched Basilisk.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function ScorchedBasilisk_OnCombat(Unit, Event)
Unit:RegisterEvent("ScorchedBasilisk_CrystallineSlumber", 15000, 1)
end

function ScorchedBasilisk_CrystallineSlumber(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3636, pUnit:GetMainTank()) 
end

function ScorchedBasilisk_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ScorchedBasilisk_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ScorchedBasilisk_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4041, 1, "ScorchedBasilisk_OnCombat")
RegisterUnitEvent(4041, 2, "ScorchedBasilisk_OnLeaveCombat")
RegisterUnitEvent(4041, 3, "ScorchedBasilisk_OnKilledTarget")
RegisterUnitEvent(4041, 4, "ScorchedBasilisk_OnDied")

--[[ Stonetalon Mountains -- Sentinel Amarassan.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function SentinelAmarassan_OnCombat(Unit, Event)
Unit:RegisterEvent("SentinelAmarassan_Wrath", 5000, 2)
Unit:RegisterEvent("SentinelAmarassan_CatForm", 12000, 1)
Unit:RegisterEvent("SentinelAmarassan_TigersFury", 14000, 1)
end

function SentinelAmarassan_Wrath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9739, pUnit:GetMainTank()) 
end

function SentinelAmarassan_CatForm(pUnit, Event) 
pUnit:CastSpell(5759) 
end

function SentinelAmarassan_TigersFury(pUnit, Event) 
pUnit:CastSpell(5217) 
end

function SentinelAmarassan_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SentinelAmarassan_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SentinelAmarassan_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5916, 1, "SentinelAmarassan_OnCombat")
RegisterUnitEvent(5916, 2, "SentinelAmarassan_OnLeaveCombat")
RegisterUnitEvent(5916, 3, "SentinelAmarassan_OnKilledTarget")
RegisterUnitEvent(5916, 4, "SentinelAmarassan_OnDied")

--[[ Stonetalon Mountains -- Singed Basilisk.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function SingedBasilisk_OnCombat(Unit, Event)
Unit:RegisterEvent("SingedBasilisk_CrystallineSlumber", 15000, 1)
end

function SingedBasilisk_CrystallineSlumber(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3636, pUnit:GetMainTank()) 
end

function SingedBasilisk_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SingedBasilisk_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SingedBasilisk_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4042, 1, "SingedBasilisk_OnCombat")
RegisterUnitEvent(4042, 2, "SingedBasilisk_OnLeaveCombat")
RegisterUnitEvent(4042, 3, "SingedBasilisk_OnKilledTarget")
RegisterUnitEvent(4042, 4, "SingedBasilisk_OnDied")

--[[ Stonetalon Mountains -- Sister Riven.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function SisterRiven_OnCombat(Unit, Event)
Unit:RegisterEvent("SisterRiven_FireShieldII", 1000, 1)
Unit:RegisterEvent("SisterRiven_FlameLash", 4000, 1)
Unit:RegisterEvent("SisterRiven_FlameSpike", 6000, 1)
end

function SisterRiven_FireShieldII(pUnit, Event) 
pUnit:CastSpell(184) 
end

function SisterRiven_FlameLash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3356, pUnit:GetMainTank()) 
end

function SisterRiven_FlameSpike(pUnit, Event) 
pUnit:CastSpell(6725) 
end

function SisterRiven_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SisterRiven_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SisterRiven_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5930, 1, "SisterRiven_OnCombat")
RegisterUnitEvent(5930, 2, "SisterRiven_OnLeaveCombat")
RegisterUnitEvent(5930, 3, "SisterRiven_OnKilledTarget")
RegisterUnitEvent(5930, 4, "SisterRiven_OnDied")

--[[ Stonetalon Mountains -- Son of Cenarius.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function SonofCenarius_OnCombat(Unit, Event)
Unit:RegisterEvent("SonofCenarius_SummonTreantAlly", 4000, 1)
end

function SonofCenarius_SummonTreantAlly(pUnit, Event) 
pUnit:CastSpell(7993) 
end

function SonofCenarius_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SonofCenarius_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SonofCenarius_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4057, 1, "SonofCenarius_OnCombat")
RegisterUnitEvent(4057, 2, "SonofCenarius_OnLeaveCombat")
RegisterUnitEvent(4057, 3, "SonofCenarius_OnKilledTarget")
RegisterUnitEvent(4057, 4, "SonofCenarius_OnDied")

--[[ Stonetalon Mountains -- Sorrow Wing.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function SorrowWing_OnCombat(Unit, Event)
Unit:RegisterEvent("SorrowWing_SoulRend", 6000, 1)
Unit:RegisterEvent("SorrowWing_DeadlyLeechPoison", 8000, 1)
end

function SorrowWing_SoulRend(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3405, pUnit:GetMainTank()) 
end

function SorrowWing_DeadlyLeechPoison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3388, pUnit:GetMainTank()) 
end

function SorrowWing_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SorrowWing_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SorrowWing_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5928, 1, "SorrowWing_OnCombat")
RegisterUnitEvent(5928, 2, "SorrowWing_OnLeaveCombat")
RegisterUnitEvent(5928, 3, "SorrowWing_OnKilledTarget")
RegisterUnitEvent(5928, 4, "SorrowWing_OnDied")

--[[ Stonetalon Mountains -- Taskmaster Whipfang.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function TaskmasterWhipfang_OnCombat(Unit, Event)
Unit:RegisterEvent("TaskmasterWhipfang_IntimidatingRoar", 12000, 0)
end

function TaskmasterWhipfang_IntimidatingRoar(pUnit, Event) 
pUnit:FullCastSpellOnTarget(16508, pUnit:GetMainTank()) 
end

function TaskmasterWhipfang_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TaskmasterWhipfang_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TaskmasterWhipfang_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5932, 1, "TaskmasterWhipfang_OnCombat")
RegisterUnitEvent(5932, 2, "TaskmasterWhipfang_OnLeaveCombat")
RegisterUnitEvent(5932, 3, "TaskmasterWhipfang_OnKilledTarget")
RegisterUnitEvent(5932, 4, "TaskmasterWhipfang_OnDied")

--[[ Stonetalon Mountains -- Venture Co. Builder.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function VentureCoBuilder_OnCombat(Unit, Event)
Unit:RegisterEvent("VentureCoBuilder_Shoot", 6000, 0)
end

function VentureCoBuilder_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function VentureCoBuilder_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function VentureCoBuilder_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function VentureCoBuilder_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4070, 1, "VentureCoBuilder_OnCombat")
RegisterUnitEvent(4070, 2, "VentureCoBuilder_OnLeaveCombat")
RegisterUnitEvent(4070, 3, "VentureCoBuilder_OnKilledTarget")
RegisterUnitEvent(4070, 4, "VentureCoBuilder_OnDied")

--[[ Stonetalon Mountains -- Venture Co. Deforester.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function VentureCoDeforester_OnCombat(Unit, Event)
Unit:RegisterEvent("VentureCoDeforester_Fireball", 8000, 0)
end

function VentureCoDeforester_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20793, pUnit:GetMainTank()) 
end

function VentureCoDeforester_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function VentureCoDeforester_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function VentureCoDeforester_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3991, 1, "VentureCoDeforester_OnCombat")
RegisterUnitEvent(3991, 2, "VentureCoDeforester_OnLeaveCombat")
RegisterUnitEvent(3991, 3, "VentureCoDeforester_OnKilledTarget")
RegisterUnitEvent(3991, 4, "VentureCoDeforester_OnDied")

--[[ Stonetalon Mountains -- Venture Co. Engineer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function VentureCoEngineer_OnCombat(Unit, Event)
Unit:RegisterEvent("VentureCoEngineer_ThrowDynamite", 8000, 0)
end

function VentureCoEngineer_ThrowDynamite(pUnit, Event) 
pUnit:CastSpell(7978) 
end

function VentureCoEngineer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function VentureCoEngineer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function VentureCoEngineer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3992, 1, "VentureCoEngineer_OnCombat")
RegisterUnitEvent(3992, 2, "VentureCoEngineer_OnLeaveCombat")
RegisterUnitEvent(3992, 3, "VentureCoEngineer_OnKilledTarget")
RegisterUnitEvent(3992, 4, "VentureCoEngineer_OnDied")

--[[ Stonetalon Mountains -- Venture Co. Logger.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function VentureCoLogger_OnCombat(Unit, Event)
Unit:RegisterEvent("VentureCoLogger_Throw", 6000, 0)
end

function VentureCoLogger_Throw(pUnit, Event) 
pUnit:FullCastSpellOnTarget(10277, pUnit:GetMainTank()) 
end

function VentureCoLogger_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function VentureCoLogger_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function VentureCoLogger_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3989, 1, "VentureCoLogger_OnCombat")
RegisterUnitEvent(3989, 2, "VentureCoLogger_OnLeaveCombat")
RegisterUnitEvent(3989, 3, "VentureCoLogger_OnKilledTarget")
RegisterUnitEvent(3989, 4, "VentureCoLogger_OnDied")

--[[ Stonetalon Mountains -- Venture Co. Machine Smith.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function VentureCoMachineSmith_OnCombat(Unit, Event)
Unit:RegisterEvent("VentureCoMachineSmith_CompactHarvestReaper", 6000, 1)
end

function VentureCoMachineSmith_CompactHarvestReaper(pUnit, Event) 
pUnit:CastSpell(7979) 
end

function VentureCoMachineSmith_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function VentureCoMachineSmith_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function VentureCoMachineSmith_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3993, 1, "VentureCoMachineSmith_OnCombat")
RegisterUnitEvent(3993, 2, "VentureCoMachineSmith_OnLeaveCombat")
RegisterUnitEvent(3993, 3, "VentureCoMachineSmith_OnKilledTarget")
RegisterUnitEvent(3993, 4, "VentureCoMachineSmith_OnDied")

--[[ Stonetalon Mountains -- Wily Fey Dragon.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function WilyFeyDragon_OnCombat(Unit, Event)
Unit:RegisterEvent("WilyFeyDragon_ManaBurn", 6000, 0)
end

function WilyFeyDragon_ManaBurn(pUnit, Event) 
pUnit:FullCastSpellOnTarget(17630, pUnit:GetRandomPlayer(4)) 
end

function WilyFeyDragon_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WilyFeyDragon_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WilyFeyDragon_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4017, 1, "WilyFeyDragon_OnCombat")
RegisterUnitEvent(4017, 2, "WilyFeyDragon_OnLeaveCombat")
RegisterUnitEvent(4017, 3, "WilyFeyDragon_OnKilledTarget")
RegisterUnitEvent(4017, 4, "WilyFeyDragon_OnDied")

--[[ Stonetalon Mountains -- Windshear Geomancer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function WindshearGeomancer_OnCombat(Unit, Event)
Unit:RegisterEvent("WindshearGeomancer_Frostbolt", 8000, 0)
end

function WindshearGeomancer_Frostbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20792, pUnit:GetMainTank()) 
end

function WindshearGeomancer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WindshearGeomancer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WindshearGeomancer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4003, 1, "WindshearGeomancer_OnCombat")
RegisterUnitEvent(4003, 2, "WindshearGeomancer_OnLeaveCombat")
RegisterUnitEvent(4003, 3, "WindshearGeomancer_OnKilledTarget")
RegisterUnitEvent(4003, 4, "WindshearGeomancer_OnDied")

--[[ Stonetalon Mountains -- Windshear Overlord.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function WindshearOverlord_OnCombat(Unit, Event)
Unit:RegisterEvent("WindshearOverlord_BattleFury", 2000, 1)
end

function WindshearOverlord_BattleFury(pUnit, Event) 
pUnit:CastSpell(3631) 
end

function WindshearOverlord_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WindshearOverlord_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WindshearOverlord_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4004, 1, "WindshearOverlord_OnCombat")
RegisterUnitEvent(4004, 2, "WindshearOverlord_OnLeaveCombat")
RegisterUnitEvent(4004, 3, "WindshearOverlord_OnKilledTarget")
RegisterUnitEvent(4004, 4, "WindshearOverlord_OnDied")

--[[ Stonetalon Mountains -- Young Chimaera.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function YoungChimaera_OnCombat(Unit, Event)
Unit:RegisterEvent("YoungChimaera_LightningBolt", 8000, 0)
end

function YoungChimaera_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9532, pUnit:GetMainTank()) 
end

function YoungChimaera_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function YoungChimaera_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function YoungChimaera_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4032, 1, "YoungChimaera_OnCombat")
RegisterUnitEvent(4032, 2, "YoungChimaera_OnLeaveCombat")
RegisterUnitEvent(4032, 3, "YoungChimaera_OnKilledTarget")
RegisterUnitEvent(4032, 4, "YoungChimaera_OnDied")

--[[ Stonetalon Mountains -- Young Pridewing.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function YoungPridewing_OnCombat(Unit, Event)
Unit:RegisterEvent("YoungPridewing_Poison", 10000, 0)
end

function YoungPridewing_Poison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(744, pUnit:GetMainTank()) 
end

function YoungPridewing_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function YoungPridewing_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function YoungPridewing_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4005, 1, "YoungPridewing_OnCombat")
RegisterUnitEvent(4005, 2, "YoungPridewing_OnLeaveCombat")
RegisterUnitEvent(4005, 3, "YoungPridewing_OnKilledTarget")
RegisterUnitEvent(4005, 4, "YoungPridewing_OnDied")

--[[ ALL CREDITS GO TO BLUA SCRIPTING AND THE
                 WRITER OF THESE SCRIPTS BLACKHER0 and Mikebeck
    BlackHer0, Novembar, 5th, 2008. --]]