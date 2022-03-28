local Translations = {
    error = {
        negative = 'Trying to sell a negative amount?',
        no_items = 'Not enough items',
        no_license = 'You do not have %{value} license'
    },
    success = {
        sold = 'You have sold %{value} x %{value2} for $%{value3}',
    },
    info = {
        title = 'Trader',
        sell = 'Sell items',
        sell_to = 'Sell items to the trader',
        sell_items = 'Selling Price $%{value}',
        buy = 'Buy items',
        buy_from = 'Buy items from trader',
        back = '⬅ Go Back',
        max = 'Max Amount %{value}',
        close = 'Close'
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})