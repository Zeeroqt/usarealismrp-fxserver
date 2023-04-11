Config = {}

-- Oxy runs.
Config.StartOxyPayment = 2500 -- How much you pay at the start to start the run

Config.RunAmount = math.random(10,25) -- How many drop offs the player does before it automatixally stops.

Config.Payment = math.random(325, 520) -- How much you get paid when RN Jesus doesnt give you oxy, divided by 2 for when it does.

Config.Item = exports.usa_rp2:getItem("Oxy") -- The item you receive from the oxy run. Should be oxy right??
Config.OxyChance = 250 -- Percentage chance of getting oxy on the run. Multiplied by 100. 10% = 100, 20% = 200, 50% = 500, etc. Default 55%.
Config.OxyAmount = 2 -- How much oxy you get from the local.

Config.BigRewarditemChance = 35 -- Percentage of getting rare item on oxy run. Multiplied by 100. 0.1% = 1, 1% = 10, 20% = 200, 50% = 500, etc. Default 50%.
Config.BigRewarditem = exports.usa_rp2:getItem("Portal") -- Put a rare item here which will have 50% chance of being given on the run.

Config.OxyCars = "CHECK THE CODE" -- Cars

Config.DropOffs = "CHECK THE CODE" -- Drop off spots