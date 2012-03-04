function Thrall_Died(Unit, event, player)
Unit:RemoveEvents()
end

function Thrall(Unit, event, player)
Unit:RegisterEvent("Thrall_Say",69000, 0)
end

function Thrall_Say(Unit, event, player)
Unit:SendChatMessage(12, 0, "The Horde,Alliance,and the Argent Dawn will defeat you Sapphiron! ")
end

RegisterUnitEvent(515157, 18, "Thrall")
RegisterUnitEvent(515157, 4, "Thrall_Died")