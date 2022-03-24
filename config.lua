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
                Name = 'Hunter Shop',
                Color = 0, 
                Scale = 0.7, 
                Type = 141
            },

            items = {

                buy = {
                    {
                        item = 'water_bottle',
                        price = 1,
                    },
                    {
                        item = 'sandwich',
                        price = 1,
                    }
                },

                sell = {
                    {
                        name = 'water_bottle',
                        price = 1,
                        amount = 1000,
                        info = {},
                        type = 'item',
                        slot = 1,
                    },
                    {
                        name = 'sandwich',
                        price = 1,
                        amount = 1000,
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
                        name = 'water_bottle',
                        price = 1,
                        amount = 1000,
                        info = {},
                        type = 'item',
                        slot = 1,
                    },
                    {
                        name = 'sandwich',
                        price = 1,
                        amount = 1000,
                        info = {},
                        type = 'item',
                        slot = 2,
                    },
                    {
                        name = 'phone',
                        price = 100,
                        amount = 1000,
                        info = {},
                        type = 'item',
                        slot = 3,
                    }
                }

            }
        }
    }
}