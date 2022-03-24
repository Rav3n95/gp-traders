local QBCore = exports['qb-core']:GetCoreObject()
local _PlayerPedId, _GetEntityCoords, ped
local traderBuyGoods, traderSellGoods = {}, {}
local sellItems, buyItems = false, false

CreateThread(function()

    QBCore.Functions.TriggerCallback('gp-trade:server:getConfig', function(Config)
        
        for k, v in pairs(Config.Traders) do
            for i = 1, #v.coords do
                print(v.model)
                _CreatePed(GetHashKey(v.model), vector4(v.coords[i].x, v.coords[i].y, v.coords[i].z -1, v.coords[i].w), v.scenario)

                local blipcoord = vector2(v.coords[i].x, v.coords[i].y)
                local blipInfo = v.blip
                if blipInfo.Show then
            
                    local traderBlip = AddBlipForCoord(blipcoord)
                    SetBlipSprite(traderBlip, blipInfo.Type)
                    SetBlipScale(traderBlip, blipInfo.Scale)
                    SetBlipColour(traderBlip, blipInfo.Color)
                    SetBlipAsShortRange(traderBlip, true)
                    BeginTextCommandSetBlipName('STRING')
                    AddTextComponentSubstringPlayerName(blipInfo.Name)
                    EndTextCommandSetBlipName(traderBlip)
            
                end

                exports['qb-target']:AddTargetEntity(ped, {
                    options = {
                        {
                            type = 'client',
                            action = function(entity)
                                traderBuyGoods, traderSellGoods = {}, {}
                                sellItems, buyItems = false, false
                                local coord = GetEntityCoords(PlayerPedId())
                                local traderCoord = vector3(v.coords[i].x, v.coords[i].y, v.coords[i].z)
                                local traderDistance = #(coord - traderCoord)
                                local traderBuy = v.items.buy
                                local traderSell = v.items.sell

                                if v.buyItems == true then
                                    buyItems = true
                                    for i = 1, #traderBuy do
                                        table.insert(traderBuyGoods, traderBuy[i])
                                    end
                                end

                                if v.sellItems == true then
                                    sellItems = true
                                    for i = 1, #traderSell do
                                        table.insert(traderSellGoods, traderSell[i])
                                    end
                                end
                                PlayPedAmbientSpeechWithVoiceNative( entity, 'GENERIC_HI', v.voice, 'SPEECH_PARAMS_STANDARD', 1);
                                TriggerEvent('gp-trade:client:OpenMenu')
                            end,
                            icon = 'fas fa-sign-in-alt',
                            label = Lang:t('info.title'),
                        },
                    },
                    distance = 1.5
                })
            end
        end
    end)
end)

RegisterNetEvent('gp-trade:client:OpenMenu', function()

    local openShop = {
        {
            header = Lang:t('info.title'),
            isMenuHeader = true,
        }
    }

    if buyItems then
        openShop[#openShop +1] = {
            header = Lang:t('info.sell'),
            txt = Lang:t('info.sell_to'),
            params = {
                event = 'gp-trade:client:OpenSellMenu',
                args = {
                    items = traderBuyGoods,
                }
            }
        }
    end

    if sellItems then
        openShop[#openShop +1] = {
            header = Lang:t('info.buy'),
            txt = Lang:t('info.buy_from'),
            params = {
                event = 'gp_trade:client:OpenShop',
            }
        }
    end

    openShop[#openShop +1] = {
        header = Lang:t('info.close'),
        params = {
            event = exports['qb-menu']:closeMenu()
        }
    }

    exports['qb-menu']:openMenu(openShop)
    
end)

RegisterNetEvent('gp-trade:client:OpenSellMenu', function(data)
    QBCore.Functions.TriggerCallback('gp-trade:server:getInv', function(inventory)
        local PlyInv = inventory

        local sellMenu = {
            {
				header = Lang:t('info.sell'),
				isMenuHeader = true,
			}
        }

        for k,v in pairs(PlyInv) do
			for i = 1, #data.items do
				if v.name == data.items[i].item then
				sellMenu[#sellMenu +1] = {
				 	header = QBCore.Shared.Items[v.name].label,
				    txt = Lang:t('info.sell_items', {value = data.items[i].price}),
				    params = {
				        event = 'gp-trade:client:SellItems',
							args = {
								label = QBCore.Shared.Items[v.name].label,
								price = data.items[i].price,
								name = v.name,
								amount = v.amount
							}
				    }
				}
				end
			end
		end

        sellMenu[#sellMenu+1] = {
			header = Lang:t('info.back'),
			params = {
				event = 'gp-trade:client:OpenMenu'
			}
		}

        exports['qb-menu']:openMenu(sellMenu)
    end)
end)

RegisterNetEvent('gp-trade:client:SellItems', function(item)
	local sellingItem = exports['qb-input']:ShowInput({
		header = Lang:t('info.title'),
		submitText = Lang:t('info.sell'),
		inputs = {
			{
				type = 'number',
				isRequired = false,
				name = 'amount',
				text = Lang:t('info.max', {value = item.amount})
			}
		}
	})

	if sellingItem then
		if not sellingItem.amount then
			return
		end

		if tonumber(sellingItem.amount) > 0 then
			TriggerServerEvent('gp-trade:server:SellItems', item.name, sellingItem.amount, item.price)
		else
			QBCore.Functions.Notify(Lang:t('error.negative'), 'error')
		end
	end
end)

RegisterNetEvent('gp_trade:client:OpenShop', function()
    local ShopItems = {}
    ShopItems.label = Lang:t('info.title')
    ShopItems.items = traderSellGoods
    ShopItems.slots = #traderSellGoods

    TriggerServerEvent('inventory:server:OpenInventory', 'shop', 'Trader', ShopItems)
end)

-- Functions
function _CreatePed(hash, coords, scenario)

    RequestModel(hash)
    while not HasModelLoaded(hash) do
        Citizen.Wait(5)
    end

    ped = CreatePed(4, hash, coords, false, false)
    SetEntityAsMissionEntity(ped, true, true)
    SetPedHearingRange(ped, 0.0)
    SetPedSeeingRange(ped, 0.0)
    SetPedAlertness(ped, 0.0)
    SetPedFleeAttributes(ped, 0, 0)
    SetBlockingOfNonTemporaryEvents(ped, true)
    SetPedCombatAttributes(ped, 46, true)
    TaskStartScenarioInPlace(ped, scenario, 0, true)
    SetEntityInvincible(ped, true)
    SetEntityCanBeDamaged(npc,false)
    SetEntityProofs(ped, true, true, true, true, true, true, 1, true)
    FreezeEntityPosition(ped, true)
end