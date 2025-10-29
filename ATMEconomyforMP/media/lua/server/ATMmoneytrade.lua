
--[[
 * Converts watches into money for the specified player.
 *
 * The amount of money granted is determined by the
 * SandboxVars.ATMEconomyforMP.WatchesForMoney setting.
 * If that setting is not defined, it defaults to 1.
 *
 * The function then adds (amount - 1) units of "Base.Money"
 * to the player's inventory.
 *
 * @param {InventoryItem[]} items  - The items being processed (unused).
 * @param {any} result             - The crafting/result context (unused).
 * @param {IsoPlayer} player       - The player receiving the money.
 * @returns {void}
]]--

function WatchesForMoney(items, result, player)
    local amount = 1
    if SandboxVars.ATMEconomyforMP and SandboxVars.ATMEconomyforMP.WatchesForMoney then
        amount = SandboxVars.ATMEconomyforMP.WatchesForMoney
    end
    player:getInventory():AddItems("Base.Money", amount-1)
end

function JewelryWithGemstoneForMoney(items, result, player)
    local amount = 2
    if SandboxVars.ATMEconomyforMP and SandboxVars.ATMEconomyforMP.JewelryWithGemstone then
        amount = SandboxVars.ATMEconomyforMP.JewelryWithGemstone
    end
    player:getInventory():AddItems("Base.Money", amount-1)
end

function JewelryWithDiamondForMoney(items, result, player)
    local amount = 5
    if SandboxVars.ATMEconomyforMP and SandboxVars.ATMEconomyforMP.JewelryWithDiamondForMoney then
        amount = SandboxVars.ATMEconomyforMP.JewelryWithDiamondForMoney
    end
    player:getInventory():AddItems("Base.Money", amount-1)
end

function AmuletForMoney(items, result, player)
    local amount = 10
    if SandboxVars.ATMEconomyforMP and SandboxVars.ATMEconomyforMP.AmuletForMoney then
        amount = SandboxVars.ATMEconomyforMP.AmuletForMoney
    end
    player:getInventory():AddItems("Base.Money", amount-1)
end

function DogtagForMoney(items, result, player)
    local amount = 5
    if SandboxVars.ATMEconomyforMP and SandboxVars.ATMEconomyforMP.DogtagsForMoney then
        amount = SandboxVars.ATMEconomyforMP.DogtagsForMoney
    end
    player:getInventory():AddItems("Base.Money", amount-1)
end


function ExchangeEverythingForMoneyOnTest()
    return true
end
