math.randomseed(os.time())

local items = {
  {name = 'Advanced Pick', type = 'illegal', price = 800, legality = 'illegal', quantity = 1, weight = 7.0},
  {name = "Iron Oxide", legality = "legal", quantity = 1, type = "misc", weight = 8, price = 950}
  {name = "Scrap Metal", legality = "legal", quantity = 5, type = "misc", weight = 2, price = 100}
  {name = "Cloth", legality = "legal", quantity = 5, type = "misc", weight = 2, price = 100}
  {name = "Metal Spring", legality = "legal", quantity = 5, type = "misc", weight = 2, price = 100}
  {name = "Plastic", legality = "legal", quantity = 5, type = "misc", weight = 2, price = 100}
  {name = "Glass", legality = "legal", quantity = 5, type = "misc", weight = 2, price = 100}
  {name = "Copper", legality = "legal", quantity = 5, type = "misc", weight = 2, price = 100}  
  {name = "Iron", legality = "legal", quantity = 5, type = "misc", weight = 2, price = 100}
  {name = "Electronics", legality = "legal", quantity = 5, type = "misc", weight = 2, price = 100}
  {name = "Electronic Kit", legality = "legal", quantity = 5, type = "misc", weight = 2, price = 100}
  {name = "Tape", legality = "legal", quantity = 3, type = "misc", weight = 2, price = 100}
}

RegisterServerEvent("chopshop:reward")
AddEventHandler("chopshop:reward", function(veh_name, damage, securityToken)
  local src = source
	if not exports['salty_tokenizer']:secureServerEvent(GetCurrentResourceName(), src, securityToken) then
		return false
	end
  local char = exports["usa-characters"]:GetCharacter(src)
  local reward = math.random(200, 1250)
  local numTroopers = exports["usa-characters"]:GetNumCharactersWithJob("sheriff")

  if numTroopers == 0 then
    damage = math.ceil(0.10 * damage)
    reward = math.ceil(0.25 * reward) -- only give 25% of regular reward if no cops
  end

  local finalReward = math.max(reward - damage, 0) -- give money reward
  char.giveMoney(finalReward)
  TriggerClientEvent("usa:notify", src, "Thanks! Here is $" .. finalReward .. "!", "^0Thanks! Here is $" .. finalReward .. "!")

  if math.random() <= 0.30 then
    local randomItem = items[math.random(#items)]
    if char.canHoldItem(randomItem) then
      char.giveItem(randomItem)
      TriggerClientEvent("ksHjsrfrk", src, "Here, take this " .. randomItem.name .. ". It might be useful.", "^3Pedro: ^0Here, take this " .. randomItem.name .. ". It might be useful.")
    else
      TriggerClientEvent("ksHjsrfrk", src, "Inventory full!", "^3Pedro: ^0I was going to give you something extra but your pockets are full!")
    end
  end
end)
