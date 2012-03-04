function KingVarianWrynn_Died(Unit, event, player)
Unit:RemoveEvents()
end

function KingVarianWrynn(Unit, event, player)
Unit:RegisterEvent("KingVarianWrynn_Say",69000, 0)
end

function KingVarianWrynn_Say(Unit, event, player)
Unit:SendChatMessage(12, 0, "Our Faction .. The Alliance have suffered greatly because of these beasts ... its time for revenge! ")
end

RegisterUnitEvent(515159, 18, "KingVarianWrynn")
RegisterUnitEvent(515159, 4, "KingVarianWrynn_Died")