--[[ Borean Tundra -- 55-D Collect-a-tron.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function DCollectatron_OnCombat(Unit, Event)
Unit:RegisterEvent("DCollectatron_DumpOil", 10000, 0)
end

function DCollectatron_DumpOil(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50269, pUnit:GetMainTank()) 
end

function DCollectatron_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DCollectatron_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DCollectatron_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25793, 1, "DCollectatron_OnCombat")
RegisterUnitEvent(25793, 2, "DCollectatron_OnLeaveCombat")
RegisterUnitEvent(25793, 3, "DCollectatron_OnKilledTarget")
RegisterUnitEvent(25793, 4, "DCollectatron_OnDied")


--[[ Borean Tundra -- Aged Magnataur.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function AgedMagnataur_OnCombat(Unit, Event)
Unit:RegisterEvent("AgedMagnataur_PlagueCloud", 2000, 2)
end

function AgedMagnataur_PlagueCloud(pUnit, Event) 
pUnit:CastSpell(50366) 
end

function AgedMagnataur_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AgedMagnataur_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AgedMagnataur_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24954, 1, "AgedMagnataur_OnCombat")
RegisterUnitEvent(24954, 2, "AgedMagnataur_OnLeaveCombat")
RegisterUnitEvent(24954, 3, "AgedMagnataur_OnKilledTarget")
RegisterUnitEvent(24954, 4, "AgedMagnataur_OnDied")


--[[ Borean Tundra -- Arcane Serpent.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function ArcaneSerpent_OnCombat(Unit, Event)
Unit:RegisterEvent("ArcaneSerpent_ArcaneJolt", 8000, 0)
end

function ArcaneSerpent_ArcaneJolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50504, pUnit:GetMainTank()) 
end

function ArcaneSerpent_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ArcaneSerpent_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ArcaneSerpent_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25721, 1, "ArcaneSerpent_OnCombat")
RegisterUnitEvent(25721, 2, "ArcaneSerpent_OnLeaveCombat")
RegisterUnitEvent(25721, 3, "ArcaneSerpent_OnKilledTarget")
RegisterUnitEvent(25721, 4, "ArcaneSerpent_OnDied")


--[[ Borean Tundra -- Aspatha the Broodmother.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function AspathatheBroodmother_OnCombat(Unit, Event)
Unit:RegisterEvent("AspathatheBroodmother_Pollen", 8000, 0)
Unit:RegisterEvent("AspathatheBroodmother_WingBuffet", 9000, 0)
end

function AspathatheBroodmother_Pollen(pUnit, Event) 
pUnit:CastSpell(45610) 
end

function AspathatheBroodmother_WingBuffet(pUnit, Event) 
pUnit:CastSpell(32914) 
end

function AspathatheBroodmother_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AspathatheBroodmother_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AspathatheBroodmother_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25498, 1, "AspathatheBroodmother_OnCombat")
RegisterUnitEvent(25498, 2, "AspathatheBroodmother_OnLeaveCombat")
RegisterUnitEvent(25498, 3, "AspathatheBroodmother_OnKilledTarget")
RegisterUnitEvent(25498, 4, "AspathatheBroodmother_OnDied")


--[[ Borean Tundra -- Bane.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function Bane_OnCombat(Unit, Event)
Unit:RegisterEvent("Bane_FoolsBane", 10000, 0)
end

function Bane_FoolsBane(pUnit, Event) 
pUnit:CastSpell(50332) 
end

function Bane_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Bane_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Bane_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25655, 1, "Bane_OnCombat")
RegisterUnitEvent(25655, 2, "Bane_OnLeaveCombat")
RegisterUnitEvent(25655, 3, "Bane_OnKilledTarget")
RegisterUnitEvent(25655, 4, "Bane_OnDied")


--[[ Borean Tundra -- Beryl Sorcerer.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function BerylSorcerer_OnCombat(Unit, Event)
Unit:RegisterEvent("BerylSorcerer_Blink", 11000, 0)
Unit:RegisterEvent("BerylSorcerer_Frostbolt", 8000, 0)
end

function BerylSorcerer_Blink(pUnit, Event) 
pUnit:CastSpell(50648) 
end

function BerylSorcerer_Frostbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9672, pUnit:GetMainTank()) 
end

function BerylSorcerer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BerylSorcerer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BerylSorcerer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25316, 1, "BerylSorcerer_OnCombat")
RegisterUnitEvent(25316, 2, "BerylSorcerer_OnLeaveCombat")
RegisterUnitEvent(25316, 3, "BerylSorcerer_OnKilledTarget")
RegisterUnitEvent(25316, 4, "BerylSorcerer_OnDied")


--[[ Borean Tundra -- Beryl Treasure Hunter.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function BerylTreasureHunter_OnCombat(Unit, Event)
Unit:RegisterEvent("BerylTreasureHunter_FocusBeam", 8000, 0)
end

function BerylTreasureHunter_FocusBeam(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50658, pUnit:GetMainTank()) 
end

function BerylTreasureHunter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BerylTreasureHunter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BerylTreasureHunter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25353, 1, "BerylTreasureHunter_OnCombat")
RegisterUnitEvent(25353, 2, "BerylTreasureHunter_OnLeaveCombat")
RegisterUnitEvent(25353, 3, "BerylTreasureHunter_OnKilledTarget")
RegisterUnitEvent(25353, 4, "BerylTreasureHunter_OnDied")


--[[ Borean Tundra -- Bloodspore Firestarter.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function BloodsporeFirestarter_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodsporeFirestarter_Fireball", 8000, 0)
Unit:RegisterEvent("BloodsporeFirestarter_FlamingTouch", 3000, 1)
Unit:RegisterEvent("BloodsporeFirestarter_MoltenArmor", 6000, 1)
end

function BloodsporeFirestarter_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20793, pUnit:GetMainTank()) 
end

function BloodsporeFirestarter_FlamingTouch(pUnit, Event) 
pUnit:CastSpell(45985) 
end

function BloodsporeFirestarter_MoltenArmor(pUnit, Event) 
pUnit:CastSpell(35916) 
end

function BloodsporeFirestarter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodsporeFirestarter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodsporeFirestarter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25470, 1, "BloodsporeFirestarter_OnCombat")
RegisterUnitEvent(25470, 2, "BloodsporeFirestarter_OnLeaveCombat")
RegisterUnitEvent(25470, 3, "BloodsporeFirestarter_OnKilledTarget")
RegisterUnitEvent(25470, 4, "BloodsporeFirestarter_OnDied")


--[[ Borean Tundra -- Bloodspore Harvester.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function BloodsporeHarvester_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodsporeHarvester_BloodsporeHaze", 10000, 0)
end

function BloodsporeHarvester_BloodsporeHaze(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50380, pUnit:GetMainTank()) 
end

function BloodsporeHarvester_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodsporeHarvester_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodsporeHarvester_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25467, 1, "BloodsporeHarvester_OnCombat")
RegisterUnitEvent(25467, 2, "BloodsporeHarvester_OnLeaveCombat")
RegisterUnitEvent(25467, 3, "BloodsporeHarvester_OnKilledTarget")
RegisterUnitEvent(25467, 4, "BloodsporeHarvester_OnDied")


--[[ Borean Tundra -- Bloodspore Roaster.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function BloodsporeRoaster_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodsporeRoaster_Roast", 8000, 0)
end

function BloodsporeRoaster_Roast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50402, pUnit:GetMainTank()) 
end

function BloodsporeRoaster_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodsporeRoaster_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodsporeRoaster_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25468, 1, "BloodsporeRoaster_OnCombat")
RegisterUnitEvent(25468, 2, "BloodsporeRoaster_OnLeaveCombat")
RegisterUnitEvent(25468, 3, "BloodsporeRoaster_OnKilledTarget")
RegisterUnitEvent(25468, 4, "BloodsporeRoaster_OnDied")


--[[ Borean Tundra -- Blue Drakonid Supplicant.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function BlueDrakonidSupplicant_OnCombat(Unit, Event)
Unit:RegisterEvent("BlueDrakonidSupplicant_PowerSap", 8000, 0)
end

function BlueDrakonidSupplicant_PowerSap(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50534, pUnit:GetMainTank()) 
end

function BlueDrakonidSupplicant_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BlueDrakonidSupplicant_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BlueDrakonidSupplicant_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25713, 1, "BlueDrakonidSupplicant_OnCombat")
RegisterUnitEvent(25713, 2, "BlueDrakonidSupplicant_OnLeaveCombat")
RegisterUnitEvent(25713, 3, "BlueDrakonidSupplicant_OnKilledTarget")
RegisterUnitEvent(25713, 4, "BlueDrakonidSupplicant_OnDied")


--[[ Borean Tundra -- Boiling Spirit.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function BoilingSpirit_OnCombat(Unit, Event)
Unit:RegisterEvent("BoilingSpirit_ScaldingSteam", 8000, 0)
end

function BoilingSpirit_ScaldingSteam(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50206, pUnit:GetMainTank()) 
end

function BoilingSpirit_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BoilingSpirit_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BoilingSpirit_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25419, 1, "BoilingSpirit_OnCombat")
RegisterUnitEvent(25419, 2, "BoilingSpirit_OnLeaveCombat")
RegisterUnitEvent(25419, 3, "BoilingSpirit_OnKilledTarget")
RegisterUnitEvent(25419, 4, "BoilingSpirit_OnDied")


--[[ Borean Tundra -- Bone Warrior.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function BoneWarrior_OnCombat(Unit, Event)
Unit:RegisterEvent("BoneWarrior_SunderArmor", 6000, 0)
end

function BoneWarrior_SunderArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50370, pUnit:GetMainTank()) 
end

function BoneWarrior_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BoneWarrior_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BoneWarrior_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26126, 1, "BoneWarrior_OnCombat")
RegisterUnitEvent(26126, 2, "BoneWarrior_OnLeaveCombat")
RegisterUnitEvent(26126, 3, "BoneWarrior_OnKilledTarget")
RegisterUnitEvent(26126, 4, "BoneWarrior_OnDied")


--[[ Borean Tundra -- Captain Jacobs.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function CaptainJacobs_OnCombat(Unit, Event)
Unit:RegisterEvent("CaptainJacobs_BladeFlurry", 10000, 0)
Unit:RegisterEvent("CaptainJacobs_MortalStrike", 8000, 0)
end

function CaptainJacobs_BladeFlurry(pUnit, Event) 
pUnit:CastSpell(33735) 
end

function CaptainJacobs_MortalStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32736, pUnit:GetMainTank()) 
end

function CaptainJacobs_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CaptainJacobs_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CaptainJacobs_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26252, 1, "CaptainJacobs_OnCombat")
RegisterUnitEvent(26252, 2, "CaptainJacobs_OnLeaveCombat")
RegisterUnitEvent(26252, 3, "CaptainJacobs_OnKilledTarget")
RegisterUnitEvent(26252, 4, "CaptainJacobs_OnDied")


--[[ Borean Tundra -- Chieftain Gurgleboggle.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function ChieftainGurgleboggle_OnCombat(Unit, Event)
Unit:RegisterEvent("ChieftainGurgleboggle_FlipAttack", 8000, 0)
end

function ChieftainGurgleboggle_FlipAttack(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50533, pUnit:GetMainTank()) 
end

function ChieftainGurgleboggle_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ChieftainGurgleboggle_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ChieftainGurgleboggle_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25725, 1, "ChieftainGurgleboggle_OnCombat")
RegisterUnitEvent(25725, 2, "ChieftainGurgleboggle_OnLeaveCombat")
RegisterUnitEvent(25725, 3, "ChieftainGurgleboggle_OnKilledTarget")
RegisterUnitEvent(25725, 4, "ChieftainGurgleboggle_OnDied")


--[[ Borean Tundra -- Churn.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function Churn_OnCombat(Unit, Event)
Unit:RegisterEvent("Churn_ScaldingSteam", 8000, 0)
end

function Churn_ScaldingSteam(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50206, pUnit:GetMainTank()) 
end

function Churn_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Churn_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Churn_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25418, 1, "Churn_OnCombat")
RegisterUnitEvent(25418, 2, "Churn_OnLeaveCombat")
RegisterUnitEvent(25418, 3, "Churn_OnKilledTarget")
RegisterUnitEvent(25418, 4, "Churn_OnDied")


--[[ Borean Tundra -- Clam Master K.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function ClamMasterK_OnCombat(Unit, Event)
Unit:RegisterEvent("ClamMasterK_HookedNet", 8000, 0)
end

function ClamMasterK_HookedNet(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49711, pUnit:GetMainTank()) 
end

function ClamMasterK_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ClamMasterK_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ClamMasterK_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25800, 1, "ClamMasterK_OnCombat")
RegisterUnitEvent(25800, 2, "ClamMasterK_OnLeaveCombat")
RegisterUnitEvent(25800, 3, "ClamMasterK_OnKilledTarget")
RegisterUnitEvent(25800, 4, "ClamMasterK_OnDied")


--[[ Borean Tundra -- Claximus.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function Claximus_OnCombat(Unit, Event)
Unit:RegisterEvent("Claximus_ArcaneBarrage", 8000, 0)
Unit:RegisterEvent("Claximus_StabilizedMagic", 2000, 1)
end

function Claximus_ArcaneBarrage(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50273, pUnit:GetMainTank()) 
end

function Claximus_StabilizedMagic(pUnit, Event) 
pUnit:CastSpell(50275) 
end

function Claximus_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Claximus_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Claximus_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25209, 1, "Claximus_OnCombat")
RegisterUnitEvent(25209, 2, "Claximus_OnLeaveCombat")
RegisterUnitEvent(25209, 3, "Claximus_OnKilledTarget")
RegisterUnitEvent(25209, 4, "Claximus_OnDied")


--[[ Borean Tundra -- Coldarra Scalesworn.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function ColdarraScalesworn_OnCombat(Unit, Event)
Unit:RegisterEvent("ColdarraScalesworn_FrostNova", 10000, 0)
Unit:RegisterEvent("ColdarraScalesworn_Rend", 8000, 0)
end

function ColdarraScalesworn_FrostNova(pUnit, Event) 
pUnit:CastSpell(12748) 
end

function ColdarraScalesworn_Rend(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11977, pUnit:GetMainTank()) 
end

function ColdarraScalesworn_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ColdarraScalesworn_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ColdarraScalesworn_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25717, 1, "ColdarraScalesworn_OnCombat")
RegisterUnitEvent(25717, 2, "ColdarraScalesworn_OnLeaveCombat")
RegisterUnitEvent(25717, 3, "ColdarraScalesworn_OnKilledTarget")
RegisterUnitEvent(25717, 4, "ColdarraScalesworn_OnDied")


--[[ Borean Tundra -- Coldarra Spellbinder.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function ColdarraSpellbinder_OnCombat(Unit, Event)
Unit:RegisterEvent("ColdarraSpellbinder_Frostbolt", 8000, 0)
end

function ColdarraSpellbinder_Frostbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9672, pUnit:GetMainTank()) 
end

function ColdarraSpellbinder_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ColdarraSpellbinder_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ColdarraSpellbinder_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25719, 1, "ColdarraSpellbinder_OnCombat")
RegisterUnitEvent(25719, 2, "ColdarraSpellbinder_OnLeaveCombat")
RegisterUnitEvent(25719, 3, "ColdarraSpellbinder_OnKilledTarget")
RegisterUnitEvent(25719, 4, "ColdarraSpellbinder_OnDied")


--[[ Borean Tundra -- Coldarra Spellweaver.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function ColdarraSpellweaver_OnCombat(Unit, Event)
Unit:RegisterEvent("ColdarraSpellweaver_ArcaneMissiles", 8000, 0)
end

function ColdarraSpellweaver_ArcaneMissiles(pUnit, Event) 
pUnit:FullCastSpellOnTarget(34447, pUnit:GetMainTank()) 
end

function ColdarraSpellweaver_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ColdarraSpellweaver_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ColdarraSpellweaver_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25722, 1, "ColdarraSpellweaver_OnCombat")
RegisterUnitEvent(25722, 2, "ColdarraSpellweaver_OnLeaveCombat")
RegisterUnitEvent(25722, 3, "ColdarraSpellweaver_OnKilledTarget")
RegisterUnitEvent(25722, 4, "ColdarraSpellweaver_OnDied")


--[[ Borean Tundra -- Coldarra Wyrmkin.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function ColdarraWyrmkin_OnCombat(Unit, Event)
Unit:RegisterEvent("ColdarraWyrmkin_FrostbiteWeapon", 8000, 0)
end

function ColdarraWyrmkin_FrostbiteWeapon(pUnit, Event) 
pUnit:CastSpell(50416) 
end

function ColdarraWyrmkin_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ColdarraWyrmkin_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ColdarraWyrmkin_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25728, 1, "ColdarraWyrmkin_OnCombat")
RegisterUnitEvent(25728, 2, "ColdarraWyrmkin_OnLeaveCombat")
RegisterUnitEvent(25728, 3, "ColdarraWyrmkin_OnKilledTarget")
RegisterUnitEvent(25728, 4, "ColdarraWyrmkin_OnDied")


--[[ Borean Tundra -- Counselor Talbot.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function CounselorTalbot_OnCombat(Unit, Event)
Unit:RegisterEvent("CounselorTalbot_SoulBlast", 10000, 0)
Unit:RegisterEvent("CounselorTalbot_SoulDeflection", 12000, 0)
Unit:RegisterEvent("CounselorTalbot_VampiricBolt", 15000, 0)
end

function CounselorTalbot_SoulBlast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50992, pUnit:GetMainTank()) 
end

function CounselorTalbot_SoulDeflection(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51009, pUnit:GetMainTank()) 
end

function CounselorTalbot_VampiricBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51016, pUnit:GetMainTank()) 
end

function CounselorTalbot_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CounselorTalbot_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CounselorTalbot_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25301, 1, "CounselorTalbot_OnCombat")
RegisterUnitEvent(25301, 2, "CounselorTalbot_OnLeaveCombat")
RegisterUnitEvent(25301, 3, "CounselorTalbot_OnKilledTarget")
RegisterUnitEvent(25301, 4, "CounselorTalbot_OnDied")


--[[ Borean Tundra -- Crypt Crawler.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function CryptCrawler_OnCombat(Unit, Event)
Unit:RegisterEvent("CryptCrawler_CryptScarabs", 6000, 1)
end

function CryptCrawler_CryptScarabs(pUnit, Event) 
pUnit:CastSpell(31600) 
end

function CryptCrawler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CryptCrawler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CryptCrawler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25227, 1, "CryptCrawler_OnCombat")
RegisterUnitEvent(25227, 2, "CryptCrawler_OnLeaveCombat")
RegisterUnitEvent(25227, 3, "CryptCrawler_OnKilledTarget")
RegisterUnitEvent(25227, 4, "CryptCrawler_OnDied")


--[[ Borean Tundra -- Cult Plaguebringer.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function CultPlaguebringer_OnCombat(Unit, Event)
Unit:RegisterEvent("CultPlaguebringer_InjectPlague", 8000, 0)
end

function CultPlaguebringer_InjectPlague(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50356, pUnit:GetMainTank()) 
end

function CultPlaguebringer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CultPlaguebringer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CultPlaguebringer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24957, 1, "CultPlaguebringer_OnCombat")
RegisterUnitEvent(24957, 2, "CultPlaguebringer_OnLeaveCombat")
RegisterUnitEvent(24957, 3, "CultPlaguebringer_OnKilledTarget")
RegisterUnitEvent(24957, 4, "CultPlaguebringer_OnDied")


--[[ Borean Tundra -- Cultist Necrolyte.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function CultistNecrolyte_OnCombat(Unit, Event)
Unit:RegisterEvent("CultistNecrolyte_CurseofAgony", 10000, 0)
Unit:RegisterEvent("CultistNecrolyte_ShadowBolt", 7000, 0)
end

function CultistNecrolyte_CurseofAgony(pUnit, Event) 
pUnit:FullCastSpellOnTarget(18266, pUnit:GetMainTank()) 
end

function CultistNecrolyte_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9613, pUnit:GetMainTank()) 
end

function CultistNecrolyte_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CultistNecrolyte_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CultistNecrolyte_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25651, 1, "CultistNecrolyte_OnCombat")
RegisterUnitEvent(25651, 2, "CultistNecrolyte_OnLeaveCombat")
RegisterUnitEvent(25651, 3, "CultistNecrolyte_OnKilledTarget")
RegisterUnitEvent(25651, 4, "CultistNecrolyte_OnDied")


--[[ Borean Tundra -- Curator Insivius.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function CuratorInsivius_OnCombat(Unit, Event)
Unit:RegisterEvent("CuratorInsivius_Charge", 1000, 1)
Unit:RegisterEvent("CuratorInsivius_FrostNova", 10000, 0)
Unit:RegisterEvent("CuratorInsivius_MortalStrike", 8000, 0)
end

function CuratorInsivius_Charge(pUnit, Event) 
pUnit:FullCastSpellOnTarget(22120, pUnit:GetMainTank()) 
end

function CuratorInsivius_FrostNova(pUnit, Event) 
pUnit:CastSpell(11831) 
end

function CuratorInsivius_MortalStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(39171, pUnit:GetMainTank()) 
end

function CuratorInsivius_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CuratorInsivius_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CuratorInsivius_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25448, 1, "CuratorInsivius_OnCombat")
RegisterUnitEvent(25448, 2, "CuratorInsivius_OnLeaveCombat")
RegisterUnitEvent(25448, 3, "CuratorInsivius_OnKilledTarget")
RegisterUnitEvent(25448, 4, "CuratorInsivius_OnDied")


--[[ Borean Tundra -- Darkfallen Bloodbearer.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function DarkfallenBloodbearer_OnCombat(Unit, Event)
Unit:RegisterEvent("DarkfallenBloodbearer_DeathCoil", 8000, 0)
Unit:RegisterEvent("DarkfallenBloodbearer_IcyTouch", 10000, 0)
end

function DarkfallenBloodbearer_DeathCoil(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50668, pUnit:GetMainTank()) 
end

function DarkfallenBloodbearer_IcyTouch(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50349, pUnit:GetMainTank()) 
end

function DarkfallenBloodbearer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DarkfallenBloodbearer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DarkfallenBloodbearer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26115, 1, "DarkfallenBloodbearer_OnCombat")
RegisterUnitEvent(26115, 2, "DarkfallenBloodbearer_OnLeaveCombat")
RegisterUnitEvent(26115, 3, "DarkfallenBloodbearer_OnKilledTarget")
RegisterUnitEvent(26115, 4, "DarkfallenBloodbearer_OnDied")


--[[ Borean Tundra -- Darkfallen Deathblade.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function DarkfallenDeathblade_OnCombat(Unit, Event)
Unit:RegisterEvent("DarkfallenDeathblade_DeathCoil", 8000, 0)
Unit:RegisterEvent("DarkfallenDeathblade_IcyTouch", 10000, 0)
end

function DarkfallenDeathblade_DeathCoil(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50668, pUnit:GetMainTank()) 
end

function DarkfallenDeathblade_IcyTouch(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50349, pUnit:GetMainTank()) 
end

function DarkfallenDeathblade_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DarkfallenDeathblade_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DarkfallenDeathblade_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26103, 1, "DarkfallenDeathblade_OnCombat")
RegisterUnitEvent(26103, 2, "DarkfallenDeathblade_OnLeaveCombat")
RegisterUnitEvent(26103, 3, "DarkfallenDeathblade_OnKilledTarget")
RegisterUnitEvent(26103, 4, "DarkfallenDeathblade_OnDied")


--[[ Borean Tundra -- Defendo-tank 66D.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function Defendotank66D_OnCombat(Unit, Event)
Unit:RegisterEvent("Defendotank66D_MachineGun", 8000, 0)
Unit:RegisterEvent("Defendotank66D_Shoot", 6000, 0)
end

function Defendotank66D_MachineGun(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49981, pUnit:GetMainTank()) 
end

function Defendotank66D_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49987, pUnit:GetMainTank()) 
end

function Defendotank66D_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Defendotank66D_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Defendotank66D_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25758, 1, "Defendotank66D_OnCombat")
RegisterUnitEvent(25758, 2, "Defendotank66D_OnLeaveCombat")
RegisterUnitEvent(25758, 3, "Defendotank66D_OnKilledTarget")
RegisterUnitEvent(25758, 4, "Defendotank66D_OnDied")


--[[ Borean Tundra -- Den Vermin.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function DenVermin_OnCombat(Unit, Event)
Unit:RegisterEvent("DenVermin_Thrash", 6000, 0)
end

function DenVermin_Thrash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3391, pUnit:GetMainTank()) 
end

function DenVermin_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DenVermin_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DenVermin_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24567, 1, "DenVermin_OnCombat")
RegisterUnitEvent(24567, 2, "DenVermin_OnLeaveCombat")
RegisterUnitEvent(24567, 3, "DenVermin_OnKilledTarget")
RegisterUnitEvent(24567, 4, "DenVermin_OnDied")


--[[ Borean Tundra -- En'kilah Abomination.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function EnkilahAbomination_OnCombat(Unit, Event)
Unit:RegisterEvent("EnkilahAbomination_Cleave", 8000, 0)
Unit:RegisterEvent("EnkilahAbomination_ScourgeHook", 6000, 0)
end

function EnkilahAbomination_Cleave(pUnit, Event) 
pUnit:CastSpell(40504) 
end

function EnkilahAbomination_ScourgeHook(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50335, pUnit:GetMainTank()) 
end

function EnkilahAbomination_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function EnkilahAbomination_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function EnkilahAbomination_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25383, 1, "EnkilahAbomination_OnCombat")
RegisterUnitEvent(25383, 2, "EnkilahAbomination_OnLeaveCombat")
RegisterUnitEvent(25383, 3, "EnkilahAbomination_OnKilledTarget")
RegisterUnitEvent(25383, 4, "EnkilahAbomination_OnDied")


--[[ Borean Tundra -- En'kilah Crypt Fiend.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function EnkilahCryptFiend_OnCombat(Unit, Event)
Unit:RegisterEvent("EnkilahCryptFiend_CryptScarabs", 6000, 1)
end

function EnkilahCryptFiend_CryptScarabs(pUnit, Event) 
pUnit:CastSpell(31600) 
end

function EnkilahCryptFiend_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function EnkilahCryptFiend_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function EnkilahCryptFiend_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25386, 1, "EnkilahCryptFiend_OnCombat")
RegisterUnitEvent(25386, 2, "EnkilahCryptFiend_OnLeaveCombat")
RegisterUnitEvent(25386, 3, "EnkilahCryptFiend_OnKilledTarget")
RegisterUnitEvent(25386, 4, "EnkilahCryptFiend_OnDied")


--[[ Borean Tundra -- En'kilah Gargoyle.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function EnkilahGargoyle_OnCombat(Unit, Event)
Unit:RegisterEvent("EnkilahGargoyle_GargoyleStrike", 6000, 0)
end

function EnkilahGargoyle_GargoyleStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(16564, pUnit:GetMainTank()) 
end

function EnkilahGargoyle_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function EnkilahGargoyle_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function EnkilahGargoyle_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25387, 1, "EnkilahGargoyle_OnCombat")
RegisterUnitEvent(25387, 2, "EnkilahGargoyle_OnLeaveCombat")
RegisterUnitEvent(25387, 3, "EnkilahGargoyle_OnKilledTarget")
RegisterUnitEvent(25387, 4, "EnkilahGargoyle_OnDied")


--[[ Borean Tundra -- En'kilah Ghoul.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function EnkilahGhoul_OnCombat(Unit, Event)
Unit:RegisterEvent("EnkilahGhoul_FleshRip", 8000, 0)
end

function EnkilahGhoul_FleshRip(pUnit, Event) 
pUnit:FullCastSpellOnTarget(38056, pUnit:GetMainTank()) 
end

function EnkilahGhoul_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function EnkilahGhoul_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function EnkilahGhoul_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25393, 1, "EnkilahGhoul_OnCombat")
RegisterUnitEvent(25393, 2, "EnkilahGhoul_OnLeaveCombat")
RegisterUnitEvent(25393, 3, "EnkilahGhoul_OnKilledTarget")
RegisterUnitEvent(25393, 4, "EnkilahGhoul_OnDied")


--[[ Borean Tundra -- En'kilah Necrolord.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function EnkilahNecrolord_OnCombat(Unit, Event)
Unit:RegisterEvent("EnkilahNecrolord_BoneArmor", 2000, 1)
Unit:RegisterEvent("EnkilahNecrolord_SharpenedBone", 6000, 0)
end

function EnkilahNecrolord_BoneArmor(pUnit, Event) 
pUnit:CastSpell(50324) 
end

function EnkilahNecrolord_SharpenedBone(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50323, pUnit:GetMainTank()) 
end

function EnkilahNecrolord_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function EnkilahNecrolord_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function EnkilahNecrolord_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25609, 1, "EnkilahNecrolord_OnCombat")
RegisterUnitEvent(25609, 2, "EnkilahNecrolord_OnLeaveCombat")
RegisterUnitEvent(25609, 3, "EnkilahNecrolord_OnKilledTarget")
RegisterUnitEvent(25609, 4, "EnkilahNecrolord_OnDied")


--[[ Borean Tundra -- En'kilah Necromancer.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function EnkilahNecromancer_OnCombat(Unit, Event)
Unit:RegisterEvent("EnkilahNecromancer_Corruption", 10000, 0)
Unit:RegisterEvent("EnkilahNecromancer_ShadowBolt", 7000, 0)
end

function EnkilahNecromancer_Corruption(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32063, pUnit:GetMainTank()) 
end

function EnkilahNecromancer_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9613, pUnit:GetMainTank()) 
end

function EnkilahNecromancer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function EnkilahNecromancer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function EnkilahNecromancer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25378, 1, "EnkilahNecromancer_OnCombat")
RegisterUnitEvent(25378, 2, "EnkilahNecromancer_OnLeaveCombat")
RegisterUnitEvent(25378, 3, "EnkilahNecromancer_OnKilledTarget")
RegisterUnitEvent(25378, 4, "EnkilahNecromancer_OnDied")


--[[ Borean Tundra -- Enraged Tempest.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function EnragedTempest_OnCombat(Unit, Event)
Unit:RegisterEvent("EnragedTempest_Enrage", 10000, 0)
Unit:RegisterEvent("EnragedTempest_Zephyr", 9000, 1)
end

function EnragedTempest_Enrage(pUnit, Event) 
pUnit:CastSpell(50420) 
end

function EnragedTempest_Zephyr(pUnit, Event) 
pUnit:CastSpell(50215) 
end

function EnragedTempest_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function EnragedTempest_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function EnragedTempest_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25415, 1, "EnragedTempest_OnCombat")
RegisterUnitEvent(25415, 2, "EnragedTempest_OnLeaveCombat")
RegisterUnitEvent(25415, 3, "EnragedTempest_OnKilledTarget")
RegisterUnitEvent(25415, 4, "EnragedTempest_OnDied")


--[[ Borean Tundra -- Festering Ghoul.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function FesteringGhoul_OnCombat(Unit, Event)
Unit:RegisterEvent("FesteringGhoul_RotArmor", 10000, 0)
end

function FesteringGhoul_RotArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50361, pUnit:GetMainTank()) 
end

function FesteringGhoul_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FesteringGhoul_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FesteringGhoul_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25660, 1, "FesteringGhoul_OnCombat")
RegisterUnitEvent(25660, 2, "FesteringGhoul_OnLeaveCombat")
RegisterUnitEvent(25660, 3, "FesteringGhoul_OnKilledTarget")
RegisterUnitEvent(25660, 4, "FesteringGhoul_OnDied")


--[[ Borean Tundra -- Force-Commander Steeljaw.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function ForceCommanderSteeljaw_OnCombat(Unit, Event)
Unit:RegisterEvent("ForceCommanderSteeljaw_Cleave", 6000, 0)
Unit:RegisterEvent("ForceCommanderSteeljaw_PiercingHowl", 10000, 0)
Unit:RegisterEvent("ForceCommanderSteeljaw_SteelJaw", 12000, 0)
Unit:RegisterEvent("ForceCommanderSteeljaw_Whirlwind", 8000, 0)
end

function ForceCommanderSteeljaw_Cleave(pUnit, Event) 
pUnit:CastSpell(15284) 
end

function ForceCommanderSteeljaw_PiercingHowl(pUnit, Event) 
pUnit:CastSpell(38256) 
end

function ForceCommanderSteeljaw_SteelJaw(pUnit, Event) 
pUnit:CastSpell(50204) 
end

function ForceCommanderSteeljaw_Whirlwind(pUnit, Event) 
pUnit:CastSpell(41057) 
end

function ForceCommanderSteeljaw_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ForceCommanderSteeljaw_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ForceCommanderSteeljaw_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25359, 1, "ForceCommanderSteeljaw_OnCombat")
RegisterUnitEvent(25359, 2, "ForceCommanderSteeljaw_OnLeaveCombat")
RegisterUnitEvent(25359, 3, "ForceCommanderSteeljaw_OnKilledTarget")
RegisterUnitEvent(25359, 4, "ForceCommanderSteeljaw_OnDied")


--[[ Borean Tundra -- Frozen Elemental.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function FrozenElemental_OnCombat(Unit, Event)
Unit:RegisterEvent("FrozenElemental_IceSpike", 8000, 0)
end

function FrozenElemental_IceSpike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50094, pUnit:GetMainTank()) 
end

function FrozenElemental_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FrozenElemental_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FrozenElemental_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25715, 1, "FrozenElemental_OnCombat")
RegisterUnitEvent(25715, 2, "FrozenElemental_OnLeaveCombat")
RegisterUnitEvent(25715, 3, "FrozenElemental_OnKilledTarget")
RegisterUnitEvent(25715, 4, "FrozenElemental_OnDied")


--[[ Borean Tundra -- Frozen Sphere.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function FrozenSphere_OnCombat(Unit, Event)
Unit:RegisterEvent("FrozenSphere_IceShard", 6000, 0)
end

function FrozenSphere_IceShard(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50578, pUnit:GetMainTank()) 
end

function FrozenSphere_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FrozenSphere_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FrozenSphere_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(28066, 1, "FrozenSphere_OnCombat")
RegisterUnitEvent(28066, 2, "FrozenSphere_OnLeaveCombat")
RegisterUnitEvent(28066, 3, "FrozenSphere_OnKilledTarget")
RegisterUnitEvent(28066, 4, "FrozenSphere_OnDied")


--[[ Borean Tundra -- Fumblub Gearwind.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function FumblubGearwind_OnCombat(Unit, Event)
Unit:RegisterEvent("FumblubGearwind_MachineGun", 8000, 0)
end

function FumblubGearwind_MachineGun(pUnit, Event) 
pUnit:FullCastSpellOnTarget(60906, pUnit:GetMainTank()) 
end

function FumblubGearwind_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FumblubGearwind_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FumblubGearwind_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(32358, 1, "FumblubGearwind_OnCombat")
RegisterUnitEvent(32358, 2, "FumblubGearwind_OnLeaveCombat")
RegisterUnitEvent(32358, 3, "FumblubGearwind_OnKilledTarget")
RegisterUnitEvent(32358, 4, "FumblubGearwind_OnDied")


--[[ Borean Tundra -- Gamel the Cruel.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function GameltheCruel_OnCombat(Unit, Event)
Unit:RegisterEvent("GameltheCruel_MortalStrike", 6000, 0)
end

function GameltheCruel_MortalStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13737, pUnit:GetMainTank()) 
end

function GameltheCruel_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GameltheCruel_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GameltheCruel_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26449, 1, "GameltheCruel_OnCombat")
RegisterUnitEvent(26449, 2, "GameltheCruel_OnLeaveCombat")
RegisterUnitEvent(26449, 3, "GameltheCruel_OnKilledTarget")
RegisterUnitEvent(26449, 4, "GameltheCruel_OnDied")


--[[ Borean Tundra -- Gammothra the Tormentor.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function GammothratheTormentor_OnCombat(Unit, Event)
Unit:RegisterEvent("GammothratheTormentor_MagnataurCharge", 10000, 0)
Unit:RegisterEvent("GammothratheTormentor_TuskStrike", 8000, 0)
end

function GammothratheTormentor_MagnataurCharge(pUnit, Event) 
pUnit:CastSpell(50413) 
end

function GammothratheTormentor_TuskStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50410, pUnit:GetMainTank()) 
end

function GammothratheTormentor_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GammothratheTormentor_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GammothratheTormentor_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25789, 1, "GammothratheTormentor_OnCombat")
RegisterUnitEvent(25789, 2, "GammothratheTormentor_OnLeaveCombat")
RegisterUnitEvent(25789, 3, "GammothratheTormentor_OnKilledTarget")
RegisterUnitEvent(25789, 4, "GammothratheTormentor_OnDied")


--[[ Borean Tundra -- General Cerulean.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function GeneralCerulean_OnCombat(Unit, Event)
Unit:RegisterEvent("GeneralCerulean_FrostShock", 7000, 0)
end

function GeneralCerulean_FrostShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15499, pUnit:GetMainTank()) 
end

function GeneralCerulean_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GeneralCerulean_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GeneralCerulean_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25716, 1, "GeneralCerulean_OnCombat")
RegisterUnitEvent(25716, 2, "GeneralCerulean_OnLeaveCombat")
RegisterUnitEvent(25716, 3, "GeneralCerulean_OnKilledTarget")
RegisterUnitEvent(25716, 4, "GeneralCerulean_OnDied")


--[[ Borean Tundra -- Gerald Green.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function GeraldGreen_OnCombat(Unit, Event)
Unit:RegisterEvent("GeraldGreen_Cleave", 7000, 0)
end

function GeraldGreen_Cleave(pUnit, Event) 
pUnit:FullCastSpellOnTarget(40504, pUnit:GetMainTank()) 
end

function GeraldGreen_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GeraldGreen_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GeraldGreen_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26083, 1, "GeraldGreen_OnCombat")
RegisterUnitEvent(26083, 2, "GeraldGreen_OnLeaveCombat")
RegisterUnitEvent(26083, 3, "GeraldGreen_OnKilledTarget")
RegisterUnitEvent(26083, 4, "GeraldGreen_OnDied")


--[[ Borean Tundra -- Ghostly Sage.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function GhostlySage_OnCombat(Unit, Event)
Unit:RegisterEvent("GhostlySage_Moonfire", 6000, 0)
Unit:RegisterEvent("GhostlySage_Wrath", 8000, 0)
end

function GhostlySage_Moonfire(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15798, pUnit:GetMainTank()) 
end

function GhostlySage_Wrath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9739, pUnit:GetMainTank()) 
end

function GhostlySage_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GhostlySage_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GhostlySage_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25351, 1, "GhostlySage_OnCombat")
RegisterUnitEvent(25351, 2, "GhostlySage_OnLeaveCombat")
RegisterUnitEvent(25351, 3, "GhostlySage_OnKilledTarget")
RegisterUnitEvent(25351, 4, "GhostlySage_OnDied")


--[[ Borean Tundra -- Glacial Ancient.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function GlacialAncient_OnCombat(Unit, Event)
Unit:RegisterEvent("GlacialAncient_FrostBreath", 8000, 0)
end

function GlacialAncient_FrostBreath(pUnit, Event) 
pUnit:CastSpell(50505) 
end

function GlacialAncient_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GlacialAncient_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GlacialAncient_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25709, 1, "GlacialAncient_OnCombat")
RegisterUnitEvent(25709, 2, "GlacialAncient_OnLeaveCombat")
RegisterUnitEvent(25709, 3, "GlacialAncient_OnKilledTarget")
RegisterUnitEvent(25709, 4, "GlacialAncient_OnDied")


--[[ Borean Tundra -- Glimmer Bay Orca.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function GlimmerBayOrca_OnCombat(Unit, Event)
Unit:RegisterEvent("GlimmerBayOrca_FlipperThwack", 8000, 0)
end

function GlimmerBayOrca_FlipperThwack(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50169, pUnit:GetMainTank()) 
end

function GlimmerBayOrca_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GlimmerBayOrca_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GlimmerBayOrca_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25204, 1, "GlimmerBayOrca_OnCombat")
RegisterUnitEvent(25204, 2, "GlimmerBayOrca_OnLeaveCombat")
RegisterUnitEvent(25204, 3, "GlimmerBayOrca_OnKilledTarget")
RegisterUnitEvent(25204, 4, "GlimmerBayOrca_OnDied")


--[[ Borean Tundra -- Glrggl.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function Glrggl_OnCombat(Unit, Event)
Unit:RegisterEvent("Glrggl_FlipperThwack", 8000, 0)
end

function Glrggl_FlipperThwack(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50169, pUnit:GetMainTank()) 
end

function Glrggl_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Glrggl_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Glrggl_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25203, 1, "Glrggl_OnCombat")
RegisterUnitEvent(25203, 2, "Glrggl_OnLeaveCombat")
RegisterUnitEvent(25203, 3, "Glrggl_OnKilledTarget")
RegisterUnitEvent(25203, 4, "Glrggl_OnDied")


--[[ Borean Tundra -- Gorloc Dredger.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function GorlocDredger_OnCombat(Unit, Event)
Unit:RegisterEvent("GorlocDredger_DeepDredge", 6000, 0)
Unit:RegisterEvent("GorlocDredger_Whirlwind", 9000, 0)
end

function GorlocDredger_DeepDredge(pUnit, Event) 
pUnit:CastSpell(50520) 
end

function GorlocDredger_Whirlwind(pUnit, Event) 
pUnit:CastSpell(15576) 
end

function GorlocDredger_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GorlocDredger_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GorlocDredger_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25701, 1, "GorlocDredger_OnCombat")
RegisterUnitEvent(25701, 2, "GorlocDredger_OnLeaveCombat")
RegisterUnitEvent(25701, 3, "GorlocDredger_OnKilledTarget")
RegisterUnitEvent(25701, 4, "GorlocDredger_OnDied")


--[[ Borean Tundra -- Gorloc Gibberer.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function GorlocGibberer_OnCombat(Unit, Event)
Unit:RegisterEvent("GorlocGibberer_DeepDredge", 6000, 0)
Unit:RegisterEvent("GorlocGibberer_Whirlwind", 9000, 0)
end

function GorlocGibberer_DeepDredge(pUnit, Event) 
pUnit:CastSpell(50520) 
end

function GorlocGibberer_Whirlwind(pUnit, Event) 
pUnit:CastSpell(15576) 
end

function GorlocGibberer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GorlocGibberer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GorlocGibberer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25686, 1, "GorlocGibberer_OnCombat")
RegisterUnitEvent(25686, 2, "GorlocGibberer_OnLeaveCombat")
RegisterUnitEvent(25686, 3, "GorlocGibberer_OnKilledTarget")
RegisterUnitEvent(25686, 4, "GorlocGibberer_OnDied")


--[[ Borean Tundra -- Gorloc Hunter.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function GorlocHunter_OnCombat(Unit, Event)
Unit:RegisterEvent("GorlocHunter_ParalyzingSlime", 7000, 0)
end

function GorlocHunter_ParalyzingSlime(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50523, pUnit:GetMainTank()) 
end

function GorlocHunter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GorlocHunter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GorlocHunter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25700, 1, "GorlocHunter_OnCombat")
RegisterUnitEvent(25700, 2, "GorlocHunter_OnLeaveCombat")
RegisterUnitEvent(25700, 3, "GorlocHunter_OnKilledTarget")
RegisterUnitEvent(25700, 4, "GorlocHunter_OnDied")


--[[ Borean Tundra -- Gorloc Mud Splasher.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function GorlocMudSplasher_OnCombat(Unit, Event)
Unit:RegisterEvent("GorlocMudSplasher_GorlocStomp", 6000, 0)
end

function GorlocMudSplasher_GorlocStomp(pUnit, Event) 
pUnit:CastSpell(50522) 
end

function GorlocMudSplasher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GorlocMudSplasher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GorlocMudSplasher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25699, 1, "GorlocMudSplasher_OnCombat")
RegisterUnitEvent(25699, 2, "GorlocMudSplasher_OnLeaveCombat")
RegisterUnitEvent(25699, 3, "GorlocMudSplasher_OnKilledTarget")
RegisterUnitEvent(25699, 4, "GorlocMudSplasher_OnDied")


--[[ Borean Tundra -- Gorloc Steam Belcher.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function GorlocSteamBelcher_OnCombat(Unit, Event)
Unit:RegisterEvent("GorlocSteamBelcher_BelchBlast", 7000, 0)
end

function GorlocSteamBelcher_BelchBlast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50538, pUnit:GetMainTank()) 
end

function GorlocSteamBelcher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GorlocSteamBelcher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GorlocSteamBelcher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25687, 1, "GorlocSteamBelcher_OnCombat")
RegisterUnitEvent(25687, 2, "GorlocSteamBelcher_OnLeaveCombat")
RegisterUnitEvent(25687, 3, "GorlocSteamBelcher_OnKilledTarget")
RegisterUnitEvent(25687, 4, "GorlocSteamBelcher_OnDied")


--[[ Borean Tundra -- Gorloc Waddler.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function GorlocWaddler_OnCombat(Unit, Event)
Unit:RegisterEvent("GorlocWaddler_GorlocStomp", 7000, 0)
end

function GorlocWaddler_GorlocStomp(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50522, pUnit:GetMainTank()) 
end

function GorlocWaddler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GorlocWaddler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GorlocWaddler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25685, 1, "GorlocWaddler_OnCombat")
RegisterUnitEvent(25685, 2, "GorlocWaddler_OnLeaveCombat")
RegisterUnitEvent(25685, 3, "GorlocWaddler_OnKilledTarget")
RegisterUnitEvent(25685, 4, "GorlocWaddler_OnDied")


--[[ Borean Tundra -- Harold Lane.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function HaroldLane_OnCombat(Unit, Event)
Unit:RegisterEvent("HaroldLane_BearTrap", 2000, 1)
Unit:RegisterEvent("HaroldLane_ThrowBearPelt", 8000, 0)
end

function HaroldLane_BearTrap(pUnit, Event) 
pUnit:CastSpell(53432) 
end

function HaroldLane_ThrowBearPelt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(53425, pUnit:GetMainTank()) 
end

function HaroldLane_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HaroldLane_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HaroldLane_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25804, 1, "HaroldLane_OnCombat")
RegisterUnitEvent(25804, 2, "HaroldLane_OnLeaveCombat")
RegisterUnitEvent(25804, 3, "HaroldLane_OnKilledTarget")
RegisterUnitEvent(25804, 4, "HaroldLane_OnDied")


--[[ Borean Tundra -- Harvest Collector.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function HarvestCollector_OnCombat(Unit, Event)
Unit:RegisterEvent("HarvestCollector_ClawSlash", 6000, 0)
end

function HarvestCollector_ClawSlash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(54185, pUnit:GetMainTank()) 
end

function HarvestCollector_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HarvestCollector_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HarvestCollector_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25623, 1, "HarvestCollector_OnCombat")
RegisterUnitEvent(25623, 2, "HarvestCollector_OnLeaveCombat")
RegisterUnitEvent(25623, 3, "HarvestCollector_OnKilledTarget")
RegisterUnitEvent(25623, 4, "HarvestCollector_OnDied")


--[[ Borean Tundra -- Heigarr the Horrible.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function HeigarrtheHorrible_OnCombat(Unit, Event)
Unit:RegisterEvent("HeigarrtheHorrible_Cleave", 7000, 0)
Unit:RegisterEvent("HeigarrtheHorrible_ConcussionBlow", 9000, 0)
end

function HeigarrtheHorrible_Cleave(pUnit, Event) 
pUnit:CastSpell(40504) 
end

function HeigarrtheHorrible_ConcussionBlow(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32588, pUnit:GetMainTank()) 
end

function HeigarrtheHorrible_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HeigarrtheHorrible_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HeigarrtheHorrible_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26266, 1, "HeigarrtheHorrible_OnCombat")
RegisterUnitEvent(26266, 2, "HeigarrtheHorrible_OnLeaveCombat")
RegisterUnitEvent(26266, 3, "HeigarrtheHorrible_OnKilledTarget")
RegisterUnitEvent(26266, 4, "HeigarrtheHorrible_OnDied")


--[[ Borean Tundra -- High Priest Naferset.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function HighPriestNaferset_OnCombat(Unit, Event)
Unit:RegisterEvent("HighPriestNaferset_MindBlast", 6000, 0)
Unit:RegisterEvent("HighPriestNaferset_Renew", 13000, 0)
end

function HighPriestNaferset_MindBlast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15587, pUnit:GetMainTank()) 
end

function HighPriestNaferset_Renew(pUnit, Event) 
pUnit:CastSpell(11640) 
end

function HighPriestNaferset_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HighPriestNaferset_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HighPriestNaferset_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26076, 1, "HighPriestNaferset_OnCombat")
RegisterUnitEvent(26076, 2, "HighPriestNaferset_OnLeaveCombat")
RegisterUnitEvent(26076, 3, "HighPriestNaferset_OnKilledTarget")
RegisterUnitEvent(26076, 4, "HighPriestNaferset_OnDied")


--[[ Borean Tundra -- High Priest Talet-Kha.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function HighPriestTaletKha_OnCombat(Unit, Event)
Unit:RegisterEvent("HighPriestTaletKha_MindBlast", 6000, 0)
Unit:RegisterEvent("HighPriestTaletKha_Renew", 13000, 0)
end

function HighPriestTaletKha_MindBlast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15587, pUnit:GetMainTank()) 
end

function HighPriestTaletKha_Renew(pUnit, Event) 
pUnit:CastSpell(11640) 
end

function HighPriestTaletKha_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HighPriestTaletKha_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HighPriestTaletKha_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26073, 1, "HighPriestTaletKha_OnCombat")
RegisterUnitEvent(26073, 2, "HighPriestTaletKha_OnLeaveCombat")
RegisterUnitEvent(26073, 3, "HighPriestTaletKha_OnKilledTarget")
RegisterUnitEvent(26073, 4, "HighPriestTaletKha_OnDied")


--[[ Borean Tundra -- Icehorn.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function Icehorn_OnCombat(Unit, Event)
Unit:RegisterEvent("Icehorn_Romp", 8000, 0)
end

function Icehorn_Romp(pUnit, Event) 
pUnit:CastSpell(57468) 
end

function Icehorn_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Icehorn_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Icehorn_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(32361, 1, "Icehorn_OnCombat")
RegisterUnitEvent(32361, 2, "Icehorn_OnLeaveCombat")
RegisterUnitEvent(32361, 3, "Icehorn_OnKilledTarget")
RegisterUnitEvent(32361, 4, "Icehorn_OnDied")


--[[ Borean Tundra -- Injured Warsong Engineer.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function InjuredWarsongEngineer_OnCombat(Unit, Event)
Unit:RegisterEvent("InjuredWarsongEngineer_GoblinDragonGun", 8000, 0)
Unit:RegisterEvent("InjuredWarsongEngineer_SuperShrinkRay", 10000, 0)
end

function InjuredWarsongEngineer_GoblinDragonGun(pUnit, Event) 
pUnit:CastSpell(44273) 
end

function InjuredWarsongEngineer_SuperShrinkRay(pUnit, Event) 
pUnit:CastSpell(22742) 
end

function InjuredWarsongEngineer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function InjuredWarsongEngineer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function InjuredWarsongEngineer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27110, 1, "InjuredWarsongEngineer_OnCombat")
RegisterUnitEvent(27110, 2, "InjuredWarsongEngineer_OnLeaveCombat")
RegisterUnitEvent(27110, 3, "InjuredWarsongEngineer_OnKilledTarget")
RegisterUnitEvent(27110, 4, "InjuredWarsongEngineer_OnDied")


--[[ Borean Tundra -- Injured Warsong Mage.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function InjuredWarsongMage_OnCombat(Unit, Event)
Unit:RegisterEvent("InjuredWarsongMage_ArcaneExplosion", 6000, 0)
Unit:RegisterEvent("InjuredWarsongMage_Blizzard", 10000, 0)
Unit:RegisterEvent("InjuredWarsongMage_Pyroblast", 11000, 0)
end

function InjuredWarsongMage_ArcaneExplosion(pUnit, Event) 
pUnit:CastSpell(34933) 
end

function InjuredWarsongMage_Blizzard(pUnit, Event) 
pUnit:CastSpell(46195) 
end

function InjuredWarsongMage_Pyroblast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(17274, pUnit:GetMainTank()) 
end

function InjuredWarsongMage_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function InjuredWarsongMage_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function InjuredWarsongMage_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27107, 1, "InjuredWarsongMage_OnCombat")
RegisterUnitEvent(27107, 2, "InjuredWarsongMage_OnLeaveCombat")
RegisterUnitEvent(27107, 3, "InjuredWarsongMage_OnKilledTarget")
RegisterUnitEvent(27107, 4, "InjuredWarsongMage_OnDied")


--[[ Borean Tundra -- Injured Warsong Shaman.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function InjuredWarsongShaman_OnCombat(Unit, Event)
Unit:RegisterEvent("InjuredWarsongShaman_ChainLightning", 8000, 0)
Unit:RegisterEvent("InjuredWarsongShaman_EarthShock", 6000, 0)
end

function InjuredWarsongShaman_ChainLightning(pUnit, Event) 
pUnit:FullCastSpellOnTarget(16033, pUnit:GetMainTank()) 
end

function InjuredWarsongShaman_EarthShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(25025, pUnit:GetMainTank()) 
end

function InjuredWarsongShaman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function InjuredWarsongShaman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function InjuredWarsongShaman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27108, 1, "InjuredWarsongShaman_OnCombat")
RegisterUnitEvent(27108, 2, "InjuredWarsongShaman_OnLeaveCombat")
RegisterUnitEvent(27108, 3, "InjuredWarsongShaman_OnKilledTarget")
RegisterUnitEvent(27108, 4, "InjuredWarsongShaman_OnDied")


--[[ Borean Tundra -- Injured Warsong Warrior.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function InjuredWarsongWarrior_OnCombat(Unit, Event)
Unit:RegisterEvent("InjuredWarsongWarrior_Cleave", 6000, 0)
Unit:RegisterEvent("InjuredWarsongWarrior_HeroicStrike", 7000, 0)
end

function InjuredWarsongWarrior_Cleave(pUnit, Event) 
pUnit:CastSpell(39047) 
end

function InjuredWarsongWarrior_HeroicStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(45026, pUnit:GetMainTank()) 
end

function InjuredWarsongWarrior_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function InjuredWarsongWarrior_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function InjuredWarsongWarrior_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27106, 1, "InjuredWarsongWarrior_OnCombat")
RegisterUnitEvent(27106, 2, "InjuredWarsongWarrior_OnLeaveCombat")
RegisterUnitEvent(27106, 3, "InjuredWarsongWarrior_OnKilledTarget")
RegisterUnitEvent(27106, 4, "InjuredWarsongWarrior_OnDied")


--[[ Borean Tundra -- Inquisitor Caleras.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function InquisitorCaleras_OnCombat(Unit, Event)
Unit:RegisterEvent("InquisitorCaleras_FrostNova", 10000, 0)
Unit:RegisterEvent("InquisitorCaleras_Frostbolt", 8000, 0)
end

function InquisitorCaleras_FrostNova(pUnit, Event) 
pUnit:CastSpell(32192) 
end

function InquisitorCaleras_Frostbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15043, pUnit:GetMainTank()) 
end

function InquisitorCaleras_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function InquisitorCaleras_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function InquisitorCaleras_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25720, 1, "InquisitorCaleras_OnCombat")
RegisterUnitEvent(25720, 2, "InquisitorCaleras_OnLeaveCombat")
RegisterUnitEvent(25720, 3, "InquisitorCaleras_OnKilledTarget")
RegisterUnitEvent(25720, 4, "InquisitorCaleras_OnDied")


--[[ Borean Tundra -- Ith'rix the Harvester.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function IthrixtheHarvester_OnCombat(Unit, Event)
Unit:RegisterEvent("IthrixtheHarvester_PoisonStinger", 7000, 0)
Unit:RegisterEvent("IthrixtheHarvester_StingerRage", 9000, 0)
Unit:RegisterEvent("IthrixtheHarvester_VenomSpit", 10000, 0)
end

function IthrixtheHarvester_PoisonStinger(pUnit, Event) 
pUnit:FullCastSpellOnTarget(25748, pUnit:GetMainTank()) 
end

function IthrixtheHarvester_StingerRage(pUnit, Event) 
pUnit:CastSpell(34392) 
end

function IthrixtheHarvester_VenomSpit(pUnit, Event) 
pUnit:FullCastSpellOnTarget(45592, pUnit:GetMainTank()) 
end

function IthrixtheHarvester_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function IthrixtheHarvester_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function IthrixtheHarvester_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25453, 1, "IthrixtheHarvester_OnCombat")
RegisterUnitEvent(25453, 2, "IthrixtheHarvester_OnLeaveCombat")
RegisterUnitEvent(25453, 3, "IthrixtheHarvester_OnKilledTarget")
RegisterUnitEvent(25453, 4, "IthrixtheHarvester_OnDied")


--[[ Borean Tundra -- Justicar Julia Celeste.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function JusticarJuliaCeleste_OnCombat(Unit, Event)
Unit:RegisterEvent("JusticarJuliaCeleste_HammerofJustice", 10000, 0)
end

function JusticarJuliaCeleste_HammerofJustice(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13005, pUnit:GetMainTank()) 
end

function JusticarJuliaCeleste_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function JusticarJuliaCeleste_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function JusticarJuliaCeleste_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25264, 1, "JusticarJuliaCeleste_OnCombat")
RegisterUnitEvent(25264, 2, "JusticarJuliaCeleste_OnLeaveCombat")
RegisterUnitEvent(25264, 3, "JusticarJuliaCeleste_OnKilledTarget")
RegisterUnitEvent(25264, 4, "JusticarJuliaCeleste_OnDied")


--[[ Borean Tundra -- Kaganishu.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function Kaganishu_OnCombat(Unit, Event)
Unit:RegisterEvent("Kaganishu_BlastWave", 9000, 0)
Unit:RegisterEvent("Kaganishu_FireNovaTotem", 2000, 1)
Unit:RegisterEvent("Kaganishu_Fireball", 7000, 0)
end

function Kaganishu_BlastWave(pUnit, Event) 
pUnit:CastSpell(15744) 
end

function Kaganishu_FireNovaTotem(pUnit, Event) 
pUnit:CastSpell(44257) 
end

function Kaganishu_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(19816, pUnit:GetMainTank()) 
end

function Kaganishu_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Kaganishu_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Kaganishu_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25427, 1, "Kaganishu_OnCombat")
RegisterUnitEvent(25427, 2, "Kaganishu_OnLeaveCombat")
RegisterUnitEvent(25427, 3, "Kaganishu_OnKilledTarget")
RegisterUnitEvent(25427, 4, "Kaganishu_OnDied")


--[[ Borean Tundra -- Karen the Culler.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function KarentheCuller_OnCombat(Unit, Event)
Unit:RegisterEvent("KarentheCuller_Cleave", 6000, 0)
Unit:RegisterEvent("KarentheCuller_Intercept", 1000, 1)
Unit:RegisterEvent("KarentheCuller_Whirlwind", 9000, 0)
end

function KarentheCuller_Cleave(pUnit, Event) 
pUnit:CastSpell(42724) 
end

function KarentheCuller_Intercept(pUnit, Event) 
pUnit:FullCastSpellOnTarget(27577, pUnit:GetMainTank()) 
end

function KarentheCuller_Whirlwind(pUnit, Event) 
pUnit:CastSpell(48281) 
end

function KarentheCuller_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function KarentheCuller_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function KarentheCuller_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25803, 1, "KarentheCuller_OnCombat")
RegisterUnitEvent(25803, 2, "KarentheCuller_OnLeaveCombat")
RegisterUnitEvent(25803, 3, "KarentheCuller_OnKilledTarget")
RegisterUnitEvent(25803, 4, "KarentheCuller_OnDied")


--[[ Borean Tundra -- Kel'Thuzad.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function KelThuzad_OnCombat(Unit, Event)
Unit:RegisterEvent("KelThuzad_SoulFlay", 15000, 0)
Unit:RegisterEvent("KelThuzad_UnholyFrenzy", 20000, 0)
end

function KelThuzad_SoulFlay(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50319, pUnit:GetMainTank()) 
end

function KelThuzad_UnholyFrenzy(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50312, pUnit:GetMainTank()) 
end

function KelThuzad_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function KelThuzad_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function KelThuzad_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25465, 1, "KelThuzad_OnCombat")
RegisterUnitEvent(25465, 2, "KelThuzad_OnLeaveCombat")
RegisterUnitEvent(25465, 3, "KelThuzad_OnKilledTarget")
RegisterUnitEvent(25465, 4, "KelThuzad_OnDied")


--[[ Borean Tundra -- Kvaldir Mist Lord.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function KvaldirMistLord_OnCombat(Unit, Event)
Unit:RegisterEvent("KvaldirMistLord_WaveCrash", 8000, 0)
end

function KvaldirMistLord_WaveCrash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49922, pUnit:GetMainTank()) 
end

function KvaldirMistLord_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function KvaldirMistLord_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function KvaldirMistLord_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25496, 1, "KvaldirMistLord_OnCombat")
RegisterUnitEvent(25496, 2, "KvaldirMistLord_OnLeaveCombat")
RegisterUnitEvent(25496, 3, "KvaldirMistLord_OnKilledTarget")
RegisterUnitEvent(25496, 4, "KvaldirMistLord_OnDied")


--[[ Borean Tundra -- Kvaldir Mistweaver.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function KvaldirMistweaver_OnCombat(Unit, Event)
Unit:RegisterEvent("KvaldirMistweaver_MistofStrangulation", 8000, 0)
end

function KvaldirMistweaver_MistofStrangulation(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49816, pUnit:GetMainTank()) 
end

function KvaldirMistweaver_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function KvaldirMistweaver_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function KvaldirMistweaver_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25479, 1, "KvaldirMistweaver_OnCombat")
RegisterUnitEvent(25479, 2, "KvaldirMistweaver_OnLeaveCombat")
RegisterUnitEvent(25479, 3, "KvaldirMistweaver_OnKilledTarget")
RegisterUnitEvent(25479, 4, "KvaldirMistweaver_OnDied")


--[[ Borean Tundra -- Landing Crawler.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function LandingCrawler_OnCombat(Unit, Event)
Unit:RegisterEvent("LandingCrawler_ClawGrasp", 10000, 0)
end

function LandingCrawler_ClawGrasp(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49978, pUnit:GetMainTank()) 
end

function LandingCrawler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LandingCrawler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LandingCrawler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25481, 1, "LandingCrawler_OnCombat")
RegisterUnitEvent(25481, 2, "LandingCrawler_OnLeaveCombat")
RegisterUnitEvent(25481, 3, "LandingCrawler_OnKilledTarget")
RegisterUnitEvent(25481, 4, "LandingCrawler_OnDied")


--[[ Borean Tundra -- Longrunner Proudhoof.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function LongrunnerProudhoof_OnCombat(Unit, Event)
Unit:RegisterEvent("LongrunnerProudhoof_DemoralizingShout", 2000, 2)
Unit:RegisterEvent("LongrunnerProudhoof_ForcefulCleave", 8000, 0)
end

function LongrunnerProudhoof_DemoralizingShout(pUnit, Event) 
pUnit:CastSpell(13730) 
end

function LongrunnerProudhoof_ForcefulCleave(pUnit, Event) 
pUnit:CastSpell(35473) 
end

function LongrunnerProudhoof_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LongrunnerProudhoof_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LongrunnerProudhoof_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25335, 1, "LongrunnerProudhoof_OnCombat")
RegisterUnitEvent(25335, 2, "LongrunnerProudhoof_OnLeaveCombat")
RegisterUnitEvent(25335, 3, "LongrunnerProudhoof_OnKilledTarget")
RegisterUnitEvent(25335, 4, "LongrunnerProudhoof_OnDied")


--[[ Borean Tundra -- Loot Crazed Diver.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function LootCrazedDiver_OnCombat(Unit, Event)
Unit:RegisterEvent("LootCrazedDiver_Crazed", 5000, 1)
end

function LootCrazedDiver_Crazed(pUnit, Event) 
pUnit:CastSpell(5915) 
end

function LootCrazedDiver_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LootCrazedDiver_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LootCrazedDiver_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25836, 1, "LootCrazedDiver_OnCombat")
RegisterUnitEvent(25836, 2, "LootCrazedDiver_OnLeaveCombat")
RegisterUnitEvent(25836, 3, "LootCrazedDiver_OnKilledTarget")
RegisterUnitEvent(25836, 4, "LootCrazedDiver_OnDied")


--[[ Borean Tundra -- Luthion the Vile.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function LuthiontheVile_OnCombat(Unit, Event)
Unit:RegisterEvent("LuthiontheVile_BloodPresence", 4000, 1)
Unit:RegisterEvent("LuthiontheVile_PlagueStrike", 9000, 0)
end

function LuthiontheVile_BloodPresence(pUnit, Event) 
pUnit:CastSpell(50689) 
end

function LuthiontheVile_PlagueStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50688, pUnit:GetMainTank()) 
end

function LuthiontheVile_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LuthiontheVile_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LuthiontheVile_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27860, 1, "LuthiontheVile_OnCombat")
RegisterUnitEvent(27860, 2, "LuthiontheVile_OnLeaveCombat")
RegisterUnitEvent(27860, 3, "LuthiontheVile_OnKilledTarget")
RegisterUnitEvent(27860, 4, "LuthiontheVile_OnDied")


--[[ Borean Tundra -- Magic-bound Ancient.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function MagicboundAncient_OnCombat(Unit, Event)
Unit:RegisterEvent("MagicboundAncient_MarkofDetonation", 6000, 0)
end

function MagicboundAncient_MarkofDetonation(pUnit, Event) 
pUnit:CastSpell(50506) 
end

function MagicboundAncient_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MagicboundAncient_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MagicboundAncient_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25707, 1, "MagicboundAncient_OnCombat")
RegisterUnitEvent(25707, 2, "MagicboundAncient_OnLeaveCombat")
RegisterUnitEvent(25707, 3, "MagicboundAncient_OnKilledTarget")
RegisterUnitEvent(25707, 4, "MagicboundAncient_OnDied")


--[[ Borean Tundra -- Magmoth Crusher.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function MagmothCrusher_OnCombat(Unit, Event)
Unit:RegisterEvent("MagmothCrusher_MagnataurCharge", 8000, 0)
Unit:RegisterEvent("MagmothCrusher_TuskStrike", 7000, 0)
end

function MagmothCrusher_MagnataurCharge(pUnit, Event) 
pUnit:CastSpell(50413) 
end

function MagmothCrusher_TuskStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50410, pUnit:GetMainTank()) 
end

function MagmothCrusher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MagmothCrusher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MagmothCrusher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25434, 1, "MagmothCrusher_OnCombat")
RegisterUnitEvent(25434, 2, "MagmothCrusher_OnLeaveCombat")
RegisterUnitEvent(25434, 3, "MagmothCrusher_OnKilledTarget")
RegisterUnitEvent(25434, 4, "MagmothCrusher_OnDied")


--[[ Borean Tundra -- Magmothregar.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function Magmothregar_OnCombat(Unit, Event)
Unit:RegisterEvent("Magmothregar_Fervor", 10000, 0)
Unit:RegisterEvent("Magmothregar_MagnataurCharge", 8000, 0)
end

function Magmothregar_Fervor(pUnit, Event) 
pUnit:CastSpell(50822) 
end

function Magmothregar_MagnataurCharge(pUnit, Event) 
pUnit:CastSpell(50413) 
end

function Magmothregar_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Magmothregar_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Magmothregar_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25430, 1, "Magmothregar_OnCombat")
RegisterUnitEvent(25430, 2, "Magmothregar_OnLeaveCombat")
RegisterUnitEvent(25430, 3, "Magmothregar_OnKilledTarget")
RegisterUnitEvent(25430, 4, "Magmothregar_OnDied")


--[[ Borean Tundra -- Magnataur Huntress.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function MagnataurHuntress_OnCombat(Unit, Event)
Unit:RegisterEvent("MagnataurHuntress_TuskStrike", 7000, 0)
Unit:RegisterEvent("MagnataurHuntress_WarStomp", 10000, 0)
end

function MagnataurHuntress_TuskStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50410, pUnit:GetMainTank()) 
end

function MagnataurHuntress_WarStomp(pUnit, Event) 
pUnit:CastSpell(11876) 
end

function MagnataurHuntress_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MagnataurHuntress_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MagnataurHuntress_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24469, 1, "MagnataurHuntress_OnCombat")
RegisterUnitEvent(24469, 2, "MagnataurHuntress_OnLeaveCombat")
RegisterUnitEvent(24469, 3, "MagnataurHuntress_OnKilledTarget")
RegisterUnitEvent(24469, 4, "MagnataurHuntress_OnDied")


--[[ Borean Tundra -- Mammoth Calf.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function MammothCalf_OnCombat(Unit, Event)
Unit:RegisterEvent("MammothCalf_Trample", 6000, 0)
end

function MammothCalf_Trample(pUnit, Event) 
pUnit:CastSpell(15550) 
end

function MammothCalf_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MammothCalf_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MammothCalf_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24613, 1, "MammothCalf_OnCombat")
RegisterUnitEvent(24613, 2, "MammothCalf_OnLeaveCombat")
RegisterUnitEvent(24613, 3, "MammothCalf_OnKilledTarget")
RegisterUnitEvent(24613, 4, "MammothCalf_OnDied")


--[[ Borean Tundra -- Marsh Caribou.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function MarshCaribou_OnCombat(Unit, Event)
Unit:RegisterEvent("MarshCaribou_Gore", 8000, 0)
end

function MarshCaribou_Gore(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32019, pUnit:GetMainTank()) 
end

function MarshCaribou_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MarshCaribou_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MarshCaribou_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25680, 1, "MarshCaribou_OnCombat")
RegisterUnitEvent(25680, 2, "MarshCaribou_OnLeaveCombat")
RegisterUnitEvent(25680, 3, "MarshCaribou_OnKilledTarget")
RegisterUnitEvent(25680, 4, "MarshCaribou_OnDied")


--[[ Borean Tundra -- Marsh Fawn.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function MarshFawn_OnCombat(Unit, Event)
Unit:RegisterEvent("MarshFawn_Gore", 8000, 0)
end

function MarshFawn_Gore(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32019, pUnit:GetMainTank()) 
end

function MarshFawn_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MarshFawn_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MarshFawn_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25829, 1, "MarshFawn_OnCombat")
RegisterUnitEvent(25829, 2, "MarshFawn_OnLeaveCombat")
RegisterUnitEvent(25829, 3, "MarshFawn_OnKilledTarget")
RegisterUnitEvent(25829, 4, "MarshFawn_OnDied")


--[[ Borean Tundra -- Mate of Magmothregar.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function MateofMagmothregar_OnCombat(Unit, Event)
Unit:RegisterEvent("MateofMagmothregar_Enrage", 10000, 0)
end

function MateofMagmothregar_Enrage(pUnit, Event) 
pUnit:CastSpell(50420) 
end

function MateofMagmothregar_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MateofMagmothregar_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MateofMagmothregar_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25432, 1, "MateofMagmothregar_OnCombat")
RegisterUnitEvent(25432, 2, "MateofMagmothregar_OnLeaveCombat")
RegisterUnitEvent(25432, 3, "MateofMagmothregar_OnKilledTarget")
RegisterUnitEvent(25432, 4, "MateofMagmothregar_OnDied")


--[[ Borean Tundra -- Minion of Kaw.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function MinionofKaw_OnCombat(Unit, Event)
Unit:RegisterEvent("MinionofKaw_DestructiveStrike", 8000, 0)
end

function MinionofKaw_DestructiveStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51430, pUnit:GetMainTank()) 
end

function MinionofKaw_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MinionofKaw_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MinionofKaw_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25880, 1, "MinionofKaw_OnCombat")
RegisterUnitEvent(25880, 2, "MinionofKaw_OnLeaveCombat")
RegisterUnitEvent(25880, 3, "MinionofKaw_OnKilledTarget")
RegisterUnitEvent(25880, 4, "MinionofKaw_OnDied")


--[[ Borean Tundra -- Naxxanar Skeletal Mage.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function NaxxanarSkeletalMage_OnCombat(Unit, Event)
Unit:RegisterEvent("NaxxanarSkeletalMage_Fireball", 7000, 0)
Unit:RegisterEvent("NaxxanarSkeletalMage_Frostbolt", 10000, 0)
end

function NaxxanarSkeletalMage_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9053, pUnit:GetMainTank()) 
end

function NaxxanarSkeletalMage_Frostbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9672, pUnit:GetMainTank()) 
end

function NaxxanarSkeletalMage_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function NaxxanarSkeletalMage_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function NaxxanarSkeletalMage_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25396, 1, "NaxxanarSkeletalMage_OnCombat")
RegisterUnitEvent(25396, 2, "NaxxanarSkeletalMage_OnLeaveCombat")
RegisterUnitEvent(25396, 3, "NaxxanarSkeletalMage_OnKilledTarget")
RegisterUnitEvent(25396, 4, "NaxxanarSkeletalMage_OnDied")


--[[ Borean Tundra -- Nedar Lord of Rhinos.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function NedarLordofRhinos_OnCombat(Unit, Event)
Unit:RegisterEvent("NedarLordofRhinos_Shoot", 6000, 0)
end

function NedarLordofRhinos_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(41440, pUnit:GetMainTank()) 
end

function NedarLordofRhinos_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function NedarLordofRhinos_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function NedarLordofRhinos_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25801, 1, "NedarLordofRhinos_OnCombat")
RegisterUnitEvent(25801, 2, "NedarLordofRhinos_OnLeaveCombat")
RegisterUnitEvent(25801, 3, "NedarLordofRhinos_OnKilledTarget")
RegisterUnitEvent(25801, 4, "NedarLordofRhinos_OnDied")


--[[ Borean Tundra -- Nerub'ar Corpse Harvester.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function NerubarCorpseHarvester_OnCombat(Unit, Event)
Unit:RegisterEvent("NerubarCorpseHarvester_VenomSpit", 8000, 0)
end

function NerubarCorpseHarvester_VenomSpit(pUnit, Event) 
pUnit:FullCastSpellOnTarget(45577, pUnit:GetMainTank()) 
end

function NerubarCorpseHarvester_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function NerubarCorpseHarvester_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function NerubarCorpseHarvester_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25445, 1, "NerubarCorpseHarvester_OnCombat")
RegisterUnitEvent(25445, 2, "NerubarCorpseHarvester_OnLeaveCombat")
RegisterUnitEvent(25445, 3, "NerubarCorpseHarvester_OnKilledTarget")
RegisterUnitEvent(25445, 4, "NerubarCorpseHarvester_OnDied")


--[[ Borean Tundra -- Nerubar Skitterer.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function NerubarSkitterer_OnCombat(Unit, Event)
Unit:RegisterEvent("NerubarSkitterer_PiercingBlow", 8000, 0)
end

function NerubarSkitterer_PiercingBlow(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49749, pUnit:GetMainTank()) 
end

function NerubarSkitterer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function NerubarSkitterer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function NerubarSkitterer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24566, 1, "NerubarSkitterer_OnCombat")
RegisterUnitEvent(24566, 2, "NerubarSkitterer_OnLeaveCombat")
RegisterUnitEvent(24566, 3, "NerubarSkitterer_OnKilledTarget")
RegisterUnitEvent(24566, 4, "NerubarSkitterer_OnDied")


--[[ Borean Tundra -- Nerubar Sky Darkener.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function NerubarSkyDarkener_OnCombat(Unit, Event)
Unit:RegisterEvent("NerubarSkyDarkener_VenomSpit", 8000, 0)
Unit:RegisterEvent("NerubarSkyDarkener_WebBolt", 10000, 0)
end

function NerubarSkyDarkener_VenomSpit(pUnit, Event) 
pUnit:FullCastSpellOnTarget(45577, pUnit:GetMainTank()) 
end

function NerubarSkyDarkener_WebBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(45587, pUnit:GetMainTank()) 
end

function NerubarSkyDarkener_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function NerubarSkyDarkener_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function NerubarSkyDarkener_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25451, 1, "NerubarSkyDarkener_OnCombat")
RegisterUnitEvent(25451, 2, "NerubarSkyDarkener_OnLeaveCombat")
RegisterUnitEvent(25451, 3, "NerubarSkyDarkener_OnKilledTarget")
RegisterUnitEvent(25451, 4, "NerubarSkyDarkener_OnDied")


--[[ Borean Tundra -- Nerubar Tunneler.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function NerubarTunneler_OnCombat(Unit, Event)
Unit:RegisterEvent("NerubarTunneler_RockShield", 8000, 0)
end

function NerubarTunneler_RockShield(pUnit, Event) 
pUnit:CastSpell(50364) 
end

function NerubarTunneler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function NerubarTunneler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function NerubarTunneler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25622, 1, "NerubarTunneler_OnCombat")
RegisterUnitEvent(25622, 2, "NerubarTunneler_OnLeaveCombat")
RegisterUnitEvent(25622, 3, "NerubarTunneler_OnKilledTarget")
RegisterUnitEvent(25622, 4, "NerubarTunneler_OnDied")


--[[ Borean Tundra -- Nerubar Venomspitter.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function NerubarVenomspitter_OnCombat(Unit, Event)
Unit:RegisterEvent("NerubarVenomspitter_VenomSpit", 8000, 0)
end

function NerubarVenomspitter_VenomSpit(pUnit, Event) 
pUnit:FullCastSpellOnTarget(45577, pUnit:GetMainTank()) 
end

function NerubarVenomspitter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function NerubarVenomspitter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function NerubarVenomspitter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24563, 1, "NerubarVenomspitter_OnCombat")
RegisterUnitEvent(24563, 2, "NerubarVenomspitter_OnLeaveCombat")
RegisterUnitEvent(24563, 3, "NerubarVenomspitter_OnKilledTarget")
RegisterUnitEvent(24563, 4, "NerubarVenomspitter_OnDied")


--[[ Borean Tundra -- Nerub'ar Warrior.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function NerubarWarrior_OnCombat(Unit, Event)
Unit:RegisterEvent("NerubarWarrior_Rush", 8000, 0)
end

function NerubarWarrior_Rush(pUnit, Event) 
pUnit:CastSpell(50347) 
end

function NerubarWarrior_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function NerubarWarrior_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function NerubarWarrior_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25619, 1, "NerubarWarrior_OnCombat")
RegisterUnitEvent(25619, 2, "NerubarWarrior_OnLeaveCombat")
RegisterUnitEvent(25619, 3, "NerubarWarrior_OnKilledTarget")
RegisterUnitEvent(25619, 4, "NerubarWarrior_OnDied")


--[[ Borean Tundra -- Nerubar Web Lord.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function NerubarWebLord_OnCombat(Unit, Event)
Unit:RegisterEvent("NerubarWebLord_BlindingSwarm", 8000, 0)
end

function NerubarWebLord_BlindingSwarm(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50284, pUnit:GetMainTank()) 
end

function NerubarWebLord_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function NerubarWebLord_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function NerubarWebLord_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25294, 1, "NerubarWebLord_OnCombat")
RegisterUnitEvent(25294, 2, "NerubarWebLord_OnLeaveCombat")
RegisterUnitEvent(25294, 3, "NerubarWebLord_OnKilledTarget")
RegisterUnitEvent(25294, 4, "NerubarWebLord_OnDied")


--[[ Borean Tundra -- Nexus Drake Hatchling.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function NexusDrakeHatchling_OnCombat(Unit, Event)
Unit:RegisterEvent("NexusDrakeHatchling_IntangiblePresence", 10000, 0)
Unit:RegisterEvent("NexusDrakeHatchling_Netherbreath", 7500, 0)
end

function NexusDrakeHatchling_IntangiblePresence(pUnit, Event) 
pUnit:CastSpell(36513) 
end

function NexusDrakeHatchling_Netherbreath(pUnit, Event) 
pUnit:CastSpell(36631) 
end

function NexusDrakeHatchling_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function NexusDrakeHatchling_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function NexusDrakeHatchling_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26127, 1, "NexusDrakeHatchling_OnCombat")
RegisterUnitEvent(26127, 2, "NexusDrakeHatchling_OnLeaveCombat")
RegisterUnitEvent(26127, 3, "NexusDrakeHatchling_OnKilledTarget")
RegisterUnitEvent(26127, 4, "NexusDrakeHatchling_OnDied")


--[[ Borean Tundra -- Nexus Watcher.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function NexusWatcher_OnCombat(Unit, Event)
Unit:RegisterEvent("NexusWatcher_IntangiblePresence", 10000, 0)
Unit:RegisterEvent("NexusWatcher_Netherbreath", 7500, 0)
end

function NexusWatcher_IntangiblePresence(pUnit, Event) 
pUnit:CastSpell(36513) 
end

function NexusWatcher_Netherbreath(pUnit, Event) 
pUnit:CastSpell(36631) 
end

function NexusWatcher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function NexusWatcher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function NexusWatcher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24770, 1, "NexusWatcher_OnCombat")
RegisterUnitEvent(24770, 2, "NexusWatcher_OnLeaveCombat")
RegisterUnitEvent(24770, 3, "NexusWatcher_OnKilledTarget")
RegisterUnitEvent(24770, 4, "NexusWatcher_OnDied")


--[[ Borean Tundra -- Northsea Mercenary.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function NorthseaMercenary_OnCombat(Unit, Event)
Unit:RegisterEvent("NorthseaMercenary_Crazed", 5000, 1)
end

function NorthseaMercenary_Crazed(pUnit, Event) 
pUnit:CastSpell(5915) 
end

function NorthseaMercenary_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function NorthseaMercenary_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function NorthseaMercenary_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25839, 1, "NorthseaMercenary_OnCombat")
RegisterUnitEvent(25839, 2, "NorthseaMercenary_OnLeaveCombat")
RegisterUnitEvent(25839, 3, "NorthseaMercenary_OnKilledTarget")
RegisterUnitEvent(25839, 4, "NorthseaMercenary_OnDied")


--[[ Borean Tundra -- Northsea Thug.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function NorthseaThug_OnCombat(Unit, Event)
Unit:RegisterEvent("NorthseaThug_Crazed", 5000, 1)
end

function NorthseaThug_Crazed(pUnit, Event) 
pUnit:CastSpell(5915) 
end

function NorthseaThug_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function NorthseaThug_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function NorthseaThug_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25843, 1, "NorthseaThug_OnCombat")
RegisterUnitEvent(25843, 2, "NorthseaThug_OnLeaveCombat")
RegisterUnitEvent(25843, 3, "NorthseaThug_OnKilledTarget")
RegisterUnitEvent(25843, 4, "NorthseaThug_OnDied")


--[[ Borean Tundra -- Old Crystalbark.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function OldCrystalbark_OnCombat(Unit, Event)
Unit:RegisterEvent("OldCrystalbark_ArcaneBreath", 8000, 0)
Unit:RegisterEvent("OldCrystalbark_MarkofDetonation", 6000, 0)
end

function OldCrystalbark_ArcaneBreath(pUnit, Event) 
pUnit:CastSpell(60903) 
end

function OldCrystalbark_MarkofDetonation(pUnit, Event) 
pUnit:CastSpell(50506) 
end

function OldCrystalbark_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function OldCrystalbark_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function OldCrystalbark_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(32357, 1, "OldCrystalbark_OnCombat")
RegisterUnitEvent(32357, 2, "OldCrystalbark_OnLeaveCombat")
RegisterUnitEvent(32357, 3, "OldCrystalbark_OnKilledTarget")
RegisterUnitEvent(32357, 4, "OldCrystalbark_OnDied")


--[[ Borean Tundra -- Plagued Magnataur.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function PlaguedMagnataur_OnCombat(Unit, Event)
Unit:RegisterEvent("PlaguedMagnataur_PlagueCloud", 2000, 2)
end

function PlaguedMagnataur_PlagueCloud(pUnit, Event) 
pUnit:CastSpell(50366) 
end

function PlaguedMagnataur_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function PlaguedMagnataur_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function PlaguedMagnataur_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25615, 1, "PlaguedMagnataur_OnCombat")
RegisterUnitEvent(25615, 2, "PlaguedMagnataur_OnLeaveCombat")
RegisterUnitEvent(25615, 3, "PlaguedMagnataur_OnKilledTarget")
RegisterUnitEvent(25615, 4, "PlaguedMagnataur_OnDied")


--[[ Borean Tundra -- Plagued Scavenger.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function PlaguedScavengerr_OnCombat(Unit, Event)
Unit:RegisterEvent("PlaguedScavengerr_InfectedBite", 10000, 0)
end

function PlaguedScavengerr_InfectedBite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49861, pUnit:GetMainTank()) 
end

function PlaguedScavengerr_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function PlaguedScavengerr_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function PlaguedScavengerr_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25650, 1, "PlaguedScavengerr_OnCombat")
RegisterUnitEvent(25650, 2, "PlaguedScavengerr_OnLeaveCombat")
RegisterUnitEvent(25650, 3, "PlaguedScavengerr_OnKilledTarget")
RegisterUnitEvent(25650, 4, "PlaguedScavengerr_OnDied")


--[[ Borean Tundra -- Raging Boiler.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function RagingBoiler_OnCombat(Unit, Event)
Unit:RegisterEvent("RagingBoiler_BoilingBlood", 8000, 0)
end

function RagingBoiler_BoilingBlood(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50207, pUnit:GetMainTank()) 
end

function RagingBoiler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RagingBoiler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RagingBoiler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25417, 1, "RagingBoiler_OnCombat")
RegisterUnitEvent(25417, 2, "RagingBoiler_OnLeaveCombat")
RegisterUnitEvent(25417, 3, "RagingBoiler_OnKilledTarget")
RegisterUnitEvent(25417, 4, "RagingBoiler_OnDied")


--[[ Borean Tundra -- Ragnar Drakkarlund.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function RagnarDrakkarlund_OnCombat(Unit, Event)
Unit:RegisterEvent("RagnarDrakkarlund_Whirlwind", 8000, 0)
end

function RagnarDrakkarlund_Whirlwind(pUnit, Event) 
pUnit:CastSpell(41057) 
end

function RagnarDrakkarlund_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RagnarDrakkarlund_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RagnarDrakkarlund_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26451, 1, "RagnarDrakkarlund_OnCombat")
RegisterUnitEvent(26451, 2, "RagnarDrakkarlund_OnLeaveCombat")
RegisterUnitEvent(26451, 3, "RagnarDrakkarlund_OnKilledTarget")
RegisterUnitEvent(26451, 4, "RagnarDrakkarlund_OnDied")


--[[ Borean Tundra -- Rig Hauler AC-9.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function RigHaulerAC9_OnCombat(Unit, Event)
Unit:RegisterEvent("RigHaulerAC9_CrowdPummel", 10000, 0)
end

function RigHaulerAC9_CrowdPummel(pUnit, Event) 
pUnit:CastSpell(10887) 
end

function RigHaulerAC9_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RigHaulerAC9_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RigHaulerAC9_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25766, 1, "RigHaulerAC9_OnCombat")
RegisterUnitEvent(25766, 2, "RigHaulerAC9_OnLeaveCombat")
RegisterUnitEvent(25766, 3, "RigHaulerAC9_OnKilledTarget")
RegisterUnitEvent(25766, 4, "RigHaulerAC9_OnDied")


--[[ Borean Tundra -- Risen Longrunner.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function RisenLongrunner_OnCombat(Unit, Event)
Unit:RegisterEvent("RisenLongrunner_GhostStrike", 8000, 0)
end

function RisenLongrunner_GhostStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(36093, pUnit:GetMainTank()) 
end

function RisenLongrunner_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RisenLongrunner_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RisenLongrunner_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25350, 1, "RisenLongrunner_OnCombat")
RegisterUnitEvent(25350, 2, "RisenLongrunner_OnLeaveCombat")
RegisterUnitEvent(25350, 3, "RisenLongrunner_OnKilledTarget")
RegisterUnitEvent(25350, 4, "RisenLongrunner_OnDied")


--[[ Borean Tundra -- Rockfang.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function Rockfang_OnCombat(Unit, Event)
Unit:RegisterEvent("Rockfang_ChillingHowl", 10000, 0)
end

function Rockfang_ChillingHowl(pUnit, Event) 
pUnit:CastSpell(32918) 
end

function Rockfang_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Rockfang_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Rockfang_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25774, 1, "Rockfang_OnCombat")
RegisterUnitEvent(25774, 2, "Rockfang_OnLeaveCombat")
RegisterUnitEvent(25774, 3, "Rockfang_OnKilledTarget")
RegisterUnitEvent(25774, 4, "Rockfang_OnDied")


--[[ Borean Tundra -- Rocknar.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function Rocknar_OnCombat(Unit, Event)
Unit:RegisterEvent("Rocknar_HardenSkin", 2000, 1)
Unit:RegisterEvent("Rocknar_IceSpike", 8000, 0)
end

function Rocknar_HardenSkin(pUnit, Event) 
pUnit:CastSpell(22693) 
end

function Rocknar_IceSpike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50094, pUnit:GetMainTank()) 
end

function Rocknar_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Rocknar_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Rocknar_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25514, 1, "Rocknar_OnCombat")
RegisterUnitEvent(25514, 2, "Rocknar_OnLeaveCombat")
RegisterUnitEvent(25514, 3, "Rocknar_OnKilledTarget")
RegisterUnitEvent(25514, 4, "Rocknar_OnDied")


--[[ Borean Tundra -- Scalder.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function Scalder_OnCombat(Unit, Event)
Unit:RegisterEvent("Scalder_ScaldingBlast", 8000, 0)
Unit:RegisterEvent("Scalder_WaterBolt", 5500, 0)
end

function Scalder_ScaldingBlast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50257, pUnit:GetMainTank()) 
end

function Scalder_WaterBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32011, pUnit:GetMainTank()) 
end

function Scalder_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Scalder_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Scalder_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25226, 1, "Scalder_OnCombat")
RegisterUnitEvent(25226, 2, "Scalder_OnLeaveCombat")
RegisterUnitEvent(25226, 3, "Scalder_OnKilledTarget")
RegisterUnitEvent(25226, 4, "Scalder_OnDied")


--[[ Borean Tundra -- Scalesworn Elite.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function ScaleswornElite_OnCombat(Unit, Event)
Unit:RegisterEvent("ScaleswornElite_ArcaneSurge", 15000, 0)
Unit:RegisterEvent("ScaleswornElite_IceShard", 10000, 0)
end

function ScaleswornElite_ArcaneSurge(pUnit, Event) 
pUnit:FullCastSpellOnTarget(61272, pUnit:GetMainTank()) 
end

function ScaleswornElite_IceShard(pUnit, Event) 
pUnit:FullCastSpellOnTarget(61269, pUnit:GetMainTank()) 
end

function ScaleswornElite_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ScaleswornElite_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ScaleswornElite_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(32534, 1, "ScaleswornElite_OnCombat")
RegisterUnitEvent(32534, 2, "ScaleswornElite_OnLeaveCombat")
RegisterUnitEvent(32534, 3, "ScaleswornElite_OnKilledTarget")
RegisterUnitEvent(32534, 4, "ScaleswornElite_OnDied")


--[[ Borean Tundra -- Scavengebot 004A8.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function Scavengebot004A8_OnCombat(Unit, Event)
Unit:RegisterEvent("Scavengebot004A8_CuttingLaser", 7000, 0)
end

function Scavengebot004A8_CuttingLaser(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49945, pUnit:GetMainTank()) 
end

function Scavengebot004A8_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Scavengebot004A8_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Scavengebot004A8_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25752, 1, "Scavengebot004A8_OnCombat")
RegisterUnitEvent(25752, 2, "Scavengebot004A8_OnLeaveCombat")
RegisterUnitEvent(25752, 3, "Scavengebot004A8_OnKilledTarget")
RegisterUnitEvent(25752, 4, "Scavengebot004A8_OnDied")


--[[ Borean Tundra -- Scavengebot 005B6.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function Scavengebot005B6_OnCombat(Unit, Event)
Unit:RegisterEvent("Scavengebot005B6_CuttingLaser", 7000, 0)
end

function Scavengebot005B6_CuttingLaser(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49945, pUnit:GetMainTank()) 
end

function Scavengebot005B6_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Scavengebot005B6_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Scavengebot005B6_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25792, 1, "Scavengebot005B6_OnCombat")
RegisterUnitEvent(25792, 2, "Scavengebot005B6_OnLeaveCombat")
RegisterUnitEvent(25792, 3, "Scavengebot005B6_OnKilledTarget")
RegisterUnitEvent(25792, 4, "Scavengebot005B6_OnDied")


--[[ Borean Tundra -- Scourged Flamespitter.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function ScourgedFlamespitter_OnCombat(Unit, Event)
Unit:RegisterEvent("ScourgedFlamespitter_Incinerate", 7000, 0)
end

function ScourgedFlamespitter_Incinerate(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32707, pUnit:GetMainTank()) 
end

function ScourgedFlamespitter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ScourgedFlamespitter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ScourgedFlamespitter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25582, 1, "ScourgedFlamespitter_OnCombat")
RegisterUnitEvent(25582, 2, "ScourgedFlamespitter_OnLeaveCombat")
RegisterUnitEvent(25582, 3, "ScourgedFlamespitter_OnKilledTarget")
RegisterUnitEvent(25582, 4, "ScourgedFlamespitter_OnDied")


--[[ Borean Tundra -- Scourged Footman.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function ScourgedFootman_OnCombat(Unit, Event)
Unit:RegisterEvent("ScourgedFootman_BladeFlurry", 10000, 0)
Unit:RegisterEvent("ScourgedFootman_MortalStrike", 8000, 0)
end

function ScourgedFootman_BladeFlurry(pUnit, Event) 
pUnit:CastSpell(33735) 
end

function ScourgedFootman_MortalStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32736, pUnit:GetMainTank()) 
end

function ScourgedFootman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ScourgedFootman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ScourgedFootman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25981, 1, "ScourgedFootman_OnCombat")
RegisterUnitEvent(25981, 2, "ScourgedFootman_OnLeaveCombat")
RegisterUnitEvent(25981, 3, "ScourgedFootman_OnKilledTarget")
RegisterUnitEvent(25981, 4, "ScourgedFootman_OnDied")


--[[ Borean Tundra -- Scourged Mammoth.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function ScourgedMammoth_OnCombat(Unit, Event)
Unit:RegisterEvent("ScourgedMammoth_Trample", 6000, 0)
end

function ScourgedMammoth_Trample(pUnit, Event) 
pUnit:CastSpell(15550) 
end

function ScourgedMammoth_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ScourgedMammoth_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ScourgedMammoth_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25452, 1, "ScourgedMammoth_OnCombat")
RegisterUnitEvent(25452, 2, "ScourgedMammoth_OnLeaveCombat")
RegisterUnitEvent(25452, 3, "ScourgedMammoth_OnKilledTarget")
RegisterUnitEvent(25452, 4, "ScourgedMammoth_OnDied")


--[[ Borean Tundra -- Scourged Mammoth.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function ScoutTungok_OnCombat(Unit, Event)
Unit:RegisterEvent("ScoutTungok_Enrage", 10000, 0)
end

function ScoutTungok_Enrage(pUnit, Event) 
pUnit:CastSpell(8599) 
end

function ScoutTungok_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ScoutTungok_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ScoutTungok_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25440, 1, "ScoutTungok_OnCombat")
RegisterUnitEvent(25440, 2, "ScoutTungok_OnLeaveCombat")
RegisterUnitEvent(25440, 3, "ScoutTungok_OnKilledTarget")
RegisterUnitEvent(25440, 4, "ScoutTungok_OnDied")


--[[ Borean Tundra -- Skadir Mariner.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function SkadirMariner_OnCombat(Unit, Event)
Unit:RegisterEvent("SkadirMariner_DemoralizingShout", 2000, 2)
Unit:RegisterEvent("SkadirMariner_Uppercut", 8000, 0)
end

function SkadirMariner_DemoralizingShout(pUnit, Event) 
pUnit:CastSpell(13730) 
end

function SkadirMariner_Uppercut(pUnit, Event)
pUnit:FullCastSpellOnTarget(10966, pUnit:GetMainTank())
end

function SkadirMariner_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SkadirMariner_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SkadirMariner_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25523, 1, "SkadirMariner_OnCombat")
RegisterUnitEvent(25523, 2, "SkadirMariner_OnLeaveCombat")
RegisterUnitEvent(25523, 3, "SkadirMariner_OnKilledTarget")
RegisterUnitEvent(25523, 4, "SkadirMariner_OnDied")


--[[ Borean Tundra -- Skadir Mistweaver.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function SkadirMistweaver_OnCombat(Unit, Event)
Unit:RegisterEvent("SkadirMistweaver_MistofStrangulation", 8000, 0)
end

function SkadirMistweaver_MistofStrangulation(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49816, pUnit:GetMainTank()) 
end

function SkadirMistweaver_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SkadirMistweaver_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SkadirMistweaver_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25613, 1, "SkadirMistweaver_OnCombat")
RegisterUnitEvent(25613, 2, "SkadirMistweaver_OnLeaveCombat")
RegisterUnitEvent(25613, 3, "SkadirMistweaver_OnKilledTarget")
RegisterUnitEvent(25613, 4, "SkadirMistweaver_OnDied")


--[[ Borean Tundra -- Skadir Raider.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function SkadirRaider_OnCombat(Unit, Event)
Unit:RegisterEvent("SkadirRaider_FreezingTrap", 1000, 1)
Unit:RegisterEvent("SkadirRaider_ThrowSpear", 6000, 0)
end

function SkadirRaider_FreezingTrap(pUnit, Event) 
pUnit:CastSpell(43414) 
end

function SkadirRaider_ThrowSpear(pUnit, Event) 
pUnit:FullCastSpellOnTarget(43413, pUnit:GetMainTank()) 
end

function SkadirRaider_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SkadirRaider_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SkadirRaider_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25522, 1, "SkadirRaider_OnCombat")
RegisterUnitEvent(25522, 2, "SkadirRaider_OnLeaveCombat")
RegisterUnitEvent(25522, 3, "SkadirRaider_OnKilledTarget")
RegisterUnitEvent(25522, 4, "SkadirRaider_OnDied")


--[[ Borean Tundra -- Skadir Runecaster.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function SkadirRunecaster_OnCombat(Unit, Event)
Unit:RegisterEvent("SkadirRunecaster_LightningBolt", 8000, 0)
Unit:RegisterEvent("SkadirRunecaster_RuneofRetribution", 2000, 2)
end

function SkadirRunecaster_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9532, pUnit:GetMainTank()) 
end

function SkadirRunecaster_RuneofRetribution(pUnit, Event) 
pUnit:CastSpell(49871, pUnit:GetMainTank()) 
end

function SkadirRunecaster_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SkadirRunecaster_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SkadirRunecaster_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25520, 1, "SkadirRunecaster_OnCombat")
RegisterUnitEvent(25520, 2, "SkadirRunecaster_OnLeaveCombat")
RegisterUnitEvent(25520, 3, "SkadirRunecaster_OnKilledTarget")
RegisterUnitEvent(25520, 4, "SkadirRunecaster_OnDied")


--[[ Borean Tundra -- Snow Tracker Haloke.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function SnowTrackerHaloke_OnCombat(Unit, Event)
Unit:RegisterEvent("SnowTrackerHaloke_Shoot", 6000, 0)
end

function SnowTrackerHaloke_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function SnowTrackerHaloke_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SnowTrackerHaloke_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SnowTrackerHaloke_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26768, 1, "SnowTrackerHaloke_OnCombat")
RegisterUnitEvent(26768, 2, "SnowTrackerHaloke_OnLeaveCombat")
RegisterUnitEvent(26768, 3, "SnowTrackerHaloke_OnKilledTarget")
RegisterUnitEvent(26768, 4, "SnowTrackerHaloke_OnDied")


--[[ Borean Tundra -- Steam Rager.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function SteamRager_OnCombat(Unit, Event)
Unit:RegisterEvent("SteamRager_SteamBlast", 8000, 0)
end

function SteamRager_SteamBlast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50375, pUnit:GetMainTank()) 
end

function SteamRager_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SteamRager_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SteamRager_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24601, 1, "SteamRager_OnCombat")
RegisterUnitEvent(24601, 2, "SteamRager_OnLeaveCombat")
RegisterUnitEvent(24601, 3, "SteamRager_OnKilledTarget")
RegisterUnitEvent(24601, 4, "SteamRager_OnDied")


--[[ Borean Tundra -- Storm Tempest.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function StormTempest_OnCombat(Unit, Event)
Unit:RegisterEvent("StormTempest_ChainLightning", 8000, 0)
Unit:RegisterEvent("StormTempest_WindShock", 6000, 0)
end

function StormTempest_ChainLightning(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15659, pUnit:GetMainTank()) 
end

function StormTempest_WindShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(31272, pUnit:GetMainTank()) 
end

function StormTempest_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function StormTempest_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function StormTempest_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26045, 1, "StormTempest_OnCombat")
RegisterUnitEvent(26045, 2, "StormTempest_OnLeaveCombat")
RegisterUnitEvent(26045, 3, "StormTempest_OnKilledTarget")
RegisterUnitEvent(26045, 4, "StormTempest_OnDied")


--[[ Borean Tundra -- Talramas Abomination.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function TalramasAbomination_OnCombat(Unit, Event)
Unit:RegisterEvent("TalramasAbomination_PlagueCloud", 2000, 2)
end

function TalramasAbomination_PlagueCloud(pUnit, Event) 
pUnit:CastSpell(50366) 
end

function TalramasAbomination_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TalramasAbomination_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TalramasAbomination_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25684, 1, "TalramasAbomination_OnCombat")
RegisterUnitEvent(25684, 2, "TalramasAbomination_OnLeaveCombat")
RegisterUnitEvent(25684, 3, "TalramasAbomination_OnKilledTarget")
RegisterUnitEvent(25684, 4, "TalramasAbomination_OnDied")


--[[ Borean Tundra -- Taunkale Brave.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function TaunkaleBrave_OnCombat(Unit, Event)
Unit:RegisterEvent("TaunkaleBrave_GroundSlam", 8000, 0)
end

function TaunkaleBrave_GroundSlam(pUnit, Event) 
pUnit:CastSpell(52058) 
end

function TaunkaleBrave_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TaunkaleBrave_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TaunkaleBrave_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26157, 1, "TaunkaleBrave_OnCombat")
RegisterUnitEvent(26157, 2, "TaunkaleBrave_OnLeaveCombat")
RegisterUnitEvent(26157, 3, "TaunkaleBrave_OnKilledTarget")
RegisterUnitEvent(26157, 4, "TaunkaleBrave_OnDied")


--[[ Borean Tundra -- Thassarian.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function Thassarian_OnCombat(Unit, Event)
Unit:RegisterEvent("Thassarian_EmpoweredBloodPresence", 1000, 1)
end

function Thassarian_EmpoweredBloodPresence(pUnit, Event) 
pUnit:CastSpell(50995) 
end

function Thassarian_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Thassarian_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Thassarian_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26170, 1, "Thassarian_OnCombat")
RegisterUnitEvent(26170, 2, "Thassarian_OnLeaveCombat")
RegisterUnitEvent(26170, 3, "Thassarian_OnKilledTarget")
RegisterUnitEvent(26170, 4, "Thassarian_OnDied")


--[[ Borean Tundra -- Tundra Wolf.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function TundraWolf_OnCombat(Unit, Event)
Unit:RegisterEvent("TundraWolf_InfectedBite", 8000, 0)
end

function TundraWolf_InfectedBite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7367, pUnit:GetMainTank()) 
end

function TundraWolf_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TundraWolf_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TundraWolf_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25675, 1, "TundraWolf_OnCombat")
RegisterUnitEvent(25675, 2, "TundraWolf_OnLeaveCombat")
RegisterUnitEvent(25675, 3, "TundraWolf_OnKilledTarget")
RegisterUnitEvent(25675, 4, "TundraWolf_OnDied")


--[[ Borean Tundra -- Unliving Swine.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function UnlivingSwine_OnCombat(Unit, Event)
Unit:RegisterEvent("UnlivingSwine_SwineFlu", 8000, 0)
end

function UnlivingSwine_SwineFlu(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50303, pUnit:GetMainTank()) 
end

function UnlivingSwine_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function UnlivingSwine_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function UnlivingSwine_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25600, 1, "UnlivingSwine_OnCombat")
RegisterUnitEvent(25600, 2, "UnlivingSwine_OnLeaveCombat")
RegisterUnitEvent(25600, 3, "UnlivingSwine_OnKilledTarget")
RegisterUnitEvent(25600, 4, "UnlivingSwine_OnDied")


--[[ Borean Tundra -- Varidus the Flenser.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function VaridustheFlenser_OnCombat(Unit, Event)
Unit:RegisterEvent("VaridustheFlenser_ShadowNova", 6000, 0)
Unit:RegisterEvent("VaridustheFlenser_ShieldofSuffering", 4000, 1)
end

function VaridustheFlenser_ShadowNova(pUnit, Event) 
pUnit:CastSpell(32711) 
end

function VaridustheFlenser_ShieldofSuffering(pUnit, Event) 
pUnit:CastSpell(50329) 
end

function VaridustheFlenser_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function VaridustheFlenser_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function VaridustheFlenser_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25618, 1, "VaridustheFlenser_OnCombat")
RegisterUnitEvent(25618, 2, "VaridustheFlenser_OnLeaveCombat")
RegisterUnitEvent(25618, 3, "VaridustheFlenser_OnKilledTarget")
RegisterUnitEvent(25618, 4, "VaridustheFlenser_OnDied")


--[[ Borean Tundra -- Warbringer Goredrak.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function WarbringerGoredrak_OnCombat(Unit, Event)
Unit:RegisterEvent("WarbringerGoredrak_ArcaneBlast", 8000, 0)
Unit:RegisterEvent("WarbringerGoredrak_PowerSap", 10000, 0)
end

function WarbringerGoredrak_ArcaneBlast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50545, pUnit:GetMainTank()) 
end

function WarbringerGoredrak_PowerSap(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50534, pUnit:GetMainTank()) 
end

function WarbringerGoredrak_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WarbringerGoredrak_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WarbringerGoredrak_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25712, 1, "WarbringerGoredrak_OnCombat")
RegisterUnitEvent(25712, 2, "WarbringerGoredrak_OnLeaveCombat")
RegisterUnitEvent(25712, 3, "WarbringerGoredrak_OnKilledTarget")
RegisterUnitEvent(25712, 4, "WarbringerGoredrak_OnDied")


--[[ Borean Tundra -- Warsong Battleguard.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function WarsongBattleguard_OnCombat(Unit, Event)
Unit:RegisterEvent("WarsongBattleguard_Enrage", 10000, 0)
end

function WarsongBattleguard_Enrage(pUnit, Event) 
pUnit:CastSpell(8599) 
end

function WarsongBattleguard_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WarsongBattleguard_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WarsongBattleguard_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25242, 1, "WarsongBattleguard_OnCombat")
RegisterUnitEvent(25242, 2, "WarsongBattleguard_OnLeaveCombat")
RegisterUnitEvent(25242, 3, "WarsongBattleguard_OnKilledTarget")
RegisterUnitEvent(25242, 4, "WarsongBattleguard_OnDied")


--[[ Borean Tundra -- Warsong Marksman.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function WarsongMarksman_OnCombat(Unit, Event)
Unit:RegisterEvent("WarsongMarksman_Enrage", 8000, 0)
Unit:RegisterEvent("WarsongMarksman_Shoot", 6000, 0)
end

function WarsongMarksman_Enrage(pUnit, Event) 
pUnit:CastSpell(8599) 
end

function WarsongMarksman_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(45578, pUnit:GetMainTank()) 
end

function WarsongMarksman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WarsongMarksman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WarsongMarksman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25244, 1, "WarsongMarksman_OnCombat")
RegisterUnitEvent(25244, 2, "WarsongMarksman_OnLeaveCombat")
RegisterUnitEvent(25244, 3, "WarsongMarksman_OnKilledTarget")
RegisterUnitEvent(25244, 4, "WarsongMarksman_OnDied")


--[[ Borean Tundra -- Winterfin Oracle.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function WinterfinOracle_OnCombat(Unit, Event)
Unit:RegisterEvent("WinterfinOracle_LightningBolt", 8000, 0)
Unit:RegisterEvent("WinterfinOracle_UnstableMagic", 2000, 1)
end

function WinterfinOracle_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9532, pUnit:GetMainTank()) 
end

function WinterfinOracle_UnstableMagic(pUnit, Event) 
pUnit:CastSpell(50272) 
end

function WinterfinOracle_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WinterfinOracle_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WinterfinOracle_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25216, 1, "WinterfinOracle_OnCombat")
RegisterUnitEvent(25216, 2, "WinterfinOracle_OnLeaveCombat")
RegisterUnitEvent(25216, 3, "WinterfinOracle_OnKilledTarget")
RegisterUnitEvent(25216, 4, "WinterfinOracle_OnDied")


--[[ Borean Tundra -- Winterfin Shorestriker.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function WinterfinShorestriker_OnCombat(Unit, Event)
Unit:RegisterEvent("WinterfinShorestriker_RushedAssault", 7000, 0)
end

function WinterfinShorestriker_RushedAssault(pUnit, Event) 
pUnit:CastSpell(50262) 
end

function WinterfinShorestriker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WinterfinShorestriker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WinterfinShorestriker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25215, 1, "WinterfinShorestriker_OnCombat")
RegisterUnitEvent(25215, 2, "WinterfinShorestriker_OnLeaveCombat")
RegisterUnitEvent(25215, 3, "WinterfinShorestriker_OnKilledTarget")
RegisterUnitEvent(25215, 4, "WinterfinShorestriker_OnDied")


--[[ Borean Tundra -- Winterfin Warrior.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function WinterfinWarrior_OnCombat(Unit, Event)
Unit:RegisterEvent("WinterfinWarrior_DemoralizingMmmrrrggglll", 8000, 0)
end

function WinterfinWarrior_DemoralizingMmmrrrggglll(pUnit, Event) 
pUnit:CastSpell(50267) 
end

function WinterfinWarrior_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WinterfinWarrior_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WinterfinWarrior_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25217, 1, "WinterfinWarrior_OnCombat")
RegisterUnitEvent(25217, 2, "WinterfinWarrior_OnLeaveCombat")
RegisterUnitEvent(25217, 3, "WinterfinWarrior_OnKilledTarget")
RegisterUnitEvent(25217, 4, "WinterfinWarrior_OnDied")


--[[ Borean Tundra -- Wooly Mammoth.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function WoolyMammoth_OnCombat(Unit, Event)
Unit:RegisterEvent("WoolyMammoth_Trample", 6000, 0)
end

function WoolyMammoth_Trample(pUnit, Event) 
pUnit:CastSpell(15550) 
end

function WoolyMammoth_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WoolyMammoth_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WoolyMammoth_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24614, 1, "WoolyMammoth_OnCombat")
RegisterUnitEvent(24614, 2, "WoolyMammoth_OnLeaveCombat")
RegisterUnitEvent(24614, 3, "WoolyMammoth_OnKilledTarget")
RegisterUnitEvent(24614, 4, "WoolyMammoth_OnDied")


--[[ Borean Tundra -- Wooly Rhino Matriarch.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function WoolyRhinoMatriarch_OnCombat(Unit, Event)
Unit:RegisterEvent("WoolyRhinoMatriarch_ThickHide", 4000, 1)
end

function WoolyRhinoMatriarch_ThickHide(pUnit, Event) 
pUnit:CastSpell(50502) 
end

function WoolyRhinoMatriarch_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WoolyRhinoMatriarch_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WoolyRhinoMatriarch_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25487, 1, "WoolyRhinoMatriarch_OnCombat")
RegisterUnitEvent(25487, 2, "WoolyRhinoMatriarch_OnLeaveCombat")
RegisterUnitEvent(25487, 3, "WoolyRhinoMatriarch_OnKilledTarget")
RegisterUnitEvent(25487, 4, "WoolyRhinoMatriarch_OnDied")


--[[ Borean Tundra -- Wooly Rhino Bull.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function WoolyRhinoBull_OnCombat(Unit, Event)
Unit:RegisterEvent("WoolyRhinoBull_ThickHide", 4000, 1)
end

function WoolyRhinoBull_ThickHide(pUnit, Event) 
pUnit:CastSpell(50502) 
end

function WoolyRhinoBull_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WoolyRhinoBull_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WoolyRhinoBull_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25489, 1, "WoolyRhinoBull_OnCombat")
RegisterUnitEvent(25489, 2, "WoolyRhinoBull_OnLeaveCombat")
RegisterUnitEvent(25489, 3, "WoolyRhinoBull_OnKilledTarget")
RegisterUnitEvent(25489, 4, "WoolyRhinoBull_OnDied")