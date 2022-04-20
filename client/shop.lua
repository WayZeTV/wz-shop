ESX = nil

Citizen.CreateThread(function()
    if Config.ESXConfiguration.trigger then
        Citizen.CreateThread(function()
          while ESX == nil do
            TriggerEvent(Config.ESXConfiguration.trigger, function(a)
              ESX = a
            end)
        Citizen.Wait(100)
            end
        end)
    end
end)

function OpenShopWZ()
    local Main = RageUI.CreateMenu("Supérette", "Bienvenue que souhaitez-vous acheter ?") 
    local Boissons = RageUI.CreateMenu("Les "..Config.Boissons.name.."", "Boutique "..Config.Boissons.name.."")
    local Nourritures = RageUI.CreateMenu("Les "..Config.Nourritures.name.."", "Boutique "..Config.Nourritures.name.."")
    local Divers = RageUI.CreateMenu(""..Config.Divers.name.."", "Boutique " ..Config.Divers.name.."")

    RageUI.Visible(Main, not RageUI.Visible(Main))
    if Config.FreezePlayer.active then
    FreezeEntityPosition(PlayerPedId(), true)
    end

    while Main do 
    Citizen.Wait(0)

        RageUI.IsVisible(Main, true, true, true, function()

            RageUI.Separator("~c~↓~w~  ~g~Achetez des produits  ~c~↓")

        if Config.Boissons.active then
            RageUI.Button(""..Config.Boissons.name.."", "Acheter des ~b~"..Config.Boissons.name.."", {RightLabel = "→"},true, function()
            end, Boissons)
        end

        if Config.Nourritures.active then
            RageUI.Button(""..Config.Nourritures.name.."", "Acheter des ~o~"..Config.Nourritures.name.."", {RightLabel = "→"},true, function()
            end, Nourritures)
        end

        if Config.Divers.active then
            RageUI.Button(""..Config.Divers.name.."", "Acheter des objets ~c~"..Config.Divers.name.."", {RightLabel = "→"},true, function()
            end, Divers)
        end

        if Config.QuitterLaBoutique.active then
            RageUI.Separator("~c~↓~w~  ~r~Quitter la boutique  ~c~↓")

            RageUI.Button("Quitter", "Quitter la ~r~boutique", {RightLabel = ""},true, function(Hovered, Active, Selected)
                if (Selected) then
                    RageUI.CloseAll()
                    if Config.FreezePlayer.active then
                        FreezeEntityPosition(PlayerPedId(), false)
                    end
                end
            end)
        end
    
        end, function()
    end)

RageUI.IsVisible(Boissons, true, true, true, function()

    for k, v in pairs(Config.Boissons.items) do
            RageUI.Button(v.label, "Acheter ~b~"..v.label.."~w~ pour ~g~"..v.price.."$", {RightLabel ="→ Acheter"}, true, function(Hovered, Active, Selected)

            if (Selected) then
                TriggerServerEvent('{-WayZe#0001-}::BuyShop', v.price, v.name, v.label)
            end
        end)
end

end, function()
end, 1)

RageUI.IsVisible(Nourritures, true, true, true, function()

    for k, v in pairs(Config.Nourritures.items) do
            RageUI.Button(v.label, "Acheter ~o~"..v.label.."~w~ pour ~g~"..v.price.."$", {RightLabel ="→ Acheter"}, true, function(Hovered, Active, Selected)

            if (Selected) then
                TriggerServerEvent('{-WayZe#0001-}::BuyShop', v.price, v.name, v.label)
            end
        end)
    end

end, function()
end, 1)

RageUI.IsVisible(Divers, true, true, true, function()

    for k, v in pairs(Config.Divers.items) do
            RageUI.Button(v.label, "Acheter ~c~"..v.label.."~w~ pour ~g~"..v.price.."$", {RightLabel ="→ Acheter"}, true, function(Hovered, Active, Selected)

            if (Selected) then
                TriggerServerEvent('{-WayZe#0001-}::BuyShop', v.price, v.name, v.label)
            end
        end)
    end
end)

    if not RageUI.Visible(Main) and not RageUI.Visible(Boissons) and not RageUI.Visible(Nourritures) and not RageUI.Visible(Divers) then
        Main = RMenu:DeleteType("Main", true)
        FreezeEntityPosition(PlayerPedId(), false)
        end
    end
end

Citizen.CreateThread(function()
    while true do
        local wait = 1000
        for k in pairs(Config.Blips.position) do
            
            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local pos = Config.Blips.position
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, pos[k].x, pos[k].y, pos[k].z)

            if Config.Marker.active then
            if dist <= Config.Marker.drawdistance then
               wait = 0
                DrawMarker(Config.Marker.type, pos[k].x, pos[k].y, pos[k].z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, Config.Marker.size.x, Config.Marker.size.y, Config.Marker.size.z, Config.Marker.color.r, Config.Marker.color.g, Config.Marker.color.b, 100, Config.Marker.jumped, true, 2, Config.Marker.turned, false, false, false)
               end
            end

            if dist <= 1.0 then
                wait = 0
                   RageUI.Text({
                        message = "[~g~E~w~] pour ~g~accéder~w~ à la ~g~Boutique",
                        time_display = 1
                    })
                    if IsControlJustPressed(1,51) then
                        OpenShopWZ()
                    end
                end
            end
        Citizen.Wait(wait)
    end
end)

-- Création du Blips + paramètres 

Citizen.CreateThread(function()
    for k, v in pairs(Config.Blips.position) do
    local blip = AddBlipForCoord(v.x, v.y, v.z)
    SetBlipSprite(blip, Config.Blips.id)
    SetBlipDisplay(blip, 4)
    SetBlipScale(blip, Config.Blips.scale)
    SetBlipColour(blip, Config.Blips.colour)
    SetBlipAsShortRange(blip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(Config.Blips.name)
    EndTextCommandSetBlipName(blip)
    end
end)