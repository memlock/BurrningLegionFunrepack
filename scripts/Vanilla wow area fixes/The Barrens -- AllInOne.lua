--[[ The Barrens -- Ambassador Bloodrage.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]


function AmbassadorBloodrage_OnCombat(Unit, Event)
Unit:RegisterEvent("AmbassadorBloodrage_Shadowbolt", 8000, 0)
end

function AmbassadorBloodrage_Shadowbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9613, pUnit:GetMainTank()) 
end

function AmbassadorBloodrage_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AmbassadorBloodrage_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AmbassadorBloodrage_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(7895, 1, "AmbassadorBloodrage_OnCombat")
RegisterUnitEvent(7895, 2, "AmbassadorBloodrage_OnLeaveCombat")
RegisterUnitEvent(7895, 3, "AmbassadorBloodrage_OnKilledTarget")
RegisterUnitEvent(7895, 4, "AmbassadorBloodrage_OnDied")

--[[ The Barrens -- Ambassador Malcin.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]


function AmbassadorMalcin_OnCombat(Unit, Event)
Unit:RegisterEvent("AmbassadorMalcin_Shadowbolt", 8000, 0)
end

function AmbassadorMalcin_Shadowbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9613, pUnit:GetMainTank()) 
end

function AmbassadorMalcin_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AmbassadorMalcin_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AmbassadorMalcin_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12865, 1, "AmbassadorMalcin_OnCombat")
RegisterUnitEvent(12865, 2, "AmbassadorMalcin_OnLeaveCombat")
RegisterUnitEvent(12865, 3, "AmbassadorMalcin_OnKilledTarget")
RegisterUnitEvent(12865, 4, "AmbassadorMalcin_OnDied")

--[[ The Barrens -- Azzere the Skyblade.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function AzzeretheSkyblade_OnCombat(Unit, Event)
Unit:RegisterEvent("AzzeretheSkyblade_Fireball", 8000, 0)
Unit:RegisterEvent("AzzeretheSkyblade_FlameSpike", 9000, 0)
end

function AzzeretheSkyblade_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13375, pUnit:GetMainTank()) 
end

function AzzeretheSkyblade_FlameSpike(pUnit, Event) 
pUnit:CastSpell(6725) 
end

function AzzeretheSkyblade_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AzzeretheSkyblade_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AzzeretheSkyblade_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5834, 1, "AzzeretheSkyblade_OnCombat")
RegisterUnitEvent(5834, 2, "AzzeretheSkyblade_OnLeaveCombat")
RegisterUnitEvent(5834, 3, "AzzeretheSkyblade_OnKilledTarget")
RegisterUnitEvent(5834, 4, "AzzeretheSkyblade_OnDied")

--[[ The Barrens -- Baeldun Excavator.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function BaeldunExcavator_OnCombat(Unit, Event)
Unit:RegisterEvent("BaeldunExcavator_DefensiveStance", 1000, 1)
Unit:RegisterEvent("BaeldunExcavator_SunderArmor", 5000, 0)
end

function BaeldunExcavator_DefensiveStance(pUnit, Event) 
pUnit:CastSpell(7164) 
end

function BaeldunExcavator_SunderArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(21081, pUnit:GetMainTank()) 
end

function BaeldunExcavator_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BaeldunExcavator_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BaeldunExcavator_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3374, 1, "BaeldunExcavator_OnCombat")
RegisterUnitEvent(3374, 2, "BaeldunExcavator_OnLeaveCombat")
RegisterUnitEvent(3374, 3, "BaeldunExcavator_OnKilledTarget")
RegisterUnitEvent(3374, 4, "BaeldunExcavator_OnDied")

--[[ The Barrens -- Baeldun Foreman.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function BaeldunForeman_OnCombat(Unit, Event)
Unit:RegisterEvent("BaeldunForeman_TorchToss", 8000, 0)
end

function BaeldunForeman_TorchToss(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6257, pUnit:GetMainTank()) 
end

function BaeldunForeman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BaeldunForeman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BaeldunForeman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3375, 1, "BaeldunForeman_OnCombat")
RegisterUnitEvent(3375, 2, "BaeldunForeman_OnLeaveCombat")
RegisterUnitEvent(3375, 3, "BaeldunForeman_OnKilledTarget")
RegisterUnitEvent(3375, 4, "BaeldunForeman_OnDied")

--[[ The Barrens -- Baeldun Officer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function BaeldunOfficer_OnCombat(Unit, Event)
Unit:RegisterEvent("BaeldunOfficer_NimbleReflexes", 10000, 0)
Unit:RegisterEvent("BaeldunOfficer_Thrash", 5000, 0)
end

function BaeldunOfficer_NimbleReflexes(pUnit, Event) 
pUnit:CastSpell(6264) 
end

function BaeldunOfficer_Thrash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3391, pUnit:GetMainTank()) 
end

function BaeldunOfficer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BaeldunOfficer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BaeldunOfficer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3378, 1, "BaeldunOfficer_OnCombat")
RegisterUnitEvent(3378, 2, "BaeldunOfficer_OnLeaveCombat")
RegisterUnitEvent(3378, 3, "BaeldunOfficer_OnKilledTarget")
RegisterUnitEvent(3378, 4, "BaeldunOfficer_OnDied")

--[[ The Barrens -- Baeldun Rifleman.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function BaeldunRifleman_OnCombat(Unit, Event)
Unit:RegisterEvent("BaeldunRifleman_Shoot", 6000, 0)
end

function BaeldunRifleman_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function BaeldunRifleman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BaeldunRifleman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BaeldunRifleman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3377, 1, "BaeldunRifleman_OnCombat")
RegisterUnitEvent(3377, 2, "BaeldunRifleman_OnLeaveCombat")
RegisterUnitEvent(3377, 3, "BaeldunRifleman_OnKilledTarget")
RegisterUnitEvent(3377, 4, "BaeldunRifleman_OnDied")

--[[ The Barrens -- Barak Kodobane.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function BarakKodobane_OnCombat(Unit, Event)
Unit:RegisterEvent("BarakKodobane_Shoot", 6000, 0)
end

function BarakKodobane_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function BarakKodobane_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BarakKodobane_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BarakKodobane_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3394, 1, "BarakKodobane_OnCombat")
RegisterUnitEvent(3394, 2, "BarakKodobane_OnLeaveCombat")
RegisterUnitEvent(3394, 3, "BarakKodobane_OnKilledTarget")
RegisterUnitEvent(3394, 4, "BarakKodobane_OnDied")

--[[ The Barrens -- Barrens Kodo.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function BarrensKodo_OnCombat(Unit, Event)
Unit:RegisterEvent("BarrensKodo_KodoStomp", 6000, 0)
end

function BarrensKodo_KodoStomp(pUnit, Event) 
pUnit:CastSpell(6266) 
end

function BarrensKodo_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BarrensKodo_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BarrensKodo_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3236, 1, "BarrensKodo_OnCombat")
RegisterUnitEvent(3236, 2, "BarrensKodo_OnLeaveCombat")
RegisterUnitEvent(3236, 3, "BarrensKodo_OnKilledTarget")
RegisterUnitEvent(3236, 4, "BarrensKodo_OnDied")

--[[ The Barrens -- Boahn.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function Boahn_OnCombat(Unit, Event)
Unit:RegisterEvent("Boahn_LightningBolt", 8000, 0)
end

function Boahn_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9532, pUnit:GetMainTank()) 
end

function Boahn_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Boahn_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Boahn_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3672, 1, "Boahn_OnCombat")
RegisterUnitEvent(3672, 2, "Boahn_OnLeaveCombat")
RegisterUnitEvent(3672, 3, "Boahn_OnKilledTarget")
RegisterUnitEvent(3672, 4, "Boahn_OnDied")

--[[ The Barrens -- Boss Copperplug.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function BossCopperplug_OnCombat(Unit, Event)
Unit:RegisterEvent("BossCopperplug_Bom", 8000, 0)
Unit:RegisterEvent("BossCopperplug_Net", 10000, 0)
end

function BossCopperplug_Bom(pUnit, Event) 
pUnit:CastSpell(9143) 
end

function BossCopperplug_Net(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6533, pUnit:GetMainTank()) 
end

function BossCopperplug_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BossCopperplug_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BossCopperplug_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(9336, 1, "BossCopperplug_OnCombat")
RegisterUnitEvent(9336, 2, "BossCopperplug_OnLeaveCombat")
RegisterUnitEvent(9336, 3, "BossCopperplug_OnKilledTarget")
RegisterUnitEvent(9336, 4, "BossCopperplug_OnDied")

--[[ The Barrens -- Bristleback Geomancer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function BristlebackGeomancer_OnCombat(Unit, Event)
Unit:RegisterEvent("BristlebackGeomancer_QuickFlameWard", 11000, 0)
Unit:RegisterEvent("BristlebackGeomancer_Flamestrike", 10000, 0)
Unit:RegisterEvent("BristlebackGeomancer_Fireball", 8000, 0)
end

function BristlebackGeomancer_QuickFlameWard(pUnit, Event) 
pUnit:CastSpell(4979) 
end

function BristlebackGeomancer_Flamestrike(pUnit, Event) 
pUnit:CastSpell(20794) 
end

function BristlebackGeomancer_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20793, pUnit:GetMainTank()) 
end

function BristlebackGeomancer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BristlebackGeomancer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BristlebackGeomancer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3263, 1, "BristlebackGeomancer_OnCombat")
RegisterUnitEvent(3263, 2, "BristlebackGeomancer_OnLeaveCombat")
RegisterUnitEvent(3263, 3, "BristlebackGeomancer_OnKilledTarget")
RegisterUnitEvent(3263, 4, "BristlebackGeomancer_OnDied")

--[[ The Barrens -- Bristleback Hunter.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function BristlebackHunter_OnCombat(Unit, Event)
Unit:RegisterEvent("BristlebackHunter_Shoot", 5000, 0)
Unit:RegisterEvent("BristlebackHunter_PoisonedShot", 1000, 1)
end

function BristlebackHunter_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function BristlebackHunter_PoisonedShot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8806, pUnit:GetMainTank()) 
end

function BristlebackHunter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BristlebackHunter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BristlebackHunter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3258, 1, "BristlebackHunter_OnCombat")
RegisterUnitEvent(3258, 2, "BristlebackHunter_OnLeaveCombat")
RegisterUnitEvent(3258, 3, "BristlebackHunter_OnKilledTarget")
RegisterUnitEvent(3258, 4, "BristlebackHunter_OnDied")

--[[ The Barrens -- Bristleback Thornweaver.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function BristlebackThornweaver_OnCombat(Unit, Event)
Unit:RegisterEvent("BristlebackThornweaver_Thorns", 3000, 1)
Unit:RegisterEvent("BristlebackThornweaver_EntanglingRoots", 12000, 0)
end

function BristlebackThornweaver_Thorns(pUnit, Event) 
pUnit:CastSpell(782) 
end

function BristlebackThornweaver_EntanglingRoots(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12747, pUnit:GetMainTank()) 
end

function BristlebackThornweaver_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BristlebackThornweaver_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BristlebackThornweaver_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3261, 1, "BristlebackThornweaver_OnCombat")
RegisterUnitEvent(3261, 2, "BristlebackThornweaver_OnLeaveCombat")
RegisterUnitEvent(3261, 3, "BristlebackThornweaver_OnKilledTarget")
RegisterUnitEvent(3261, 4, "BristlebackThornweaver_OnDied")

--[[ The Barrens -- Bristleback Water Seeker.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function BristlebackWaterSeeker_OnCombat(Unit, Event)
Unit:RegisterEvent("BristlebackWaterSeeker_FrostNova", 8000, 0)
end

function BristlebackWaterSeeker_FrostNova(pUnit, Event) 
pUnit:CastSpell(12748) 
end

function BristlebackWaterSeeker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BristlebackWaterSeeker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BristlebackWaterSeeker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3260, 1, "BristlebackWaterSeeker_OnCombat")
RegisterUnitEvent(3260, 2, "BristlebackWaterSeeker_OnLeaveCombat")
RegisterUnitEvent(3260, 3, "BristlebackWaterSeeker_OnKilledTarget")
RegisterUnitEvent(3260, 4, "BristlebackWaterSeeker_OnDied")

--[[ The Barrens -- Brokespear.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function Brokespear_OnCombat(Unit, Event)
Unit:RegisterEvent("Brokespear_SlowingPoison", 15000, 0)
Unit:RegisterEvent("Brokespear_Throw", 5000, 0)
end

function Brokespear_SlowingPoison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7992, pUnit:GetMainTank()) 
end

function Brokespear_Throw(pUnit, Event) 
pUnit:FullCastSpellOnTarget(10277, pUnit:GetMainTank()) 
end

function Brokespear_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Brokespear_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Brokespear_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5838, 1, "Brokespear_OnCombat")
RegisterUnitEvent(5838, 2, "Brokespear_OnLeaveCombat")
RegisterUnitEvent(5838, 3, "Brokespear_OnKilledTarget")
RegisterUnitEvent(5838, 4, "Brokespear_OnDied")

--[[ The Barrens -- Brontus.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function Brontus_OnCombat(Unit, Event)
Unit:RegisterEvent("Brontus_PierceArmor", 10000, 0)
Unit:RegisterEvent("Brontus_RushingCharge", 8000, 0)
end

function Brontus_PierceArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6016, pUnit:GetMainTank()) 
end

function Brontus_RushingCharge(pUnit, Event) 
pUnit:CastSpell(6268) 
end

function Brontus_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Brontus_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Brontus_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5827, 1, "Brontus_OnCombat")
RegisterUnitEvent(5827, 2, "Brontus_OnLeaveCombat")
RegisterUnitEvent(5827, 3, "Brontus_OnKilledTarget")
RegisterUnitEvent(5827, 4, "Brontus_OnDied")

--[[ The Barrens -- Burning Blade Acolyte.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function BurningBladeAcolyte_OnCombat(Unit, Event)
Unit:RegisterEvent("BurningBladeAcolyte_CurseofAgony", 8000, 2)
Unit:RegisterEvent("BurningBladeAcolyte_Inmolate", 3000, 2)
end

function BurningBladeAcolyte_CurseofAgony(pUnit, Event) 
pUnit:FullCastSpellOnTarget(980, pUnit:GetMainTank()) 
end

function BurningBladeAcolyte_Inmolate(pUnit, Event) 
pUnit:FullCastSpellOnTarget(707, pUnit:GetMainTank()) 
end

function BurningBladeAcolyte_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BurningBladeAcolyte_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BurningBladeAcolyte_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3380, 1, "BurningBladeAcolyte_OnCombat")
RegisterUnitEvent(3380, 2, "BurningBladeAcolyte_OnLeaveCombat")
RegisterUnitEvent(3380, 3, "BurningBladeAcolyte_OnKilledTarget")
RegisterUnitEvent(3380, 4, "BurningBladeAcolyte_OnDied")

--[[ The Barrens -- Burning Blade Toxicologist.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function BurningBladeToxicologist_OnCombat(Unit, Event)
Unit:RegisterEvent("BurningBladeToxicologist_CurseofAgony", 8000, 2)
Unit:RegisterEvent("BurningBladeToxicologist_Inmolate", 3000, 2)
end

function BurningBladeToxicologist_CurseofAgony(pUnit, Event) 
pUnit:FullCastSpellOnTarget(980, pUnit:GetMainTank()) 
end

function BurningBladeToxicologist_Inmolate(pUnit, Event) 
pUnit:FullCastSpellOnTarget(707, pUnit:GetMainTank()) 
end

function BurningBladeToxicologist_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BurningBladeToxicologist_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BurningBladeToxicologist_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12319, 1, "BurningBladeToxicologist_OnCombat")
RegisterUnitEvent(12319, 2, "BurningBladeToxicologist_OnLeaveCombat")
RegisterUnitEvent(12319, 3, "BurningBladeToxicologist_OnKilledTarget")
RegisterUnitEvent(12319, 4, "BurningBladeToxicologist_OnDied")

--[[ The Barrens -- Captain Fairmount.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function CaptainFairmount_OnCombat(Unit, Event)
Unit:RegisterEvent("CaptainFairmount_BattleShout", 1000, 1)
Unit:RegisterEvent("CaptainFairmount_FrighteningShout", 12000, 0)
Unit:RegisterEvent("CaptainFairmount_Pummel", 8000, 0)
end

function CaptainFairmount_BattleShout(pUnit, Event) 
pUnit:CastSpell(9128) 
end

function CaptainFairmount_FrighteningShout(pUnit, Event) 
pUnit:FullCastSpellOnTarget(19134, pUnit:GetMainTank()) 
end

function CaptainFairmount_Pummel(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12555, pUnit:GetMainTank()) 
end

function CaptainFairmount_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CaptainFairmount_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CaptainFairmount_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3393, 1, "CaptainFairmount_OnCombat")
RegisterUnitEvent(3393, 2, "CaptainFairmount_OnLeaveCombat")
RegisterUnitEvent(3393, 3, "CaptainFairmount_OnKilledTarget")
RegisterUnitEvent(3393, 4, "CaptainFairmount_OnDied")

--[[ The Barrens -- Captain Gerogg Hammertoe.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function CaptainGeroggHammertoe_OnCombat(Unit, Event)
Unit:RegisterEvent("CaptainGeroggHammertoe_ShieldBash", 10000, 0)
end

function CaptainGeroggHammertoe_ShieldBash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(1672, pUnit:GetMainTank()) 
end

function CaptainGeroggHammertoe_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CaptainGeroggHammertoe_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CaptainGeroggHammertoe_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5851, 1, "CaptainGeroggHammertoe_OnCombat")
RegisterUnitEvent(5851, 2, "CaptainGeroggHammertoe_OnLeaveCombat")
RegisterUnitEvent(5851, 3, "CaptainGeroggHammertoe_OnKilledTarget")
RegisterUnitEvent(5851, 4, "CaptainGeroggHammertoe_OnDied")

--[[ The Barrens -- Corrupted Dreadmaw Crocolisk.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function CorruptedDreadmawCrocolisk_OnCombat(Unit, Event)
Unit:RegisterEvent("CorruptedDreadmawCrocolisk_DecayedAgility", 10000, 1)
end

function CorruptedDreadmawCrocolisk_DecayedAgility(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7901, pUnit:GetMainTank()) 
end

function CorruptedDreadmawCrocolisk_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CorruptedDreadmawCrocolisk_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CorruptedDreadmawCrocolisk_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3231, 1, "CorruptedDreadmawCrocolisk_OnCombat")
RegisterUnitEvent(3231, 2, "CorruptedDreadmawCrocolisk_OnLeaveCombat")
RegisterUnitEvent(3231, 3, "CorruptedDreadmawCrocolisk_OnKilledTarget")
RegisterUnitEvent(3231, 4, "CorruptedDreadmawCrocolisk_OnDied")

--[[ The Barrens -- Digger Flameforge.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function DiggerFlameforge_OnCombat(Unit, Event)
Unit:RegisterEvent("DiggerFlameforge_Backhand", 8000, 0)
Unit:RegisterEvent("DiggerFlameforge_ThrowDynamite", 12000, 0)
end

function DiggerFlameforge_Backhand(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6253, pUnit:GetMainTank()) 
end

function DiggerFlameforge_ThrowDynamite(pUnit, Event) 
pUnit:CastSpell(7978) 
end

function DiggerFlameforge_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DiggerFlameforge_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DiggerFlameforge_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5849, 1, "DiggerFlameforge_OnCombat")
RegisterUnitEvent(5849, 2, "DiggerFlameforge_OnLeaveCombat")
RegisterUnitEvent(5849, 3, "DiggerFlameforge_OnKilledTarget")
RegisterUnitEvent(5849, 4, "DiggerFlameforge_OnDied")

--[[ The Barrens -- Dishu.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function Dishu_OnCombat(Unit, Event)
Unit:RegisterEvent("Dishu_SavannahCubs", 4000, 1)
end

function Dishu_SavannahCubs(pUnit, Event) 
pUnit:CastSpell(8210) 
end

function Dishu_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Dishu_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Dishu_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5865, 1, "Dishu_OnCombat")
RegisterUnitEvent(5865, 2, "Dishu_OnLeaveCombat")
RegisterUnitEvent(5865, 3, "Dishu_OnKilledTarget")
RegisterUnitEvent(5865, 4, "Dishu_OnDied")

--[[ The Barrens -- Dreadmaw Crocolisk.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function DreadmawCrocolisk_OnCombat(Unit, Event)
Unit:RegisterEvent("DreadmawCrocolisk_MuscleTear", 8000, 0)
end

function DreadmawCrocolisk_MuscleTear(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12166, pUnit:GetMainTank()) 
end

function DreadmawCrocolisk_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DreadmawCrocolisk_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DreadmawCrocolisk_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3110, 1, "DreadmawCrocolisk_OnCombat")
RegisterUnitEvent(3110, 2, "DreadmawCrocolisk_OnLeaveCombat")
RegisterUnitEvent(3110, 3, "DreadmawCrocolisk_OnKilledTarget")
RegisterUnitEvent(3110, 4, "DreadmawCrocolisk_OnDied")

--[[ The Barrens -- Elder Mystic Razorsnout.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function ElderMysticRazorsnout_OnCombat(Unit, Event)
Unit:RegisterEvent("ElderMysticRazorsnout_EarthbindTotem", 4000, 1)
Unit:RegisterEvent("ElderMysticRazorsnout_HealingWave", 12000, 0)
end

function ElderMysticRazorsnout_EarthbindTotem(pUnit, Event) 
pUnit:CastSpell(2484) 
end

function ElderMysticRazorsnout_HealingWave(pUnit, Event) 
pUnit:CastSpell(547) 
end

function ElderMysticRazorsnout_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ElderMysticRazorsnout_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ElderMysticRazorsnout_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3270, 1, "ElderMysticRazorsnout_OnCombat")
RegisterUnitEvent(3270, 2, "ElderMysticRazorsnout_OnLeaveCombat")
RegisterUnitEvent(3270, 3, "ElderMysticRazorsnout_OnKilledTarget")
RegisterUnitEvent(3270, 4, "ElderMysticRazorsnout_OnDied")

--[[ The Barrens -- Engineer Whirleygig.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function EngineerWhirleygig_OnCombat(Unit, Event)
Unit:RegisterEvent("EngineerWhirleygig_CompactHarvestReaper", 4000, 1)
Unit:RegisterEvent("EngineerWhirleygig_ExplosiveSheep", 10000, 1)
end

function EngineerWhirleygig_CompactHarvestReaper(pUnit, Event) 
pUnit:CastSpell(7979) 
end

function EngineerWhirleygig_ExplosiveSheep(pUnit, Event) 
pUnit:CastSpell(8209) 
end

function EngineerWhirleygig_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function EngineerWhirleygig_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function EngineerWhirleygig_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5836, 1, "EngineerWhirleygig_OnCombat")
RegisterUnitEvent(5836, 2, "EngineerWhirleygig_OnLeaveCombat")
RegisterUnitEvent(5836, 3, "EngineerWhirleygig_OnKilledTarget")
RegisterUnitEvent(5836, 4, "EngineerWhirleygig_OnDied")

--[[ The Barrens -- Foreman Grills.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function ForemanGrills_OnCombat(Unit, Event)
Unit:RegisterEvent("ForemanGrills_Hamstring", 12000, 0)
end

function ForemanGrills_Hamstring(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9080, pUnit:GetMainTank()) 
end

function ForemanGrills_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ForemanGrills_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ForemanGrills_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5835, 1, "ForemanGrills_OnCombat")
RegisterUnitEvent(5835, 2, "ForemanGrills_OnLeaveCombat")
RegisterUnitEvent(5835, 3, "ForemanGrills_OnKilledTarget")
RegisterUnitEvent(5835, 4, "ForemanGrills_OnDied")

--[[ The Barrens -- Geopriest Gukkrok.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function GeopriestGukkrok_OnCombat(Unit, Event)
Unit:RegisterEvent("GeopriestGukkrok_Heal", 15000, 0)
Unit:RegisterEvent("GeopriestGukkrok_PowerWordShield", 6000, 1)
Unit:RegisterEvent("GeopriestGukkrok_Renew", 10000, 0)
end

function GeopriestGukkrok_Heal(pUnit, Event) 
pUnit:CastSpell(2054) 
end

function GeopriestGukkrok_PowerWordShield(pUnit, Event) 
pUnit:CastSpell(600) 
end

function GeopriestGukkrok_Renew(pUnit, Event) 
pUnit:CastSpell(6075) 
end

function GeopriestGukkrok_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GeopriestGukkrok_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GeopriestGukkrok_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5863, 1, "GeopriestGukkrok_OnCombat")
RegisterUnitEvent(5863, 2, "GeopriestGukkrok_OnLeaveCombat")
RegisterUnitEvent(5863, 3, "GeopriestGukkrok_OnKilledTarget")
RegisterUnitEvent(5863, 4, "GeopriestGukkrok_OnDied")

--[[ The Barrens -- Gesharahan.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function Gesharahan_OnCombat(Unit, Event)
Unit:RegisterEvent("Gesharahan_DeadlyPoison", 6000, 1)
end

function Gesharahan_DeadlyPoison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3583, pUnit:GetMainTank()) 
end

function Gesharahan_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Gesharahan_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Gesharahan_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3398, 1, "Gesharahan_OnCombat")
RegisterUnitEvent(3398, 2, "Gesharahan_OnLeaveCombat")
RegisterUnitEvent(3398, 3, "Gesharahan_OnKilledTarget")
RegisterUnitEvent(3398, 4, "Gesharahan_OnDied")

--[[ The Barrens -- Greater Barrens Kodo.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function GreaterBarrensKodo_OnCombat(Unit, Event)
Unit:RegisterEvent("GreaterBarrensKodo_RushingCharge", 8000, 0)
end

function GreaterBarrensKodo_RushingCharge(pUnit, Event) 
pUnit:CastSpell(6268) 
end

function GreaterBarrensKodo_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GreaterBarrensKodo_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GreaterBarrensKodo_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3235, 1, "GreaterBarrensKodo_OnCombat")
RegisterUnitEvent(3235, 2, "GreaterBarrensKodo_OnLeaveCombat")
RegisterUnitEvent(3235, 3, "GreaterBarrensKodo_OnKilledTarget")
RegisterUnitEvent(3235, 4, "GreaterBarrensKodo_OnDied")

--[[ The Barrens -- Greater Thunderhawk.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function GreaterThunderhawk_OnCombat(Unit, Event)
Unit:RegisterEvent("GreaterThunderhawk_ThunderClap", 10000, 0)
end

function GreaterThunderhawk_ThunderClap(pUnit, Event) 
pUnit:CastSpell(8078) 
end

function GreaterThunderhawk_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GreaterThunderhawk_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GreaterThunderhawk_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3249, 1, "GreaterThunderhawk_OnCombat")
RegisterUnitEvent(3249, 2, "GreaterThunderhawk_OnLeaveCombat")
RegisterUnitEvent(3249, 3, "GreaterThunderhawk_OnKilledTarget")
RegisterUnitEvent(3249, 4, "GreaterThunderhawk_OnDied")

--[[ The Barrens -- Hagg Taurenbane.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function HaggTaurenbane_OnCombat(Unit, Event)
Unit:RegisterEvent("HaggTaurenbane_Cleave", 6000, 0)
Unit:RegisterEvent("HaggTaurenbane_DemoralizingShout", 4000, 1)
Unit:RegisterEvent("HaggTaurenbane_Hamstring", 10000, 0)
end

function HaggTaurenbane_Cleave(pUnit, Event) 
pUnit:CastSpell(40505) 
end

function HaggTaurenbane_DemoralizingShout(pUnit, Event) 
pUnit:CastSpell(13730) 
end

function HaggTaurenbane_Hamstring(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9080, pUnit:GetMainTank()) 
end

function HaggTaurenbane_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HaggTaurenbane_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HaggTaurenbane_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5859, 1, "HaggTaurenbane_OnCombat")
RegisterUnitEvent(5859, 2, "HaggTaurenbane_OnLeaveCombat")
RegisterUnitEvent(5859, 3, "HaggTaurenbane_OnKilledTarget")
RegisterUnitEvent(5859, 4, "HaggTaurenbane_OnDied")

--[[ The Barrens -- Heggin Stonewhisker.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function HegginStonewhisker_OnCombat(Unit, Event)
Unit:RegisterEvent("HegginStonewhisker_FireShot", 9000, 0)
Unit:RegisterEvent("HegginStonewhisker_Shoot", 6000, 0)
end

function HegginStonewhisker_FireShot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6979, pUnit:GetMainTank()) 
end

function HegginStonewhisker_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function HegginStonewhisker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HegginStonewhisker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HegginStonewhisker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5847, 1, "HegginStonewhisker_OnCombat")
RegisterUnitEvent(5847, 2, "HegginStonewhisker_OnLeaveCombat")
RegisterUnitEvent(5847, 3, "HegginStonewhisker_OnKilledTarget")
RegisterUnitEvent(5847, 4, "HegginStonewhisker_OnDied")

--[[ The Barrens -- Hezrul Bloodmark.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function HezrulBloodmark_OnCombat(Unit, Event)
Unit:RegisterEvent("HezrulBloodmark_BloodLeech", 6000, 0)
end

function HezrulBloodmark_BloodLeech(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6958, pUnit:GetMainTank()) 
end

function HezrulBloodmark_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HezrulBloodmark_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HezrulBloodmark_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3396, 1, "HezrulBloodmark_OnCombat")
RegisterUnitEvent(3396, 2, "HezrulBloodmark_OnLeaveCombat")
RegisterUnitEvent(3396, 3, "HezrulBloodmark_OnKilledTarget")
RegisterUnitEvent(3396, 4, "HezrulBloodmark_OnDied")

--[[ The Barrens -- Humar the Pridelord.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function HumarthePridelord_OnCombat(Unit, Event)
Unit:RegisterEvent("HumarthePridelord_AgonizingPain", 10000, 0)
end

function HumarthePridelord_AgonizingPain(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3247, pUnit:GetMainTank()) 
end

function HumarthePridelord_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HumarthePridelord_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HumarthePridelord_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5828, 1, "HumarthePridelord_OnCombat")
RegisterUnitEvent(5828, 2, "HumarthePridelord_OnLeaveCombat")
RegisterUnitEvent(5828, 3, "HumarthePridelord_OnKilledTarget")
RegisterUnitEvent(5828, 4, "HumarthePridelord_OnDied")

--[[ The Barrens -- Kolkar Bloodcharger.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function KolkarBloodcharger_OnCombat(Unit, Event)
Unit:RegisterEvent("KolkarBloodcharger_Bloodlust", 4000, 1)
Unit:RegisterEvent("KolkarBloodcharger_Corruption", 10000, 0)
end

function KolkarBloodcharger_Bloodlust(pUnit, Event) 
pUnit:CastSpell(6742) 
end

function KolkarBloodcharger_Corruption(pUnit, Event) 
pUnit:FullCastSpellOnTarget(172, pUnit:GetMainTank()) 
end

function KolkarBloodcharger_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function KolkarBloodcharger_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function KolkarBloodcharger_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3397, 1, "KolkarBloodcharger_OnCombat")
RegisterUnitEvent(3397, 2, "KolkarBloodcharger_OnLeaveCombat")
RegisterUnitEvent(3397, 3, "KolkarBloodcharger_OnKilledTarget")
RegisterUnitEvent(3397, 4, "KolkarBloodcharger_OnDied")

--[[ The Barrens -- Kolkar Invader.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function KolkarInvader_OnCombat(Unit, Event)
Unit:RegisterEvent("KolkarInvader_FlingTorch", 2000, 1)
Unit:RegisterEvent("KolkarInvader_RushingCharge", 8000, 0)
Unit:RegisterEvent("KolkarInvader_Strike", 6000, 0)
Unit:RegisterEvent("KolkarInvader_Tetanus", 4000, 1)
end

function KolkarInvader_FlingTorch(pUnit, Event) 
pUnit:CastSpell(14292) 
end

function KolkarInvader_RushingCharge(pUnit, Event) 
pUnit:CastSpell(6268) 
end

function KolkarInvader_Strike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11976, pUnit:GetMainTank()) 
end

function KolkarInvader_Tetanus(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8014, pUnit:GetMainTank()) 
end

function KolkarInvader_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function KolkarInvader_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function KolkarInvader_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(9524, 1, "KolkarInvader_OnCombat")
RegisterUnitEvent(9524, 2, "KolkarInvader_OnLeaveCombat")
RegisterUnitEvent(9524, 3, "KolkarInvader_OnKilledTarget")
RegisterUnitEvent(9524, 4, "KolkarInvader_OnDied")

--[[ The Barrens -- Kolkar Marauder.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function KolkarMarauder_OnCombat(Unit, Event)
Unit:RegisterEvent("KolkarMarauder_Strike", 6000, 0)
end

function KolkarMarauder_Strike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11976, pUnit:GetMainTank()) 
end

function KolkarMarauder_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function KolkarMarauder_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function KolkarMarauder_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3275, 1, "KolkarMarauder_OnCombat")
RegisterUnitEvent(3275, 2, "KolkarMarauder_OnLeaveCombat")
RegisterUnitEvent(3275, 3, "KolkarMarauder_OnKilledTarget")
RegisterUnitEvent(3275, 4, "KolkarMarauder_OnDied")

--[[ The Barrens -- Kolkar Pack Runner.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function KolkarPackRunner_OnCombat(Unit, Event)
Unit:RegisterEvent("KolkarPackRunner_BattleShout", 4000, 1)
end

function KolkarPackRunner_BattleShout(pUnit, Event) 
pUnit:CastSpell(9128) 
end

function KolkarPackRunner_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function KolkarPackRunner_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function KolkarPackRunner_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3274, 1, "KolkarPackRunner_OnCombat")
RegisterUnitEvent(3274, 2, "KolkarPackRunner_OnLeaveCombat")
RegisterUnitEvent(3274, 3, "KolkarPackRunner_OnKilledTarget")
RegisterUnitEvent(3274, 4, "KolkarPackRunner_OnDied")

--[[ The Barrens -- Kolkar Stormer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function KolkarStormer_OnCombat(Unit, Event)
Unit:RegisterEvent("KolkarStormer_LightningBolt", 8000, 0)
Unit:RegisterEvent("KolkarStormer_LightningCloud", 4000, 1)
end

function KolkarStormer_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9532, pUnit:GetMainTank()) 
end

function KolkarStormer_LightningCloud(pUnit, Event) 
pUnit:CastSpell(6535) 
end

function KolkarStormer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function KolkarStormer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function KolkarStormer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3273, 1, "KolkarStormer_OnCombat")
RegisterUnitEvent(3273, 2, "KolkarStormer_OnLeaveCombat")
RegisterUnitEvent(3273, 3, "KolkarStormer_OnKilledTarget")
RegisterUnitEvent(3273, 4, "KolkarStormer_OnDied")

--[[ The Barrens -- Kolkar Stormseer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function KolkarStormseer_OnCombat(Unit, Event)
Unit:RegisterEvent("KolkarStormseer_FlingTorch", 2000, 1)
Unit:RegisterEvent("KolkarStormseer_LightningBolt", 8000, 0)
Unit:RegisterEvent("KolkarStormseer_LightningCloud", 4000, 1)
end

function KolkarStormseer_FlingTorch(pUnit, Event) 
pUnit:CastSpell(14292) 
end

function KolkarStormseer_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9532, pUnit:GetMainTank()) 
end

function KolkarStormseer_LightningCloud(pUnit, Event) 
pUnit:CastSpell(6535) 
end

function KolkarStormseer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function KolkarStormseer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function KolkarStormseer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(9523, 1, "KolkarStormseer_OnCombat")
RegisterUnitEvent(9523, 2, "KolkarStormseer_OnLeaveCombat")
RegisterUnitEvent(9523, 3, "KolkarStormseer_OnKilledTarget")
RegisterUnitEvent(9523, 4, "KolkarStormseer_OnDied")

--[[ The Barrens -- Kolkar Wrangler.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function KolkarWrangler_OnCombat(Unit, Event)
Unit:RegisterEvent("KolkarWrangler_Net", 10000, 0)
Unit:RegisterEvent("KolkarWrangler_Shoot", 6000, 0)
end

function KolkarWrangler_Net(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12024, pUnit:GetMainTank()) 
end

function KolkarWrangler_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function KolkarStormseer_LightningCloud(pUnit, Event) 
pUnit:CastSpell(6535) 
end

function KolkarWrangler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function KolkarWrangler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function KolkarWrangler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3272, 1, "KolkarWrangler_OnCombat")
RegisterUnitEvent(3272, 2, "KolkarWrangler_OnLeaveCombat")
RegisterUnitEvent(3272, 3, "KolkarWrangler_OnKilledTarget")
RegisterUnitEvent(3272, 4, "KolkarWrangler_OnDied")

--[[ The Barrens -- Kuz.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function Kuz_OnCombat(Unit, Event)
Unit:RegisterEvent("Kuz_FireBlast", 8000, 0)
Unit:RegisterEvent("Kuz_FrostNova", 10000, 0)
Unit:RegisterEvent("Kuz_Frostbolt", 4000, 0)
end

function Kuz_FireBlast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20795, pUnit:GetMainTank()) 
end

function Kuz_FrostNova(pUnit, Event) 
pUnit:CastSpell(11831) 
end

function Kuz_Frostbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20792, pUnit:GetMainTank()) 
end

function Kuz_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Kuz_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Kuz_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3436, 1, "Kuz_OnCombat")
RegisterUnitEvent(3436, 2, "Kuz_OnLeaveCombat")
RegisterUnitEvent(3436, 3, "Kuz_OnKilledTarget")
RegisterUnitEvent(3436, 4, "Kuz_OnDied")

--[[ The Barrens -- Lok Orcbane.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function LokOrcbane_OnCombat(Unit, Event)
Unit:RegisterEvent("LokOrcbane_Hamstring", 8000, 0)
end

function LokOrcbane_Hamstring(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9080, pUnit:GetMainTank()) 
end

function LokOrcbane_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LokOrcbane_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LokOrcbane_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3435, 1, "LokOrcbane_OnCombat")
RegisterUnitEvent(3435, 2, "LokOrcbane_OnLeaveCombat")
RegisterUnitEvent(3435, 3, "LokOrcbane_OnKilledTarget")
RegisterUnitEvent(3435, 4, "LokOrcbane_OnDied")

--[[ The Barrens -- Lost Barrens Kodo.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function LostBarrensKodo_OnCombat(Unit, Event)
Unit:RegisterEvent("LostBarrensKodo_KodoStomp", 6000, 0)
end

function LostBarrensKodo_KodoStomp(pUnit, Event) 
pUnit:CastSpell(6266) 
end

function LostBarrensKodo_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LostBarrensKodo_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LostBarrensKodo_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3236, 1, "LostBarrensKodo_OnCombat")
RegisterUnitEvent(3236, 2, "LostBarrensKodo_OnLeaveCombat")
RegisterUnitEvent(3236, 3, "LostBarrensKodo_OnKilledTarget")
RegisterUnitEvent(3236, 4, "LostBarrensKodo_OnDied")

--[[ The Barrens -- Malgin Barleybrew.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function MalginBarleybrew_OnCombat(Unit, Event)
Unit:RegisterEvent("MalginBarleybrew_BladeFlurry", 4000, 1)
Unit:RegisterEvent("MalginBarleybrew_BattleShout", 6000, 1)
end

function MalginBarleybrew_BladeFlurry(pUnit, Event) 
pUnit:CastSpell(3631) 
end

function MalginBarleybrew_BattleShout(pUnit, Event) 
pUnit:CastSpell(5242) 
end

function MalginBarleybrew_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MalginBarleybrew_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MalginBarleybrew_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5848, 1, "MalginBarleybrew_OnCombat")
RegisterUnitEvent(5848, 2, "MalginBarleybrew_OnLeaveCombat")
RegisterUnitEvent(5848, 3, "MalginBarleybrew_OnKilledTarget")
RegisterUnitEvent(5848, 4, "MalginBarleybrew_OnDied")

--[[ The Barrens -- Nak.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function Nak_OnCombat(Unit, Event)
Unit:RegisterEvent("Nak_LesserHealingWave", 15000, 0)
Unit:RegisterEvent("Nak_LightningBolt", 8000, 0)
end

function Nak_LesserHealingWave(pUnit, Event) 
pUnit:CastSpell(8004) 
end

function Nak_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9532, pUnit:GetMainTank()) 
end

function Nak_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Nak_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Nak_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3434, 1, "Nak_OnCombat")
RegisterUnitEvent(3434, 2, "Nak_OnLeaveCombat")
RegisterUnitEvent(3434, 3, "Nak_OnKilledTarget")
RegisterUnitEvent(3434, 4, "Nak_OnDied")

--[[ The Barrens -- Oasis Snapjaw.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function OasisSnapjaw_OnCombat(Unit, Event)
Unit:RegisterEvent("OasisSnapjaw_SlingDirt", 12000, 0)
end

function OasisSnapjaw_SlingDirt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6530, pUnit:GetMainTank()) 
end

function OasisSnapjaw_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function OasisSnapjaw_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function OasisSnapjaw_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3461, 1, "OasisSnapjaw_OnCombat")
RegisterUnitEvent(3461, 2, "OasisSnapjaw_OnLeaveCombat")
RegisterUnitEvent(3461, 3, "OasisSnapjaw_OnKilledTarget")
RegisterUnitEvent(3461, 4, "OasisSnapjaw_OnDied")

--[[ The Barrens -- Owatanka.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function Owatanka_OnCombat(Unit, Event)
Unit:RegisterEvent("Owatanka_ChainedBolt", 6000, 0)
end

function Owatanka_ChainedBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6254, pUnit:GetMainTank()) 
end

function Owatanka_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Owatanka_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Owatanka_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3473, 1, "Owatanka_OnCombat")
RegisterUnitEvent(3473, 2, "Owatanka_OnLeaveCombat")
RegisterUnitEvent(3473, 3, "Owatanka_OnKilledTarget")
RegisterUnitEvent(3473, 4, "Owatanka_OnDied")

--[[ The Barrens -- Polly.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function Polly_OnCombat(Unit, Event)
Unit:RegisterEvent("Polly_Stealth", 1000, 1)
Unit:RegisterEvent("Polly_SummonPollyJr", 4000, 1)
end

function Polly_Stealth(pUnit, Event) 
pUnit:CastSpell(8822) 
end

function Polly_SummonPollyJr(pUnit, Event) 
pUnit:CastSpell(9998) 
end

function Polly_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Polly_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Polly_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(7167, 1, "Polly_OnCombat")
RegisterUnitEvent(7167, 2, "Polly_OnLeaveCombat")
RegisterUnitEvent(7167, 3, "Polly_OnKilledTarget")
RegisterUnitEvent(7167, 4, "Polly_OnDied")

--[[ The Barrens -- Prospector Khazgorm.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function ProspectorKhazgorm_OnCombat(Unit, Event)
Unit:RegisterEvent("ProspectorKhazgorm_Backhand", 8000, 0)
end

function ProspectorKhazgorm_Backhand(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6253, pUnit:GetMainTank()) 
end

function ProspectorKhazgorm_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ProspectorKhazgorm_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ProspectorKhazgorm_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5849, 1, "ProspectorKhazgorm_OnCombat")
RegisterUnitEvent(5849, 2, "ProspectorKhazgorm_OnLeaveCombat")
RegisterUnitEvent(5849, 3, "ProspectorKhazgorm_OnKilledTarget")
RegisterUnitEvent(5849, 4, "ProspectorKhazgorm_OnDied")

--[[ The Barrens -- Razorfen Battleguard.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function RazorfenBattleguard_OnCombat(Unit, Event)
Unit:RegisterEvent("RazorfenBattleguard_Slam", 6000, 0)
end

function RazorfenBattleguard_Slam(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11430, pUnit:GetMainTank()) 
end

function RazorfenBattleguard_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RazorfenBattleguard_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RazorfenBattleguard_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(7873, 1, "RazorfenBattleguard_OnCombat")
RegisterUnitEvent(7873, 2, "RazorfenBattleguard_OnLeaveCombat")
RegisterUnitEvent(7873, 3, "RazorfenBattleguard_OnKilledTarget")
RegisterUnitEvent(7873, 4, "RazorfenBattleguard_OnDied")

--[[ The Barrens -- Razorfen Thornweaver.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function RazorfenThornweaver_OnCombat(Unit, Event)
Unit:RegisterEvent("RazorfenThornweaver_HealingTouch", 15000, 0)
Unit:RegisterEvent("RazorfenThornweaver_Thorns", 4000, 1)
end

function RazorfenThornweaver_HealingTouch(pUnit, Event) 
pUnit:CastSpell(11431) 
end

function RazorfenThornweaver_Thorns(pUnit, Event) 
pUnit:CastSpell(7966) 
end

function RazorfenThornweaver_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RazorfenThornweaver_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RazorfenThornweaver_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(7874, 1, "RazorfenThornweaver_OnCombat")
RegisterUnitEvent(7874, 2, "RazorfenThornweaver_OnLeaveCombat")
RegisterUnitEvent(7874, 3, "RazorfenThornweaver_OnKilledTarget")
RegisterUnitEvent(7874, 4, "RazorfenThornweaver_OnDied")

--[[ The Barrens -- Razormane Defender.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function RazormaneDefender_OnCombat(Unit, Event)
Unit:RegisterEvent("RazormaneDefender_BattleStance", 1000, 1)
Unit:RegisterEvent("RazormaneDefender_DemoralizingShout", 4000, 1)
Unit:RegisterEvent("RazormaneDefender_HeroicStrike", 6000, 0)
end

function RazormaneDefender_BattleStance(pUnit, Event) 
pUnit:CastSpell(7165) 
end

function RazormaneDefender_DemoralizingShout(pUnit, Event) 
pUnit:CastSpell(13730) 
end

function RazormaneDefender_HeroicStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(25710, pUnit:GetMainTank()) 
end

function RazormaneDefender_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RazormaneDefender_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RazormaneDefender_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3266, 1, "RazormaneDefender_OnCombat")
RegisterUnitEvent(3266, 2, "RazormaneDefender_OnLeaveCombat")
RegisterUnitEvent(3266, 3, "RazormaneDefender_OnKilledTarget")
RegisterUnitEvent(3266, 4, "RazormaneDefender_OnDied")

--[[ The Barrens -- Razormane Geomancer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function RazormaneGeomancer_OnCombat(Unit, Event)
Unit:RegisterEvent("RazormaneGeomancer_Fireball", 8000, 0)
Unit:RegisterEvent("RazormaneGeomancer_FrostArmor", 1000, 1)
end

function RazormaneGeomancer_FrostArmor(pUnit, Event) 
pUnit:CastSpell(12544) 
end

function RazormaneGeomancer_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20793, pUnit:GetMainTank()) 
end

function RazormaneGeomancer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RazormaneGeomancer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RazormaneGeomancer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3269, 1, "RazormaneGeomancer_OnCombat")
RegisterUnitEvent(3269, 2, "RazormaneGeomancer_OnLeaveCombat")
RegisterUnitEvent(3269, 3, "RazormaneGeomancer_OnKilledTarget")
RegisterUnitEvent(3269, 4, "RazormaneGeomancer_OnDied")

--[[ The Barrens -- Razormane Hunter.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function RazormaneHunter_OnCombat(Unit, Event)
Unit:RegisterEvent("RazormaneHunter_Shoot", 6000, 0)
Unit:RegisterEvent("RazormaneHunter_RazormaneWolf", 3000, 1)
end

function RazormaneHunter_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function RazormaneHunter_RazormaneWolf(pUnit, Event) 
pUnit:CastSpell(6479) 
end

function RazormaneHunter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RazormaneHunter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RazormaneHunter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3265, 1, "RazormaneHunter_OnCombat")
RegisterUnitEvent(3265, 2, "RazormaneHunter_OnLeaveCombat")
RegisterUnitEvent(3265, 3, "RazormaneHunter_OnKilledTarget")
RegisterUnitEvent(3265, 4, "RazormaneHunter_OnDied")

--[[ The Barrens -- Razormane Mystic.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function RazormaneMystic_OnCombat(Unit, Event)
Unit:RegisterEvent("RazormaneMystic_HealingWave", 12000, 0)
Unit:RegisterEvent("RazormaneMystic_LightningShield", 3000, 0)
end

function RazormaneMystic_HealingWave(pUnit, Event) 
pUnit:CastSpell(547) 
end

function RazormaneMystic_LightningShield(pUnit, Event) 
pUnit:CastSpell(324) 
end

function RazormaneMystic_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RazormaneMystic_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RazormaneMystic_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3271, 1, "RazormaneMystic_OnCombat")
RegisterUnitEvent(3271, 2, "RazormaneMystic_OnLeaveCombat")
RegisterUnitEvent(3271, 3, "RazormaneMystic_OnKilledTarget")
RegisterUnitEvent(3271, 4, "RazormaneMystic_OnDied")

--[[ The Barrens -- Razormane Pathfinder.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function RazormanePathfinder_OnCombat(Unit, Event)
Unit:RegisterEvent("RazormanePathfinder_Shoot", 6000, 0)
Unit:RegisterEvent("RazormanePathfinder_Thrash", 4000, 1)
end

function RazormanePathfinder_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function RazormanePathfinder_Thrash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3391, pUnit:GetMainTank()) 
end

function RazormanePathfinder_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RazormanePathfinder_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RazormanePathfinder_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3456, 1, "RazormanePathfinder_OnCombat")
RegisterUnitEvent(3456, 2, "RazormanePathfinder_OnLeaveCombat")
RegisterUnitEvent(3456, 3, "RazormanePathfinder_OnKilledTarget")
RegisterUnitEvent(3456, 4, "RazormanePathfinder_OnDied")

--[[ The Barrens -- Razormane Seer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function RazormaneSeer_OnCombat(Unit, Event)
Unit:RegisterEvent("RazormaneSeer_HealingWard", 2000, 1)
Unit:RegisterEvent("RazormaneSeer_SearingTotem", 4000, 1)
end

function RazormaneSeer_HealingWard(pUnit, Event) 
pUnit:CastSpell(6274) 
end

function RazormaneSeer_SearingTotem(pUnit, Event) 
pUnit:CastSpell(6363) 
end

function RazormaneSeer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RazormaneSeer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RazormaneSeer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3458, 1, "RazormaneSeer_OnCombat")
RegisterUnitEvent(3458, 2, "RazormaneSeer_OnLeaveCombat")
RegisterUnitEvent(3458, 3, "RazormaneSeer_OnKilledTarget")
RegisterUnitEvent(3458, 4, "RazormaneSeer_OnDied")

--[[ The Barrens -- Razormane Stalker.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function RazormaneStalker_OnCombat(Unit, Event)
Unit:RegisterEvent("RazormaneStalker_SinesterStrike", 3000, 0)
end

function RazormaneStalker_SinesterStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(1758, pUnit:GetMainTank()) 
end

function RazormaneStalker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RazormaneStalker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RazormaneStalker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3457, 1, "RazormaneStalker_OnCombat")
RegisterUnitEvent(3457, 2, "RazormaneStalker_OnLeaveCombat")
RegisterUnitEvent(3457, 3, "RazormaneStalker_OnKilledTarget")
RegisterUnitEvent(3457, 4, "RazormaneStalker_OnDied")

--[[ The Barrens -- Razormane Thornweaver.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function RazormaneThornweaver_OnCombat(Unit, Event)
Unit:RegisterEvent("RazormaneThornweaver_FaerieFire", 8000, 1)
Unit:RegisterEvent("RazormaneThornweaver_Thorns", 2000, 1)
end

function RazormaneThornweaver_FaerieFire(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6950, pUnit:GetMainTank()) 
end

function RazormaneThornweaver_Thorns(pUnit, Event) 
pUnit:CastSpell(467) 
end

function RazormaneThornweaver_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RazormaneThornweaver_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RazormaneThornweaver_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3268, 1, "RazormaneThornweaver_OnCombat")
RegisterUnitEvent(3268, 2, "RazormaneThornweaver_OnLeaveCombat")
RegisterUnitEvent(3268, 3, "RazormaneThornweaver_OnKilledTarget")
RegisterUnitEvent(3268, 4, "RazormaneThornweaver_OnDied")

--[[ The Barrens -- Razormane Water Seeker.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function RazormaneWaterSeeker_OnCombat(Unit, Event)
Unit:RegisterEvent("RazormaneWaterSeeker_CreepingMold", 4000, 1)
end

function RazormaneWaterSeeker_CreepingMold(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6278, pUnit:GetMainTank()) 
end

function RazormaneWaterSeeker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RazormaneWaterSeeker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RazormaneWaterSeeker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3267, 1, "RazormaneWaterSeeker_OnCombat")
RegisterUnitEvent(3267, 2, "RazormaneWaterSeeker_OnLeaveCombat")
RegisterUnitEvent(3267, 3, "RazormaneWaterSeeker_OnKilledTarget")
RegisterUnitEvent(3267, 4, "RazormaneWaterSeeker_OnDied")

--[[ The Barrens -- Rocklance.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function Rocklance_OnCombat(Unit, Event)
Unit:RegisterEvent("Rocklance_Cleave", 4000, 0)
Unit:RegisterEvent("Rocklance_DefensiveStance", 2000, 1)
Unit:RegisterEvent("Rocklance_SunderArmor", 6000, 0)
end

function Rocklance_Cleave(pUnit, Event) 
pUnit:CastSpell(15496) 
end

function Rocklance_DefensiveStance(pUnit, Event) 
pUnit:CastSpell(7164) 
end

function Rocklance_SunderArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(21081, pUnit:GetMainTank()) 
end

function Rocklance_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Rocklance_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Rocklance_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5841, 1, "Rocklance_OnCombat")
RegisterUnitEvent(5841, 2, "Rocklance_OnLeaveCombat")
RegisterUnitEvent(5841, 3, "Rocklance_OnKilledTarget")
RegisterUnitEvent(5841, 4, "Rocklance_OnDied")

--[[ The Barrens -- Savannah Matriarch.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function SavannahMatriarch_OnCombat(Unit, Event)
Unit:RegisterEvent("SavannahMatriarch_SavannahCubs", 4000, 1)
end

function SavannahMatriarch_SavannahCubs(pUnit, Event) 
pUnit:CastSpell(8210) 
end

function SavannahMatriarch_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SavannahMatriarch_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SavannahMatriarch_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5865, 1, "SavannahMatriarch_OnCombat")
RegisterUnitEvent(5865, 2, "SavannahMatriarch_OnLeaveCombat")
RegisterUnitEvent(5865, 3, "SavannahMatriarch_OnKilledTarget")
RegisterUnitEvent(5865, 4, "SavannahMatriarch_OnDied")

--[[ The Barrens -- Serena Bloodfeather.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function SerenaBloodfeather_OnCombat(Unit, Event)
Unit:RegisterEvent("SerenaBloodfeather_BloodHowl", 10000, 0)
end

function SerenaBloodfeather_BloodHowl(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3264, pUnit:GetMainTank()) 
end

function SerenaBloodfeather_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SerenaBloodfeather_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SerenaBloodfeather_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3452, 1, "SerenaBloodfeather_OnCombat")
RegisterUnitEvent(3452, 2, "SerenaBloodfeather_OnLeaveCombat")
RegisterUnitEvent(3452, 3, "SerenaBloodfeather_OnKilledTarget")
RegisterUnitEvent(3452, 4, "SerenaBloodfeather_OnDied")

--[[ The Barrens -- Silithid Creeper.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function SilithidCreeper_OnCombat(Unit, Event)
Unit:RegisterEvent("SilithidCreeper_SilithidCreeperEgg", 4000, 1)
end

function SilithidCreeper_SilithidCreeperEgg(pUnit, Event) 
pUnit:CastSpell(6587) 
end

function SilithidCreeper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SilithidCreeper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SilithidCreeper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3250, 1, "SilithidCreeper_OnCombat")
RegisterUnitEvent(3250, 2, "SilithidCreeper_OnLeaveCombat")
RegisterUnitEvent(3250, 3, "SilithidCreeper_OnKilledTarget")
RegisterUnitEvent(3250, 4, "SilithidCreeper_OnDied")

--[[ The Barrens -- Silithid Creeper Egg.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function SilithidCreeperEgg_OnCombat(Unit, Event)
Unit:RegisterEvent("SilithidCreeperEgg_Suicide", 20000, 1)
Unit:RegisterEvent("SilithidCreeperEgg_SummonSilithidGrub", 4000, 1)
end

function SilithidCreeperEgg_Suicide(pUnit, Event) 
pUnit:CastSpell(7) 
end

function SilithidCreeperEgg_SummonSilithidGrub(pUnit, Event) 
pUnit:CastSpell(6588) 
end

function SilithidCreeperEgg_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SilithidCreeperEgg_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SilithidCreeperEgg_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5781, 1, "SilithidCreeperEgg_OnCombat")
RegisterUnitEvent(5781, 2, "SilithidCreeperEgg_OnLeaveCombat")
RegisterUnitEvent(5781, 3, "SilithidCreeperEgg_OnKilledTarget")
RegisterUnitEvent(5781, 4, "SilithidCreeperEgg_OnDied")

--[[ The Barrens -- Silithid Harvester.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function SilithidHarvester_OnCombat(Unit, Event)
Unit:RegisterEvent("SilithidHarvester_HarvestSwarm", 6000, 0)
Unit:RegisterEvent("SilithidHarvester_SummonHarvesterSwarm", 3000, 1)
end

function SilithidHarvester_HarvestSwarm(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7277, pUnit:GetMainTank()) 
end

function SilithidHarvester_SummonHarvesterSwarm(pUnit, Event) 
pUnit:CastSpell(7278) 
end

function SilithidHarvester_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SilithidHarvester_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SilithidHarvester_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3253, 1, "SilithidHarvester_OnCombat")
RegisterUnitEvent(3253, 2, "SilithidHarvester_OnLeaveCombat")
RegisterUnitEvent(3253, 3, "SilithidHarvester_OnKilledTarget")
RegisterUnitEvent(3253, 4, "SilithidHarvester_OnDied")

--[[ The Barrens -- Silithid Swarmer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function SilithidSwarmer_OnCombat(Unit, Event)
Unit:RegisterEvent("SilithidSwarmer_SilithidSwarm", 3000, 1)
end

function SilithidSwarmer_SilithidSwarm(pUnit, Event) 
pUnit:CastSpell(6589) 
end

function SilithidSwarmer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SilithidSwarmer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SilithidSwarmer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3252, 1, "SilithidSwarmer_OnCombat")
RegisterUnitEvent(3252, 2, "SilithidSwarmer_OnLeaveCombat")
RegisterUnitEvent(3252, 3, "SilithidSwarmer_OnKilledTarget")
RegisterUnitEvent(3252, 4, "SilithidSwarmer_OnDied")

--[[ The Barrens -- Sister Rathtalon.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function SisterRathtalon_OnCombat(Unit, Event)
Unit:RegisterEvent("SisterRathtalon_EnvelopingWinds", 10000, 0)
Unit:RegisterEvent("SisterRathtalon_GustofWind", 14000, 0)
Unit:RegisterEvent("SisterRathtalon_LightningCloud", 3000, 1)
end

function SisterRathtalon_EnvelopingWinds(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6728, pUnit:GetMainTank()) 
end

function SisterRathtalon_GustofWind(pUnit, Event) 
pUnit:CastSpell(6982) 
end

function SisterRathtalon_LightningCloud(pUnit, Event) 
pUnit:CastSpell(6535) 
end

function SisterRathtalon_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SisterRathtalon_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SisterRathtalon_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5830, 1, "SisterRathtalon_OnCombat")
RegisterUnitEvent(5830, 2, "SisterRathtalon_OnLeaveCombat")
RegisterUnitEvent(5830, 3, "SisterRathtalon_OnKilledTarget")
RegisterUnitEvent(5830, 4, "SisterRathtalon_OnDied")

--[[ The Barrens -- Sludge Beast.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function SludgeBeast_OnCombat(Unit, Event)
Unit:RegisterEvent("SludgeBeast_BlackSludge", 6000, 0)
end

function SludgeBeast_BlackSludge(pUnit, Event) 
pUnit:CastSpell(7279) 
end

function SludgeBeast_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SludgeBeast_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SludgeBeast_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3295, 1, "SludgeBeast_OnCombat")
RegisterUnitEvent(3295, 2, "SludgeBeast_OnLeaveCombat")
RegisterUnitEvent(3295, 3, "SludgeBeast_OnKilledTarget")
RegisterUnitEvent(3295, 4, "SludgeBeast_OnDied")

--[[ The Barrens -- Snort the Heckler.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function SnorttheHeckler_OnCombat(Unit, Event)
Unit:RegisterEvent("SnorttheHeckler_ToxicSpit", 6000, 0)
end

function SnorttheHeckler_ToxicSpit(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7951, pUnit:GetMainTank()) 
end

function SnorttheHeckler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SnorttheHeckler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SnorttheHeckler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5829, 1, "SnorttheHeckler_OnCombat")
RegisterUnitEvent(5829, 2, "SnorttheHeckler_OnLeaveCombat")
RegisterUnitEvent(5829, 3, "SnorttheHeckler_OnKilledTarget")
RegisterUnitEvent(5829, 4, "SnorttheHeckler_OnDied")

--[[ The Barrens -- Southsea Brigand.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function SouthseaBrigand_OnCombat(Unit, Event)
Unit:RegisterEvent("SouthseaBrigand_Backhand", 8000, 0)
end

function SouthseaBrigand_Backhand(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6253, pUnit:GetMainTank()) 
end

function SouthseaBrigand_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SouthseaBrigand_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SouthseaBrigand_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3381, 1, "SouthseaBrigand_OnCombat")
RegisterUnitEvent(3381, 2, "SouthseaBrigand_OnLeaveCombat")
RegisterUnitEvent(3381, 3, "SouthseaBrigand_OnKilledTarget")
RegisterUnitEvent(3381, 4, "SouthseaBrigand_OnDied")

--[[ The Barrens -- Southsea Cannoneer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function SouthseaCannoneer_OnCombat(Unit, Event)
Unit:RegisterEvent("SouthseaCannoneer_Shoot", 6000, 0)
end

function SouthseaCannoneer_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function SouthseaCannoneer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SouthseaCannoneer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SouthseaCannoneer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3382, 1, "SouthseaCannoneer_OnCombat")
RegisterUnitEvent(3382, 2, "SouthseaCannoneer_OnLeaveCombat")
RegisterUnitEvent(3382, 3, "SouthseaCannoneer_OnKilledTarget")
RegisterUnitEvent(3382, 4, "SouthseaCannoneer_OnDied")

--[[ The Barrens -- Southsea Privateer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function SouthseaPrivateer_OnCombat(Unit, Event)
Unit:RegisterEvent("SouthseaPrivateer_FireShot", 9000, 0)
Unit:RegisterEvent("SouthseaPrivateer_Shoot", 6000, 0)
end

function SouthseaPrivateer_FireShot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6979, pUnit:GetMainTank()) 
end

function SouthseaPrivateer_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function SouthseaPrivateer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SouthseaPrivateer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SouthseaPrivateer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3384, 1, "SouthseaPrivateer_OnCombat")
RegisterUnitEvent(3384, 2, "SouthseaPrivateer_OnLeaveCombat")
RegisterUnitEvent(3384, 3, "SouthseaPrivateer_OnKilledTarget")
RegisterUnitEvent(3384, 4, "SouthseaPrivateer_OnDied")

--[[ The Barrens -- Stormhide.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function Stormhide_OnCombat(Unit, Event)
Unit:RegisterEvent("Stormhide_LizardBolt", 6000, 0)
end

function Stormhide_LizardBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5401, pUnit:GetMainTank()) 
end

function Stormhide_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Stormhide_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Stormhide_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3238, 1, "Stormhide_OnCombat")
RegisterUnitEvent(3238, 2, "Stormhide_OnLeaveCombat")
RegisterUnitEvent(3238, 3, "Stormhide_OnKilledTarget")
RegisterUnitEvent(3238, 4, "Stormhide_OnDied")

--[[ The Barrens -- Stormsnout.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function Stormsnout_OnCombat(Unit, Event)
Unit:RegisterEvent("Stormsnout_LizardBolt", 6000, 0)
end

function Stormsnout_LizardBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5401, pUnit:GetMainTank()) 
end

function Stormsnout_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Stormsnout_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Stormsnout_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3240, 1, "Stormsnout_OnCombat")
RegisterUnitEvent(3240, 2, "Stormsnout_OnLeaveCombat")
RegisterUnitEvent(3240, 3, "Stormsnout_OnKilledTarget")
RegisterUnitEvent(3240, 4, "Stormsnout_OnDied")

--[[ The Barrens -- Summoned Felhunter.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function SummonedFelhunter_OnCombat(Unit, Event)
Unit:RegisterEvent("SummonedFelhunter_ManaBurn", 6000, 0)
end

function SummonedFelhunter_ManaBurn(pUnit, Event) 
pUnit:FullCastSpellOnTarget(2691, pUnit:GetRandomPlayer(4)) 
end

function SummonedFelhunter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SummonedFelhunter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SummonedFelhunter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6268, 1, "SummonedFelhunter_OnCombat")
RegisterUnitEvent(6268, 2, "SummonedFelhunter_OnLeaveCombat")
RegisterUnitEvent(6268, 3, "SummonedFelhunter_OnKilledTarget")
RegisterUnitEvent(6268, 4, "SummonedFelhunter_OnDied")

--[[ The Barrens -- Sunscale Lashtail.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function SunscaleLashtail_OnCombat(Unit, Event)
Unit:RegisterEvent("SunscaleLashtail_Lash", 6000, 0)
end

function SunscaleLashtail_Lash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6607, pUnit:GetMainTank()) 
end

function SunscaleLashtail_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SunscaleLashtail_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SunscaleLashtail_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3254, 1, "SunscaleLashtail_OnCombat")
RegisterUnitEvent(3254, 2, "SunscaleLashtail_OnLeaveCombat")
RegisterUnitEvent(3254, 3, "SunscaleLashtail_OnKilledTarget")
RegisterUnitEvent(3254, 4, "SunscaleLashtail_OnDied")

--[[ The Barrens -- Sunscale Scytheclaw.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function SunscaleScytheclaw_OnCombat(Unit, Event)
Unit:RegisterEvent("SunscaleScytheclaw_Thrash", 6000, 0)
end

function SunscaleScytheclaw_Thrash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3391, pUnit:GetMainTank()) 
end

function SunscaleScytheclaw_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SunscaleScytheclaw_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SunscaleScytheclaw_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3256, 1, "SunscaleScytheclaw_OnCombat")
RegisterUnitEvent(3256, 2, "SunscaleScytheclaw_OnLeaveCombat")
RegisterUnitEvent(3256, 3, "SunscaleScytheclaw_OnKilledTarget")
RegisterUnitEvent(3256, 4, "SunscaleScytheclaw_OnDied")

--[[ The Barrens -- Swiftmane.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function Swiftmane_OnCombat(Unit, Event)
Unit:RegisterEvent("Swiftmane_PierceArmor", 10000, 0)
end

function Swiftmane_PierceArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6016, pUnit:GetMainTank()) 
end

function Swiftmane_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Swiftmane_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Swiftmane_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5831, 1, "Swiftmane_OnCombat")
RegisterUnitEvent(5831, 2, "Swiftmane_OnLeaveCombat")
RegisterUnitEvent(5831, 3, "Swiftmane_OnKilledTarget")
RegisterUnitEvent(5831, 4, "Swiftmane_OnDied")

--[[ The Barrens -- Swinegart Spearhide.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function SwinegartSpearhide_OnCombat(Unit, Event)
Unit:RegisterEvent("SwinegartSpearhide_PierceArmor", 10000, 0)
end

function SwinegartSpearhide_PierceArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6016, pUnit:GetMainTank()) 
end

function SwinegartSpearhide_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SwinegartSpearhide_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SwinegartSpearhide_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5864, 1, "SwinegartSpearhide_OnCombat")
RegisterUnitEvent(5864, 2, "SwinegartSpearhide_OnLeaveCombat")
RegisterUnitEvent(5864, 3, "SwinegartSpearhide_OnKilledTarget")
RegisterUnitEvent(5864, 4, "SwinegartSpearhide_OnDied")

--[[ The Barrens -- Tazan.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function Tazan_OnCombat(Unit, Event)
Unit:RegisterEvent("Tazan_Backhand", 8000, 0)
end

function Tazan_Backhand(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6253, pUnit:GetMainTank()) 
end

function Tazan_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Tazan_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Tazan_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6494, 1, "Tazan_OnCombat")
RegisterUnitEvent(6494, 2, "Tazan_OnLeaveCombat")
RegisterUnitEvent(6494, 3, "Tazan_OnKilledTarget")
RegisterUnitEvent(6494, 4, "Tazan_OnDied")

--[[ The Barrens -- Theramore Marine.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function TheramoreMarine_OnCombat(Unit, Event)
Unit:RegisterEvent("TheramoreMarine_DefensiveStance", 2000, 1)
Unit:RegisterEvent("TheramoreMarine_Disarm", 6000, 0)
Unit:RegisterEvent("TheramoreMarine_ShieldBash", 8000, 0)
end

function TheramoreMarine_DefensiveStance(pUnit, Event) 
pUnit:CastSpell(7164) 
end

function TheramoreMarine_Disarm(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6713, pUnit:GetMainTank()) 
end

function TheramoreMarine_ShieldBash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(72, pUnit:GetMainTank()) 
end

function TheramoreMarine_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TheramoreMarine_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TheramoreMarine_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3385, 1, "TheramoreMarine_OnCombat")
RegisterUnitEvent(3385, 2, "TheramoreMarine_OnLeaveCombat")
RegisterUnitEvent(3385, 3, "TheramoreMarine_OnKilledTarget")
RegisterUnitEvent(3385, 4, "TheramoreMarine_OnDied")

--[[ The Barrens -- Theramore Preserver.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function TheramorePreserver_OnCombat(Unit, Event)
Unit:RegisterEvent("TheramorePreserver_Smite", 8000, 0)
Unit:RegisterEvent("TheramorePreserver_LesserHeal", 12000, 0)
Unit:RegisterEvent("TheramorePreserver_Renew", 5000, 1)
end

function TheramorePreserver_Smite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9734, pUnit:GetMainTank()) 
end

function TheramorePreserver_LesserHeal(pUnit, Event) 
pUnit:CastSpell(2052) 
end

function TheramorePreserver_Renew(pUnit, Event) 
pUnit:CastSpell(6074) 
end

function TheramorePreserver_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TheramorePreserver_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TheramorePreserver_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3386, 1, "TheramorePreserver_OnCombat")
RegisterUnitEvent(3386, 2, "TheramorePreserver_OnLeaveCombat")
RegisterUnitEvent(3386, 3, "TheramorePreserver_OnKilledTarget")
RegisterUnitEvent(3386, 4, "TheramorePreserver_OnDied")

--[[ The Barrens -- Thunderhawk Cloudscraper.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function ThunderhawkCloudscraper_OnCombat(Unit, Event)
Unit:RegisterEvent("ThunderhawkCloudscraper_ThunderClap", 10000, 0)
end

function ThunderhawkCloudscraper_ThunderClap(pUnit, Event) 
pUnit:CastSpell(8078) 
end

function ThunderhawkCloudscraper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ThunderhawkCloudscraper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ThunderhawkCloudscraper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3424, 1, "ThunderhawkCloudscraper_OnCombat")
RegisterUnitEvent(3424, 2, "ThunderhawkCloudscraper_OnLeaveCombat")
RegisterUnitEvent(3424, 3, "ThunderhawkCloudscraper_OnKilledTarget")
RegisterUnitEvent(3424, 4, "ThunderhawkCloudscraper_OnDied")

--[[ The Barrens -- Thunderhawk Hatchling.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function ThunderhawkHatchling_OnCombat(Unit, Event)
Unit:RegisterEvent("ThunderhawkHatchling_LightningShield", 4000, 0)
Unit:RegisterEvent("ThunderhawkHatchling_LightningBolt", 8000, 0)
end

function ThunderhawkHatchling_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9532, pUnit:GetMainTank()) 
end

function ThunderhawkHatchling_LightningShield(pUnit, Event) 
pUnit:CastSpell(325) 
end

function ThunderhawkHatchling_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ThunderhawkHatchling_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ThunderhawkHatchling_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3247, 1, "ThunderhawkHatchling_OnCombat")
RegisterUnitEvent(3247, 2, "ThunderhawkHatchling_OnLeaveCombat")
RegisterUnitEvent(3247, 3, "ThunderhawkHatchling_OnKilledTarget")
RegisterUnitEvent(3247, 4, "ThunderhawkHatchling_OnDied")

--[[ The Barrens -- Thunderhead.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function Thunderhead_OnCombat(Unit, Event)
Unit:RegisterEvent("Thunderhead_LizardBolt", 6000, 0)
end

function Thunderhead_LizardBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5401, pUnit:GetMainTank()) 
end

function Thunderhead_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Thunderhead_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Thunderhead_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3239, 1, "Thunderhead_OnCombat")
RegisterUnitEvent(3239, 2, "Thunderhead_OnLeaveCombat")
RegisterUnitEvent(3239, 3, "Thunderhead_OnKilledTarget")
RegisterUnitEvent(3239, 4, "Thunderhead_OnDied")

--[[ The Barrens -- Thunderstomp.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function Thunderstomp_OnCombat(Unit, Event)
Unit:RegisterEvent("Thunderstomp_ChainedBolt", 6000, 0)
end

function Thunderstomp_ChainedBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6254, pUnit:GetMainTank()) 
end

function Thunderstomp_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Thunderstomp_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Thunderstomp_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5832, 1, "Thunderstomp_OnCombat")
RegisterUnitEvent(5832, 2, "Thunderstomp_OnLeaveCombat")
RegisterUnitEvent(5832, 3, "Thunderstomp_OnKilledTarget")
RegisterUnitEvent(5832, 4, "Thunderstomp_OnDied")

--[[ The Barrens -- Venture Co. Enforcer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function VentureCoEnforcer_OnCombat(Unit, Event)
Unit:RegisterEvent("VentureCoEnforcer_BattleShout", 2000, 1)
Unit:RegisterEvent("VentureCoEnforcer_Disarm", 10000, 0)
end

function VentureCoEnforcer_BattleShout(pUnit, Event) 
pUnit:CastSpell(9128) 
end

function VentureCoEnforcer_Disarm(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6713, pUnit:GetMainTank()) 
end

function VentureCoEnforcer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function VentureCoEnforcer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function VentureCoEnforcer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3283, 1, "VentureCoEnforcer_OnCombat")
RegisterUnitEvent(3283, 2, "VentureCoEnforcer_OnLeaveCombat")
RegisterUnitEvent(3283, 3, "VentureCoEnforcer_OnKilledTarget")
RegisterUnitEvent(3283, 4, "VentureCoEnforcer_OnDied")

--[[ The Barrens -- Venture Co. Mercenary.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function VentureCoMercenary_OnCombat(Unit, Event)
Unit:RegisterEvent("VentureCoMercenary_Shoot", 6000, 0)
end

function VentureCoMercenary_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function VentureCoMercenary_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function VentureCoMercenary_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function VentureCoMercenary_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3382, 1, "VentureCoMercenary_OnCombat")
RegisterUnitEvent(3382, 2, "VentureCoMercenary_OnLeaveCombat")
RegisterUnitEvent(3382, 3, "VentureCoMercenary_OnKilledTarget")
RegisterUnitEvent(3382, 4, "VentureCoMercenary_OnDied")

--[[ The Barrens -- Warlord Kromzar.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function WarlordKromzar_OnCombat(Unit, Event)
Unit:RegisterEvent("WarlordKromzar_CreateKromzarsBanner", 2000, 1)
Unit:RegisterEvent("WarlordKromzar_Strike", 5000, 0)
end

function WarlordKromzar_CreateKromzarsBanner(pUnit, Event) 
pUnit:CastSpell(13965) 
end

function WarlordKromzar_Strike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11976, pUnit:GetMainTank()) 
end

function WarlordKromzar_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WarlordKromzar_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WarlordKromzar_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(9456, 1, "WarlordKromzar_OnCombat")
RegisterUnitEvent(9456, 2, "WarlordKromzar_OnLeaveCombat")
RegisterUnitEvent(9456, 3, "WarlordKromzar_OnKilledTarget")
RegisterUnitEvent(9456, 4, "WarlordKromzar_OnDied")

--[[ The Barrens -- Witchwing Ambusher.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function WitchwingAmbusher_OnCombat(Unit, Event)
Unit:RegisterEvent("WitchwingAmbusher_ExploitWeakness", 5000, 0)
end

function WitchwingAmbusher_ExploitWeakness(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6595, pUnit:GetMainTank()) 
end

function WitchwingAmbusher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WitchwingAmbusher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WitchwingAmbusher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3279, 1, "WitchwingAmbusher_OnCombat")
RegisterUnitEvent(3279, 2, "WitchwingAmbusher_OnLeaveCombat")
RegisterUnitEvent(3279, 3, "WitchwingAmbusher_OnKilledTarget")
RegisterUnitEvent(3279, 4, "WitchwingAmbusher_OnDied")

--[[ The Barrens -- Witchwing Harpy.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function WitchwingHarpy_OnCombat(Unit, Event)
Unit:RegisterEvent("WitchwingHarpy_CurseofMending", 4000, 1)
end

function WitchwingHarpy_CurseofMending(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7098, pUnit:GetMainTank()) 
end

function WitchwingHarpy_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WitchwingHarpy_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WitchwingHarpy_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3276, 1, "WitchwingHarpy_OnCombat")
RegisterUnitEvent(3276, 2, "WitchwingHarpy_OnLeaveCombat")
RegisterUnitEvent(3276, 3, "WitchwingHarpy_OnKilledTarget")
RegisterUnitEvent(3276, 4, "WitchwingHarpy_OnDied")

--[[ The Barrens -- Witchwing Roguefeather.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function WitchwingRoguefeather_OnCombat(Unit, Event)
Unit:RegisterEvent("WitchwingRoguefeather_ExploitWeakness", 60000, 0)
Unit:RegisterEvent("WitchwingRoguefeather_SlowingPoison", 10000, 0)
end

function WitchwingRoguefeather_ExploitWeakness(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6595, pUnit:GetMainTank()) 
end

function WitchwingRoguefeather_SlowingPoison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7992, pUnit:GetMainTank()) 
end

function WitchwingRoguefeather_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WitchwingRoguefeather_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WitchwingRoguefeather_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3277, 1, "WitchwingRoguefeather_OnCombat")
RegisterUnitEvent(3277, 2, "WitchwingRoguefeather_OnLeaveCombat")
RegisterUnitEvent(3277, 3, "WitchwingRoguefeather_OnKilledTarget")
RegisterUnitEvent(3277, 4, "WitchwingRoguefeather_OnDied")

--[[ The Barrens -- Witchwing Slayer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function WitchwingSlayer_OnCombat(Unit, Event)
Unit:RegisterEvent("WitchwingSlayer_DemoralizingShout", 3000, 1)
end

function WitchwingSlayer_DemoralizingShout(pUnit, Event) 
pUnit:CastSpell(13730) 
end

function WitchwingSlayer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WitchwingSlayer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WitchwingSlayer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3278, 1, "WitchwingSlayer_OnCombat")
RegisterUnitEvent(3278, 2, "WitchwingSlayer_OnLeaveCombat")
RegisterUnitEvent(3278, 3, "WitchwingSlayer_OnKilledTarget")
RegisterUnitEvent(3278, 4, "WitchwingSlayer_OnDied")

--[[ The Barrens -- Witchwing Windcaller.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function WitchwingWindcaller_OnCombat(Unit, Event)
Unit:RegisterEvent("WitchwingWindcaller_EnvelopingWinds", 10000, 0)
end

function WitchwingWindcaller_EnvelopingWinds(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6728, pUnit:GetMainTank()) 
end

function WitchwingWindcaller_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WitchwingWindcaller_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WitchwingWindcaller_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3280, 1, "WitchwingWindcaller_OnCombat")
RegisterUnitEvent(3280, 2, "WitchwingWindcaller_OnLeaveCombat")
RegisterUnitEvent(3280, 3, "WitchwingWindcaller_OnKilledTarget")
RegisterUnitEvent(3280, 4, "WitchwingWindcaller_OnDied")

--[[ ALL CREDITS GO TO BLUA SCRIPTING AND THE
                 WRITER OF THESE SCRIPTS BLACKHER0 and Mikebeck
    BlackHer0, Novembar, 2th, 2008. --]]