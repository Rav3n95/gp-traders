Config = {

    Traders = {

        ['Hunter'] = {
            model = 'cs_hunter',
            coords = {
                vector4(-330.4, 6078.52, 31.45, 315.54)
            },
            scenario = 'WORLD_HUMAN_COP_IDLES',
            voice = 'G_M_Y_Lost_02_WHITE_FULL_01', -- https://pastebin.com/FTeAj4yZ
            sellItems = true,
            buyItems = true,
            blip = { 
                Show = true, 
                Name = 'Vadász bolt',
                Color = 0, 
                Scale = 0.7, 
                Type = 141
            },

            items = {

                buy = {
                    {
                        item = 'meat',
                        price = 10,
                    },
                    {
                        item = 'beef',
                        price = 1,
                    },
                    {
                        item = 'pork',
                        price = 1,
                    },
                    {
                        item = 'hide',
                        price = 14,
                    },
                },

                sell = {
                    {
                        name = 'weapon_knife',
                        price = 100,
                        amount = 100,
                        info = {},
                        type = 'item',
                        slot = 1,
                    },
                    {
                        name = 'bandage',
                        price = 15,
                        amount = 50,
                        info = {},
                        type = 'item',
                        slot = 2,
                    }
                }

            }
        },
        
        ['Fisher'] = {
            model = 'ig_vernon',
            coords = {
                vector4(-806.17, -1496.57, 1.6, 100.0),
                vector4(-1614.79, 5259.7, 4.0, 95.53),
                vector4(3373.215, 5183.515, 1.46, 266.111),
                vector4(1694.811, 39.927, 161.767, 191.786),
                vector4(1299.665, 4231.885, 33.909, 81.693),
                vector4(-274.65, 6641.53, 7.42, 47.24),
                vector4(3861.56, 4465.0, 2.72, 355.73)
            },
            scenario = 'WORLD_HUMAN_STAND_FISHING',
            voice = 'G_M_Y_Lost_02_WHITE_FULL_01', -- https://pastebin.com/FTeAj4yZ
            sellItems = true,
            buyItems = false,
            blip = { 
                Show = false, 
                Name = '',
                Color = 0, 
                Scale = 0.7, 
                Type = 1
            },

            items = {

                buy = {
                },

                sell = {
                    {
                        name = 'fishingrod',
                        price = 15,
                        amount = 1000,
                        info = {},
                        type = 'item',
                        slot = 1,
                    },
                    {
                        name = 'fishbait',
                        price = 1,
                        amount = 1000,
                        info = {},
                        type = 'item',
                        slot = 2,
                    },
                    {
                        name = 'anchor',
                        price = 15,
                        amount = 1000,
                        info = {},
                        type = 'item',
                        slot = 3,
                    },
                    -- {
                    --     name = 'fishicebox',
                    --     price = 100,
                    --     amount = 1000,
                    --     info = {},
                    --     type = 'item',
                    --     slot = 4,
                    -- },
                }

            }
        },

        ['Fisherlocation'] = { --megjelölt
            model = 'ig_vernon',
            coords = {
                vector4(-1865.25, -1237.46, 8.62, 108.49),
            },
            scenario = 'WORLD_HUMAN_STAND_FISHING',
            voice = 'G_M_Y_Lost_02_WHITE_FULL_01', -- https://pastebin.com/FTeAj4yZ
            sellItems = true,
            buyItems = false,
            blip = { 
                Show = true, 
                Name = 'Horgászat',
                Color = 0, 
                Scale = 0.7, 
                Type = 317
            },

            items = {

                buy = {
                },

                sell = {
                    {
                        name = 'fishingrod',
                        price = 15,
                        amount = 1000,
                        info = {},
                        type = 'item',
                        slot = 1,
                    },
                    {
                        name = 'fishbait',
                        price = 1,
                        amount = 1000,
                        info = {},
                        type = 'item',
                        slot = 2,
                    },
                    {
                        name = 'anchor',
                        price = 15,
                        amount = 1000,
                        info = {},
                        type = 'item',
                        slot = 3,
                    },
                    -- {
                    --     name = 'fishicebox',
                    --     price = 100,
                    --     amount = 1000,
                    --     info = {},
                    --     type = 'item',
                    --     slot = 4,
                    -- },
                }

            }
        },

        ['FishBuyer'] = { -- legál
            model = 'g_m_m_armboss_01',
            coords = {
                vector4(-1816.55, -1193.49, 14.3, 328.67)
            },
            scenario = 'WORLD_HUMAN_COP_IDLES',
            voice = 'G_M_Y_Lost_02_WHITE_FULL_01', -- https://pastebin.com/FTeAj4yZ
            sellItems = true,
            buyItems = true,
            blip = { 
                Show = true, 
                Name = 'Hal kereskedés',
                Color = 0, 
                Scale = 0.7, 
                Type = 68
            },

            items = {

                buy = {
                    {
                        item = 'mackerel',
                        price = 4,
                    },
                    {
                        item = 'codfish',
                        price = 4,
                    },
                    {
                        item = 'bass',
                        price = 4,
                    },
                    {
                        item = 'flounder',
                        price = 4,
                    },
                    {
                        item = 'stingray',
                        price = 15,
                    },
                },

                sell = {
                    {
                        name = 'fishingrod',
                        price = 15,
                        amount = 1000,
                        info = {},
                        type = 'item',
                        slot = 1,
                    },
                    {
                        name = 'fishbait',
                        price = 1,
                        amount = 1000,
                        info = {},
                        type = 'item',
                        slot = 2,
                    },
                    {
                        name = 'anchor',
                        price = 15,
                        amount = 1000,
                        info = {},
                        type = 'item',
                        slot = 3,
                    },
                    -- {
                    --     name = 'fishicebox',
                    --     price = 100,
                    --     amount = 1000,
                    --     info = {},
                    --     type = 'item',
                    --     slot = 4,
                    -- },
                }

            }
        },
        
        ['FishBuyer2'] = {
            model = 'a_m_m_mlcrisis_01',
            coords = {
                vector4(950.19, -2124.33, 31.44, 267.87)
            },
            scenario = 'WORLD_HUMAN_COP_IDLES',
            voice = 'G_M_Y_Lost_02_WHITE_FULL_01', -- https://pastebin.com/FTeAj4yZ
            sellItems = true,
            buyItems = true,
            blip = { 
                Show = false, 
                Name = 'Hal kereskedés',
                Color = 0, 
                Scale = 0.7, 
                Type = 68
            },

            items = {

                buy = {
                    {
                        item = 'killerwhale',
                        price = 120,
                    },
                    {
                        item = 'dolphin',
                        price = 20,
                    },
                    {
                        item = 'sharkhammer',
                        price = 25,
                    },
                    {
                        item = 'sharktiger',
                        price = 25,
                    },
                },

                sell = {
                    {
                        name = 'fishingrod',
                        price = 15,
                        amount = 1000,
                        info = {},
                        type = 'item',
                        slot = 1,
                    },
                    {
                        name = 'fishbait',
                        price = 1,
                        amount = 1000,
                        info = {},
                        type = 'item',
                        slot = 2,
                    },
                    {
                        name = 'anchor',
                        price = 15,
                        amount = 1000,
                        info = {},
                        type = 'item',
                        slot = 3,
                    },
                    -- {
                    --     name = 'fishicebox',
                    --     price = 100,
                    --     amount = 1000,
                    --     info = {},
                    --     type = 'item',
                    --     slot = 4,
                    -- },
                }

            }
        },
        -- Pawn Shop

--[[         {
            model = 's_m_y_dealer_01',
            coords = {
                vector4(412.1, 315.2, 103.13, 208.14),
            },
            scenario = 'WORLD_HUMAN_LEANING',
            voice = 'LAMAR_NORMAL', -- https://pastebin.com/FTeAj4yZ
            sellItems = false,
            buyItems = true,
            blip = { 
                Show = true, 
                Name = 'Zálogház',
                Color = 0, 
                Scale = 0.7, 
                Type = 500
            },

            items = {

                buy = {
                    {
                        item = 'goldchain',
                        price = math.random(31, 32)
                    },
                    {
                        item = 'diamond_ring',
                        price = math.random(39, 40)
                    },
                    {
                        item = 'rolex',
                        price = math.random(29, 30)
                    },
                    {
                        item = '10kgoldchain',
                        price = math.random(33, 34)
                    },
                    {
                        item = 'tablet',
                        price = math.random(9, 10)
                    },
                    {
                        item = 'iphone',
                        price = math.random(9, 10)
                    },
                    {
                        item = 'samsungphone',
                        price = math.random(8, 9)
                    },
                    {
                        item = 'laptop',
                        price = math.random(11, 13)
                    },
                    {
                        item = 'goldbar',
                        price = math.random(33, 39)
                    },
                    {
                        item = 'goldnugget',
                        price = math.random(29, 37)
                    },
                    {
                        item = 'crtscreen',
                        price = math.random(5, 6)
                    },
                    {
                        item = 'lcdscreen',
                        price = math.random(8, 10)
                    },
                    {
                        item = 'tv',
                        price = math.random(5,12) --
                    },
                    {
                        item = 'ledtv',
                        price = math.random(10,12)
                    },
                    {
                        item = 'oldpc',
                        price = math.random(4,8)
                    },
                    {
                        item = 'pc',
                        price = math.random(5,9)
                    },
                    {
                        item = 'gamerpc',
                        price = math.random(10,19)
                    },
                    {
                        item = 'silverware',
                        price = math.random(5,9)
                    },
                    {
                        item = 'goldware',
                        price = math.random(8,14)
                    },
                    {
                        item = 'cheapvase',
                        price = math.random(4,5)
                    },
                    {
                        item = 'vase',
                        price = math.random(7,9)
                    },
                    {
                        item = 'rarevase',
                        price = math.random(11,14)
                    },
                    {
                        item = 'cheappainting',
                        price = math.random(8,10)
                    },
                    {
                        item = 'painting',
                        price = math.random(10,14)
                    },
                    {
                        item = 'rarepainting',
                        price = math.random(12,19)
                    },
                    {
                        item = 'fakeporc',
                        price = math.random(8,10)
                    },
                    {
                        item = 'porc',
                        price = math.random(14,19)
                    },
                    {
                        item = 'rareporc',
                        price = math.random(15,17)
                    },
                    {
                        item = 'casio',
                        price = math.random(7,9)
                    },
                    {
                        item = 'citizen',
                        price = math.random(4,8)
                    },
                    {
                        item = 'silverring',
                        price = math.random(6,9)
                    },
                    {
                        item = 'goldring',
                        price = math.random(10,14)
                    },
                    {
                        item = 'pearlring',
                        price = math.random(10,18)
                    },
                    {
                        item = 'silverearring',
                        price = math.random(5,9)
                    },
                    {
                        item = 'goldearring',
                        price = math.random(7,10)
                    },
                    {
                        item = 'pearlearring',
                        price = math.random(12,17)
                    },
                    {
                        item = 'playstation',
                        price = math.random(2,4)
                    },
                    {
                        item = 'playstation2',
                        price = math.random(5,7)
                    },
                    {
                        item = 'playstation3',
                        price = math.random(9,14)
                    },
                    {
                        item = 'playstation4',
                        price = math.random(11,16)
                    },
                    {
                        item = 'xbox360',
                        price = math.random(8,14)
                    },
                    {
                        item = 'xboxone',
                        price = math.random(11,16)
                    },
                    {
                        item = 'xboxx',
                        price = math.random(14,19)
                    },

                },

            }
        }, ]]
        --
        
    }
}