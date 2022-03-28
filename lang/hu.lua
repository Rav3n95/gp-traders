local Translations = {
    error = {
        negative = 'Nem negatív mennyiséget próbálsz meg eladni?',
        no_items = 'Nincs elég tárgyad',
        no_license = 'Nincs %{value} engedélyed'
    },
    success = {
        sold = 'Eladtál %{value} x %{value2}  %{value3}$-ért',
    },
    info = {
        title = 'Kereskedő',
        sell = 'Tárgyak eladása',
        sell_to = 'Tárgyak eladása a kereskedőnek',
        sell_items = 'Értéke $%{value}',
        buy = 'Tárgyak vásárlása',
        buy_from = 'Tárgyak vásárlása a kereskedőtől',
        back = '⬅ Visszalépés',
        max = 'Max mennyiség %{value}',
        close = 'Bezárás'
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})