# gp-traders
Simple trade system for QbCore where you can sell / buy items from npc via qb-target

- Multi locations
- Full support language files to easy translate
- Easy to config, you can change peds, location, sell / buy tables, voice, blips

![alt text](https://i.imgur.com/T1AcMwk.png)
![alt text](https://i.imgur.com/tkTknzc.png)
![alt text](https://i.imgur.com/GCpkJRS.png)
![alt text](https://i.imgur.com/7QRsfAI.png)

# Important: 
- If you find any bug, please make a issue, i will fix it asap.
- License should be exist on qb-core metadata. 

# Config: 

```lua
        ['index'] = {  -- Index of your shop
            model = 'cs_hunter', -- Ped model
            coords = { -- Locations
                vector4(x, y, z, w),
                vector4(x, y, z, w),
            },
            scenario = 'scenario', -- Scenario ped will do
            voice = 'G_M_Y_Lost_02_WHITE_FULL_01', -- https://pastebin.com/FTeAj4yZ -- Voice of the ped
            sellItems = true, -- Turn on / off the sell option of the ped
            buyItems = true, -- Turn on / off the buy option of the ped
            license = {false, lable = ''}, -- If you want license check then example: license = {'driver', lable = 'driver'}
            blip = { 
                Show = true,  -- Show the blip or not
                Name = 'Shop', -- Lable of the blip
                Color = 0, -- Color of the blip
                Scale = 0.7, -- Scale of the blip
                Type = 141 -- Type of the blip
            },

            items = {

                buy = {
                    {
                        item = 'water_bottle', -- Item what the npc will buy from the player
                        price = 1 -- Price
                    }
                },

                sell = { 
                    {
                        name = 'water_bottle', -- Item what the npc will sell to the player 
                        price = 1 -- Price
                    }
                }

            }
        },
```

Special thanks to: 
- [BerkieB](https://github.com/BerkieBb)
