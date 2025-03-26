-- 30 minutes Reminder
AddEventHandler('txAdmin:events:scheduledRestart', function(eventData)
    if eventData.secondsRemaining == 1800 then
        if Config.UsingLBPhone then
            CreateThread(function()
                exports["lb-phone"]:SendNotification(-1, {
                app = "Weather", 
                title = "Weather Alert",
                content = "A storm is approching in 30 minutes", 
                icon = "https://cdn.discordapp.com/attachments/485278841141723166/1220911620100722788/weather.png?ex=6610a98d&is=65fe348d&hm=7fbacbf640de384f8168916ccfcd610243fe6862ca9957e5c9227827c4f1ef34&",
            }, function(res) end)
            end)
        else
            TriggerClientEvent('glove:client:Trigger30', -1)
        end
    end
end)

-- 15 Minutes Reminder
AddEventHandler('txAdmin:events:scheduledRestart', function(eventData)
    if eventData.secondsRemaining == 900 then
        if Config.UsingLBPhone then
            CreateThread(function()
                exports["lb-phone"]:SendNotification(-1, {
                app = "Weather", 
                title = "Weather Alert",
                content = "A storm is approching in 15 minutes", 
                icon = "https://cdn.discordapp.com/attachments/485278841141723166/1220911620100722788/weather.png?ex=6610a98d&is=65fe348d&hm=7fbacbf640de384f8168916ccfcd610243fe6862ca9957e5c9227827c4f1ef34&",
            }, function(res) end)
            end)
        else 
            TriggerClientEvent('glove:client:Trigger15', -1)
        end
    end
end)

-- 5 Minutes Reminder
AddEventHandler('txAdmin:events:scheduledRestart', function(eventData)
    if eventData.secondsRemaining == 300 then
        if Config.UsingLBPhone then
            CreateThread(function()
                exports["lb-phone"]:SendNotification(-1, {
                app = "Weather", 
                title = "Weather Alert",
                content = "A storm is approching in 5 minutes. Seek shelter",
                icon = "https://cdn.discordapp.com/attachments/485278841141723166/1220911620100722788/weather.png?ex=6610a98d&is=65fe348d&hm=7fbacbf640de384f8168916ccfcd610243fe6862ca9957e5c9227827c4f1ef34&",
            }, function(res) end)
            end)
        else
            TriggerClientEvent('glove:client:Trigger5', -1)
        end
    end
end)

-- 1 Minutes Reminder
AddEventHandler('txAdmin:events:scheduledRestart', function(eventData)
    if eventData.secondsRemaining == 60 then
        if Config.UsingLBPhone then
            CreateThread(function()
                exports["lb-phone"]:SendNotification(-1, {
                app = "Weather", 
                title = "Weather Alert",
                content = "A storm is approching in 1 minutes. Seek shelter immediately",
                icon = "https://cdn.discordapp.com/attachments/485278841141723166/1220911620100722788/weather.png?ex=6610a98d&is=65fe348d&hm=7fbacbf640de384f8168916ccfcd610243fe6862ca9957e5c9227827c4f1ef34&",
            }, function(res) end)
            end)
        else 
            TriggerClientEvent('glove:client:Trigger1', -1)
        end
    end
end)
