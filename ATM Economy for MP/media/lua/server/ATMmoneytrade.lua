function ExchangeWatchesForMoney(items, result, player)
	local amount = 1;
	if SandboxVars and SandboxVars.ATMEconomyforMP.WatchesForMonney  then
		amount = SandboxVars.ATMEconomyforMP.WatchesForMonney;
		print("ATM Exchange complete! Gave "..tostring(amount).." Base.Money.")
	end

	player:getInventory():AddItems("Base.Money", amount);
 end

function ExchangeJewelryWithMineralsForMoney(items, result, player)
	local amount = 2;
	if SandboxVars and SandboxVars.ATMEconomyforMP.JewelryWithMinerals  then
		amount = SandboxVars.ATMEconomyforMP.JewelryWithMinerals;
	end

	player:getInventory():AddItems("Base.Money", amount);
end

function ExchangeEverythingForMoneyOnTest()
	return true;
end
 
