RegisterServerEvent('oxydelivery:server')
AddEventHandler('oxydelivery:server', function()
	local char = exports["usa-characters"]:GetCharacter(source)

	if char.hasEnoughMoneyOrBank(Config.StartOxyPayment) then
		char.removeMoneyOrBank(Config.StartOxyPayment)
		
		TriggerClientEvent("oxydelivery:startDealing", source)
	else
		TriggerClientEvent('usa:notify', source, 'You dont have enough money', 'error')
	end
end)

RegisterServerEvent('oxydelivery:receiveBigRewarditem')
AddEventHandler('oxydelivery:receiveBigRewarditem', function()
	local char = exports["usa-characters"]:GetCharacter(source)

	char.giveItem(Config.BigRewarditem, 1)
end)

RegisterServerEvent('oxydelivery:receiveoxy')
AddEventHandler('oxydelivery:receiveoxy', function()
	local char = exports["usa-characters"]:GetCharacter(source)

	char.giveMoney(Config.Payment / 2)
	char.giveItem(Config.Item, Config.OxyAmount)
end)

RegisterServerEvent('oxydelivery:receivemoneyyy')
AddEventHandler('oxydelivery:receivemoneyyy', function()
	local char = exports["usa-characters"]:GetCharacter(source)

	char.giveMoney(Config.Payment)
end)