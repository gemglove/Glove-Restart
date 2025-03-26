-- 30 Minutes Reminder
RegisterNetEvent('glove:client:Trigger30', function(text)
    TriggerEvent('qb-phone:client:CustomNotification','Weather Alert', 'A storm will be reaching Los Santos in 30 minutes.', 'fas fa-sun', '#fff', 10000)
    TriggerServerEvent('qb-weathersync:server:setWeather', 'CLEAR')
end)

-- 15 Minutes Reminder
RegisterNetEvent('glove:client:Trigger15', function(text)
    TriggerEvent('qb-phone:client:CustomNotification','Weather Alert', 'A storm is reaching the city of Los Santos in 15 minutes. Begin to find shelter.', 'fas fa-cloud', '#fff', 10000)
    TriggerServerEvent('qb-weathersync:server:setWeather', 'RAIN')
end)

-- 5 Minutes Reminder
RegisterNetEvent('glove:client:Trigger5', function(text)
    TriggerEvent('qb-phone:client:CustomNotification','Weather Alert', 'The storm has reached Los Santos. Find shelter now!', 'fas fa-bolt', '#fff', 10000)
    TriggerServerEvent('qb-weathersync:server:setWeather', 'THUNDER')
    TriggerServerEvent('qb-weathersync:server:toggleBlackout')
    TriggerEvent('InteractSound_CL:PlayOnOne', 'power-down', 0.1)
end)

-- 1 Minutes Reminder
RegisterNetEvent('glove:client:Trigger1', function(text)
    TriggerEvent('qb-phone:client:CustomNotification','Weather Alert', 'Evacuate immediately! (1 minute)', 'fas fa-wind', '#fff', 10000)
end)