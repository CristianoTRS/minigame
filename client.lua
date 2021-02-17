RegisterNetEvent('minigame:startMinigame')
AddEventHandler('minigame:startMinigame', function(cb)
    SetNuiFocus(true, true)
    SendNUIMessage({
        action = 'show'
    })
    RegisterNUICallback('minigameFinished', function(data)
        SetNuiFocus(false, false)
        cb(data.isSuccess)
    end)
end)

--[[

How to include it in your script (Has to be in your client-side file):

RegisterCommand('minigame', function()
    TriggerEvent('minigame:startMinigame', function(data)
        -- DO SOMETHING
    end)
end, false)

]]