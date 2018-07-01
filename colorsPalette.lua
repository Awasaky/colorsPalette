--[[
----------------------------------------------------------------------------------------------------
ENGLISH
----------------------------------------------------------------------------------------------------
Color palette, names and definitions based on web colors in article:
https://ru.wikipedia.org/wiki/%D0%A1%D0%BF%D0%B8%D1%81%D0%BE%D0%BA_%D1%86%D0%B2%D0%B5%D1%82%D0%BE%D0%B2
Usage:
```
local palette = require"colorsPalette" -- use require to add module
object:setFillColor( palette("Dark oLiVe"[, alphaChannelColor]) ) -- color name in quotes, any case
```
Additional alphaChannelColor is real number from 0 to 1
If you enter wrong color name, function return white color with alpha = 1
Also console show wrong color string.

Usage data of module
-- assign webColor function to local variable webColorFunc
local webColorFunc = palette"return webColor"
-- assign palette of web colors to local variable webPalette
local webPalette =  palette"return palette"
-- assign palette of Corona SDK colors  to local variable coronaSDKPalette
local coronaSDKPalette = palette"return coronaPalette"

print( colorsList("return webColor")("#fc0fc0") )
--0.98823529411765	0.058823529411765	0.75294117647059
print( colorsList("return palette", "ярко-розовый"))
--#fc0fc0
print( unpack(colorsList("return coronaPalette", "ярко-розовый")) )
--0.98823529411765	0.058823529411765	0.75294117647059


----------------------------------------------------------------------------------------------------
RUSSIAN
----------------------------------------------------------------------------------------------------
Цветовая палитра, имена и значения базируются на статье:
https://ru.wikipedia.org/wiki/%D0%A1%D0%BF%D0%B8%D1%81%D0%BE%D0%BA_%D1%86%D0%B2%D0%B5%D1%82%D0%BE%D0%B2
Использование:
```
local palette = require"colorsPalette" -- используется require для подключения модуля
object:setFillColor( palette("тёмно-оливковый"[, цветАльфаКанала]) ) -- имя цвета указывается в кавычках
```
Дополнительно можно задать цветАльфаКанала вещественным числом в диапазоне 0 - 1.
Обратите внимание - для русских имен, можно использовать только нижний регистр!
Если вы введете неправильное название цвета, то будет возвращен белый цвет с альфаканалом 1
Также в консоли будет показана строка, по которой цвет не нашелся.

Использование данных в модуле
-- назначает функцию webColor локальной переменной webColorFunc
local webColorFunc = palette"return webColor"
-- назначает палитру веб цветов локальной переменной webPalette
local webPalette =  palette"return palette"
-- назначает палитру цветов Corona SDK colors цветов локальной переменной coronaSDKPalette
local coronaSDKPalette = palette"return coronaPalette"

print( colorsList("return webColor")("#fc0fc0") )
--0.98823529411765	0.058823529411765	0.75294117647059
print( colorsList("return palette", "ярко-розовый"))
--#fc0fc0
print( unpack(colorsList("return coronaPalette", "ярко-розовый")) )
--0.98823529411765	0.058823529411765	0.75294117647059
]]

local palette = {
	-- A colors
	["air force blue"] = "#5d8aa8",
		["военно-воздушный синий"] = "#5d8aa8",
	["alice blue"] = "#f0f8ff",
		["синий элис"] = "#f0f8ff",
	["alizarin crimson"] = "#e32636",
		["ализариновый красный"] = "#e32636",
	["almond"] = "#efdecd",
		["миндальный"] = "#efdecd",
		["миндаль крайола"] = "#efdecd",
	["amaranth"] = "#e52b50",
		["амарант"] = "#e52b50",
		["амарантовый"] = "#e52b50",
	["amber"] = "#ffbf00",
		["янтарь"] = "#ffbf00",
		["янтарный"] = "#ffbf00",
	["american rose"] = "#ff033e",
		["американская роза"] = "#ff033e",
	["amethyst"] = "#9966cc",
		["аметист"] = "#9966cc",
		["аметистовый"] = "#9966cc",
	["anti-flash white"] = "#f2f3f4",
		["матовый белый"] = "#f2f3f4",
	["antique white"] = "#faebd7",
		["античный белый"] = "#faebd7",
	["apple green"] = "#8db600",
		["яблочно-зелёный"] = "#8db600",
		["яблочно-зеленый"] = "#8db600",
	["asparagus"] = "#7ba05b",
		["спаржа"] = "#7ba05b",
	["aqua"] = "#00ffff",
		["морская волна"] = "#00ffff",
	["aquamarine"] = "#7fffd4",
		["аквамарин"] = "#7fffd4",
		["аквамариновый"] = "#7fffd4",
	["army green"] = "#4b5320",
		["армейский зелёный"] = "#4b5320",
		["армейский зеленый"] = "#4b5320",
	["arsenic"] = "#3b444b",
		["мышьяк"] = "#3b444b",
		["мышьяковый"] = "#3b444b",
	["azure"] = "#007fff",
		["азур"] = "#007fff",

	-- B colors
	["battleship grey"] = "#848482",
		["голубовато-серый"] = "#848482",
	["beige"] = "#f5f5dc",
		["беж"] = "#f5f5dc",
		["бежевый"] = "#f5f5dc",
	["bistre"] = "#3d2b1f",
		["бистр"] = "#3d2b1f",
	["bittersweet"] = "#fe6f5e",
		["горький розовый"] = "#fe6f5e",
	["black"] = "#000000",
		["чёрный"] = "#000000",
	["blond"] = "#faf0be",
		["блонд"] = "#faf0be",
		["белокурый"] = "#faf0be",
	["blue"] = "#0000ff",
		["синий"] = "#0000ff",
	["bondi blue"] = "#0095b6",
		["вода пляжа бонди"] = "#0095b6",
	["boston university red"] = "#cc0000",
		["красный университета бостона"] = "#cc0000",
	["brass"] = "#b5a642",
		["латунь"] = "#b5a642",
		["латунный"] = "#b5a642",
	["bright green"] = "#66ff00",
		["ярко-зелёный"] = "#66ff00",
		["ярко-зеленый"] = "#66ff00",
	["bright turquoise"] = "#08e8de",
		["ярко-бирюзовый"] = "#08e8de",
	["bright violet"] = "#cd00cd",
		["ярко-фиолетовый"] = "#cd00cd",
	["bronze"] = "#cd7f32",
		["бронза"] = "#cd7f32",
		["бронзовый"] = "#cd7f32",
	["brown"] = "#964b00",
		["коричневый"] = "#964b00",
	["buff"] = "#f0dc82",
		["кожа буйвола"] = "#f0dc82",
		["палевый"] = "#f0dc82",
		["темно-желтый"] = "#f0dc82",
		["темно-жёлтый"] = "#f0dc82",
	["burgundy"] = "#900020",
		["бургундский"] = "#900020",
		["бургундия"] = "#900020",
	["burnt orange"] = "#cc5500",
		["выгоревший оранжевый"] = "#cc5500",
	["burnt sienna"] = "#e97451",
		["сиена жжёная"] = "#e97451",
	["burnt umber"] = "#8a3324",
		["умбра жжёная"] = "#8a3324",

	-- С colors
	["camel"] = "#c19a6b",
		["желтовато-коричневый"] = "#c19a6b",
		["камель"] = "#c19a6b",
	["camouflage green"] = "#78866b",
		["камуфляжный зелёный"] = "#78866b",
		["камуфляжный зеленый"] = "#78866b",
	["canonical aubergine"] = "#772953", --canonical is a trademark
		["баклажановый canonical"] = "#772953",
	["cardinal"] = "#c41e3a",
		["тёмно-красный"] = "#c41e3a",
		["кардинал"] = "#c41e3a",
	["carmine"] = "#960018",
		["карминово-красный"] = "#960018",
		["кармин"] = "#960018",
	["carrot"] = "#ed9121",
		["морковный"] = "#ed9121",
		["морковь"] = "#ed9121",
	["celadon"] = "#ace1af",
		["селадоновый"] = "#ace1af",
		["серовато-зелёный"] = "#ace1af",
		["серовато-зеленый"] = "#ace1af",
		["серо-зелёный"] = "#ace1af",
		["серо-зеленый"] = "#ace1af",
	["cerise"] = "#de3163",
		["светлая вишня"] = "#de3163",
		["светло-вишневый"] = "#de3163",
	["cerulean"] = "#007ba7",
		["лазурный"] = "#007ba7",
	["cerulean blue"] = "#2a52be",
		["лазурно-синий"] = "#2a52be",
	["chartreuse"] = "#7fff00",
		["салатовый"] = "#7fff00",
		["шартрез"] = "#7fff00",
	["chestnut"] = "#cd5c5c",
		["каштановый"] = "#cd5c5c",
		["каштан"] = "#cd5c5c",
	["chocolate"] = "#d2691e",
		["шоколадный"] = "#d2691e",
		["шоколад"] = "#d2691e",
	["cinnamon"] = "#7b3f00",
		["коричный"] = "#7b3f00",
		["корица"] = "#7b3f00",
	["cobalt"] = "#0047ab",
		["кобальт синий"] = "#0047ab",
		["кобальт"] = "#0047ab",
	["copper"] = "#b87333",
		["медный"] = "#b87333",
		["медь"] = "#b87333",
	["coral"] = "#ff7f50",
		["коралловый"] = "#ff7f50",
		["кораллово-красный"] = "#ff7f50",
		["коралл"] = "#ff7f50",
	["corn"] = "#fbec5d",
		["кукурузный"] = "#fbec5d",
		["кукуруза"] = "#fbec5d",
	["cornflower"] = "#6495ed",
	["cornflower blue"] = "#6495ed",
		["васильковый"] = "#6495ed",
	["cream"] = "#fffdd0",
		["кремовый"] = "#fffdd0",
		["крем"] = "#fffdd0",
	["crimson"] = "#dc143c",
		["тёмно-красный"] = "#dc143c",
		["кровавый"] = "#dc143c",
		["малиновый"] = "#dc143c",
		["пунцовый"] = "#dc143c",
	["cyan"] = "#00ffff",
	["cyan-blue"] = "#00ffff",
		["циан"] = "#00ffff",
		["ядовито-синий"] = "#00ffff",
		["сине-зелёный"] = "#00ffff",
		["сине-зеленый"] = "#00ffff",

	-- D colors
	["dark blue"] = "#00008b",
		["тёмно-синий"] = "#00008b",
	["dark brown"] = "#654321",
		["тёмно-коричневый"] = "#654321",
	["dark cerulean"] = "#08457e",
		["тёмно-лазурный"] = "#08457e",
	["dark chestnut"] = "#986960",
		["тёмно-каштановый"] = "#986960",
	["dark coral"] = "#cd5b45",
		["тёмно-коралловый"] = "#cd5b45",
	["dark goldenrod"] = "#b8860b",
		["тёмно-золотой"] = "#b8860b",
	["dark green"] = "#013220",
		["тёмно-зелёный"] = "#013220",
		["тёмно-зеленый"] = "#013220",
	["dark indigo"] = "#310062",
		["тёмный индиго"] = "#310062",
	["dark khaki"] = "#bdb76b",
		["тёмный хаки"] = "#bdb76b",
	["dark olive"] = "#556832",
		["тёмно-оливковый"] = "#556832",
	["dark pastel green"] = "#03c03c",
		["тёмный пастельно-зелёный"] = "#03c03c",
		["тёмный пастельно-зеленый"] = "#03c03c",
	["dark peach"] = "#ffdab9",
		["тёмно-персиковый"] = "#ffdab9",
	["dark pink"] = "#e75480",
		["тёмно-розовый"] = "#e75480",
	["dark salmon"] = "#e9967a",
		["тёмная лососина"] = "#e9967a",
	["dark scarlet"] = "#560319",
		["тёмно-алый"] = "#560319",
	["dark slate gray"] = "#2f4f4f",
		["тёмно-аспидный серый"] = "#2f4f4f",
		["аспидно-серый"] = "#2f4f4f",
	["dark spring green"] = "#177245",
		["тёмный весенне-зелёный"] = "#177245",
		["тёмный весенне-зеленый"] = "#177245",
	["dark tan"] = "#918151",
		["тёмный жёлто-коричневый"] = "#918151",
	["dark tangerine"] = "#ffa812",
		["тёмно-мандариновый"] = "#ffa812",
	["dark tea green"] = "#badbad",
		["тёмный зелёный чай"] = "#badbad",
		["тёмный зеленый чай"] = "#badbad",
	["dark turquoise"] = "#116062",
		["тёмно-бирюзовый"] = "#116062",
	["dark violet"] = "#423189",
		["глубокий фиолетовый"] = "#423189",
	["deep pink"] = "#ff1493",
		["глубокий розовый"] = "#ff1493",
	["deep sky blue"] = "#00bfff",
		["небесно-голубой"] = "#00bfff",
	["denim"] = "#1560bd",
		["джинсовый синий"] = "#1560bd",
	["dodger blue"] = "#1e90ff",
		["защитно-синий"] = "#1e90ff",

	-- E colors
	["emerald"] = "#50c878",
		["изумрудный"] = "#50c878",
		["изумруд"] = "#50c878",
	["eggplant"] = "#990066",
		["баклажановый"] = "#990066",
		["баклажан"] = "#990066",

	-- F colors
	["fawn"] = "#e5aa70",
		["желтовато-коричневый"] = "#e5aa70",
	["fern green"] = "#4f7942",
		["зелёный папоротник"] = "#4f7942",
		["зеленый папоротник"] = "#4f7942",
	["fire brick"] = "#b22222",
	["brick"] = "#b22222",
		["кирпичный"] = "#b22222",
		["кирпич"] = "#b22222",
	["flax"] = "#eedc82",
		["льняной желтый"] = "#eedc82",
		["льняной жёлтый"] = "#eedc82",
		["желтый лен"] = "#eedc82",
		["желтый лён"] = "#eedc82",
		["жёлтый лен"] = "#eedc82",
		["жёлтый лён"] = "#eedc82",
	["fuchsia"] = "#ff00ff",
		["фуксия"] = "#ff00ff",

	-- G colors
	["gamboge"] = "#e49b0f",
		["гуммигут"] = "#e49b0f",
	["gold"] = "#ffd700",
		["золотой"] = "#ffd700",
	["goldenrod"] = "#daa520",
		["золотисто-берёзовый"] = "#daa520",
	["gray"] = "#808080",
		["серый"] = "#808080",
	["gray-asparagus"] = "#465945",
		["серая спаржа"] = "#465945",
	["gray-tea green"] = "#cadaba",
		["зелёный серый чай"] = "#cadaba",
		["зеленый серый чай"] = "#cadaba",
	["green"] = "#00ff00",
		["зелёный"] = "#00ff00",
		["зеленый"] = "#00ff00",
	["green-yellow"] = "#adff2f",
	["yellow-green"] = "#adff2f",
		["жёлто-зелёный"] = "#adff2f",
		["жёлто-зеленый"] = "#adff2f",
		["зелено-желтый"] = "#adff2f",
		["зелено-жёлтый"] = "#adff2f",
	["gradus blue"] = "#007dff",
		["синий градуса"] = "#007dff",

	-- H colors
	["heliotrope"] = "#df73ff",
		["гелиотроп"] = "#df73ff",
	["hot pink"] = "#fc0fc0",
		["ярко-розовый"] = "#fc0fc0",

	-- I colors
	["indigo"] = "#4b0082",
		["индиго"] = "#4b0082",
	["international orange"] = "#ff4f00",
	["safety orange"] = "#ff4f00",
		["международный оранжевый"] = "#ff4f00",
		["сигнальный оранжевый"] = "#ff4f00",
	["indian red"] = "#cd5c5c",
		["индийский красный"] = "#cd5c5c",

	-- J colors
	["jade"] = "#00a86b",
		["нефритовый"] = "#00a86b",
		["нефрит"] = "#00a86b",
		["жадеитовый"] = "#00a86b",
		["жадеит"] = "#00a86b",

	-- K colors
	["khaki"] = "#c3b091",
		["хаки"] = "#c3b091",
	["klein blue"] = "#3a75c4",
		["синий клейна"] = "#3a75c4",

	-- L colors
	["lavender"] = "#e6e6fa",
		["лаванда"] = "#e6e6fa",
		["лавандовый"] = "#e6e6fa",
		["лавандово-синий"] = "#e6e6fa",
	["lavender blush"] = "#fff0f5",
		["розово-лавандовый"] = "#fff0f5",
	["lemon"] = "#fde910",
		["лимонный"] = "#fde910",
		["лимон"] = "#fde910",
	["lemon cream"] = "#fffacd",
		["лимонно-кремовый"] = "#fffacd",
	["light brown"] = "#cd853f",
		["светло-коричневый"] = "#cd853f",
	["lilac"] = "#c8a2c8",
		["сиреневый"] = "#c8a2c8",
		["сирень"] = "#c8a2c8",
	["lime"] = "#ccff00",
		["лайм"] = "#ccff00",
		["лаймовый"] = "#ccff00",
		["липовый"] = "#ccff00",
		["известковый"] = "#ccff00",
	["linen"] = "#faf0e6",
		["лен"] = "#faf0e6",
		["лён"] = "#faf0e6",
		["льняной"] = "#faf0e6",
	["lawn green"] = "#7cfc00",
		["зелёная лужайка"] = "#7cfc00",

	-- M colors
	["magenta"] = "#ff00ff",
		["малиновый"] = "#ff00ff",
	["malachite"] = "#0bda51",
		["малахитовая зелень"] = "#0bda51",
		["малахитовый"] = "#0bda51",
		["малахит"] = "#0bda51",
	["maroon"] = "#800000",
		["коричнево-малиновый"] = "#800000",
		["темно-бордовый"] = "#800000",
	["mauve"] = "#993366",
		["розовато-лиловый"] = "#993366",
	["midnight blue"] = "#003366",
		["полуночно-синий"] = "#003366",
	["mint green"] = "#98ff98",
		["зелёная мята"] = "#98ff98",
		["мятный"] = "#98ff98",
		["мята"] = "#98ff98",
	["moss green"] = "#addfad",
		["зелёный мох"] = "#addfad",
		["зеленый мох"] = "#addfad",
	["mountbatten pink"] = "#997a8d",
		["розовый маунтбэттена"] = "#997a8d",
	["mustard"] = "#ffdb58",
		["горчичный"] = "#ffdb58",
		["горчица"] = "#ffdb58",

	-- N colors
	["navajo white"] = "#ffdead",
		["белый навахо"] = "#ffdead",
	["navy"] = "#000080",
		["военно-синий"] = "#000080",

	-- O colors
	["ochre"] = "#cc7722",
		["охра"] = "#cc7722",
	["old gold"] = "#cfb53b",
		["старое золото"] = "#cfb53b",
	["olive"] = "#808000",
		["оливковый"] = "#808000",
		["олива"] = "#808000",
	["olive drab"] = "#6b8e23",
		["нежно-оливковый"] = "#6b8e23",
	["orange"] = "#ffa500",
		["оранжевый"] = "#ffa500",
	["orchid"] = "#da70d6",
		["орхидея"] = "#da70d6",
		["светло-лиловый"] = "#da70d6",
	["old lace"] = "#fdf5e6",
	["lace"] = "#fdf5e6",
		["старое кружево"] = "#fdf5e6",
		["кружево"] = "#fdf5e6",
		["кружевной"] = "#fdf5e6",

	-- P colors
	["pale blue"] = "#afeeee",
		["бледно-синий"] = "#afeeee",
	["pale brown"] = "#987654",
		["бледно-коричневый"] = "#987654",
	["pale carmine"] = "#af4035",
		["бледно-карминный"] = "#af4035",
	["pale chestnut"] = "#ddadaf",
		["бледно-каштановый"] = "#ddadaf",
	["pale cornflower"] = "#abcdef",
	["pale cornflower blue"] = "#abcdef",
		["бледно-васильковый"] = "#abcdef",
	["pale magenta"] = "#f984e5",
		["бледно-пурпурный"] = "#f984e5",
	["pale mauve"] = "#996666",
		["бледный розовато-лиловый"] = "#996666",
	["pale pink"] = "#fadadd",
		["бледно-розовый"] = "#fadadd",
	["pale red-violet"] = "#db7093",
		["лиловый"] = "#db7093",
	["pale sandy brown"] = "#dabdab",
		["бледно-песочный цвет"] = "#dabdab",
	["pale yellow"] = "#f0dc82",
		["палевый"] = "#f0dc82",
		["бледно-желтый"] = "#f0dc82",
		["бледно-жёлтый"] = "#f0dc82",
	["pang"] = "#c7fcec",
		["панг"] = "#c7fcec",
	["papaya whip"] = "#ffefd5",
		["побег папайи"] = "#ffefd5",
	["pastel green"] = "#77dd77",
		["пастельно-зелёный"] = "#77dd77",
		["пастельно-зеленый"] = "#77dd77",
	["pastel pink"] = "#ffd1dc",
		["пастельно-розовый"] = "#ffd1dc",
	["peach"] = "#ffe5b4",
		["персиковый"] = "#ffe5b4",
		["персик"] = "#ffe5b4",
	["peach-orange"] = "#ffcc99",
		["оранжево-персиковый"] = "#ffcc99",
	["peach-yellow"] = "#fadfad",
		["жёлто-персиковый"] = "#fadfad",
	["pear"] = "#d1e231",
		["грушевый"] = "#d1e231",
		["груша"] = "#d1e231",
	["periwinkle"] = "#ccccff",
		["барвинок"] = "#ccccff",
	["persian blue"] = "#6600ff",
		["персидский синий"] = "#6600ff",
	["pine green"] = "#01796f",
		["зелёная сосна"] = "#01796f",
		["сосна"] = "#01796f",
		["сосновый"] = "#01796f",
	["pink"] = "#ffc0cb",
		["розовый"] = "#ffc0cb",
	["pink-orange"] = "#ff9966",
		["оранжево-розовый"] = "#ff9966",
	["plum"] = "#660066",
		["сливовый"] = "#660066",
		["слива"] = "#660066",
	["powder blue"] = "#003399",
		["пороховая синь"] = "#003399",
	["puce"] = "#cc8899",
		["красновато-коричневый"] = "#cc8899",
		["пюсовый"] = "#cc8899",
		["блошиный"] = "#cc8899",
	["prussian blue"] = "#003153",
		["берлинская лазурь"] = "#003153",
	["pumpkin"] = "#ff7518",
		["тыква"] = "#ff7518",
		["тыквенный"] = "#ff7518",
	["purple"] = "#800080",
		["пурпурный"] = "#800080",

	-- R colors
	["raw umber"] = "#734a12",
	["umber"] = "#734a12", -- added to easier find this color
		["умбра"] = "#734a12",
	["red"] = "#ff0000",
		["красный"] = "#ff0000",
	["red-violet"] = "#c71585",
		["фиолетово-красный"] = "#c71585",
	["robin egg blue"] = "#00cccc",
		["яйцо дрозда"] = "#00cccc",
		["синее яйцо дрозда"] = "#00cccc",
	["royal blue"] = "#4169e1",
		["ярко-синий"] = "#4169e1",
		["королевский синий"] = "#4169e1",
	["russet"] = "#755a57",
		["красновато-коричневый"] = "#755a57",
	["rust"] = "#b7410e",
		["ржаво-коричневый"] = "#b7410e",
		["ржавчина"] = "#b7410e",
		["ржавый"] = "#b7410e",
		["ржа"] = "#b7410e",
	["rosy brown"] = "#bc8f8f",
		["розово-коричневый"] = "#bc8f8f",
	["ruby"] = "#e0115f",
		["рубин"] = "#e0115f",
		["рубиновый"] = "#e0115f",

	-- S colors
	["blaze orange"] = "#ff9900", -- removed signal orange because dublicate before
		["огненно-оранжевый"] = "#ff9900",
	["saffron"] = "#f4c430",
		["шафрановый"] = "#f4c430",
		["шафран"] = "#f4c430",
	["sapphire"] = "#082567",
		["сапфировый"] = "#082567",
		["сапфир"] = "#082567",
	["sana"] = "#f39643",
		["салутовый"] = "#f39643",
	["salmon"] = "#ff8c69",
		["лососёвый"] = "#ff8c69",
		["лосось"] = "#ff8c69",
	["sandy brown"] = "#f4a460",
		["песочный"] = "#f4a460",
		["песчаный коричневый"] = "#f4a460",
		["песочно-коричневый"] = "#f4a460",
	["sangria"] = "#92000a",
		["сангрия"] = "#92000a",
	["scarlet"] = "#ff2400",
		["алый"] = "#ff2400",
		["багряный"] = "#ff2400",
		["багровый"] = "#ff2400",
		["багрянец"] = "#ff2400",
	["school bus"] = "#ffd800",
		["школьный автобус"] = "#ffd800",
		["автобусный жёлтый"] = "#ffd800",
		["автобусный желтый"] = "#ffd800",
	["sea green"] = "#2e8b57",
		["зелёное море"] = "#2e8b57",
		["морской зелёный"] = "#2e8b57",
		["морской зеленый"] = "#2e8b57",
	["seashell"] = "#fff5ee",
		["морская ракушка"] = "#fff5ee",
	["selective yellow"] = "#ffba00",
		["отборный жёлтый"] = "#ffba00",
		["отборный желтый"] = "#ffba00",
	["sepia"] = "#704214",
		["сепия"] = "#704214",
	["silver"] = "#c0c0c0",
		["серебряный"] = "#c0c0c0",
		["серебро"] = "#c0c0c0",
	["sky blue"] = "#61c3ff",
		["голубой"] = "#61c3ff",
		["голубиный"] = "#61c3ff",
	["slate gray"] = "#708090",
		["серый шифер"] = "#708090",
		["шифер"] = "#708090",
		["шиферный"] = "#708090",
	["spring green"] = "#00ff7f",
		["зелёная весна"] = "#00ff7f",
	["steel blue"] = "#4682b4",
		["синяя сталь"] = "#4682b4",
		["сине стальной"] = "#4682b4",
	["swamp green"] = "#acb78e",
		["болотный"] = "#acb78e",
		["болотно-зеленый"] = "#acb78e",

	-- T colors
	["tan"] = "#d2b48c",
		["загар"] = "#d2b48c",
		["загорелый"] = "#d2b48c",
	["tenné"] = "#cd5700",
	["tenne"] = "#cd5700",
		["краснобуро-оранжевый"] = "#cd5700",
	["tangerine"] = "#ffcc00",
		["мандариновый"] = "#ffcc00",
		["мандарин"] = "#ffcc00",
	["tea green"] = "#d0f0c0",
		["зелёный чай"] = "#d0f0c0",
		["зеленый чай"] = "#d0f0c0",
	
	["teal"] = "#008080",
		["сине-зелёный"] = "#008080",
		["сине-зеленый"] = "#008080",
		["утиный"] = "#008080",
	["thistle"] = "#d8bfd8",
		["чертополох"] = "#d8bfd8",
	["turquoise"] = "#30d5c8",
		["бирюзовый"] = "#30d5c8",
		["бирюза"] = "#30d5c8",
	["titian"] = "#d53e07",
		["тициановый"] = "#d53e07",
		["золотисто-каштановый"] = "#d53e07",
	["transport red"] = "#cc0605",
		["транспортный красный"] = "#cc0605",
	["tomato"] = "#ff6347",
		["томатный"] = "#ff6347",
		["томат"] = "#ff6347",

	-- U colors
	["ultramarine"] = "#120a8f",
		["ультрамариновый"] = "#120a8f",
		["ультрамарин"] = "#120a8f",
	["united nations blue"] = "#5b92e5",
	["un blue"] = "#5b92e5",
		["флаг оон"] = "#5b92e5",
	["ubuntu orange"] = "#dd4814",
		["оранжевый ubuntu"] = "#dd4814",

	-- V colors
	["vanilla"] = "#f3e5ab",
		["ванильный"] = "#f3e5ab",
		["ваниль"] = "#f3e5ab",
	["vermilion"] = "#e34234",
		["ярко-красный"] = "#e34234",
		["киноварь"] = "#e34234",
	["violet"] = "#8b00ff",
		["фиолетовый"] = "#8b00ff",
	["violet-eggplant"] = "#991199",
		["фиолетово-баклажанный"] = "#991199",
	["viridian"] = "#40826d",
		["ядовито-зелёный"] = "#40826d",
		["ядовито-зеленый"] = "#40826d",

	-- W colors
	["wheat"] = "#f5deb3",
		["пшеничный"] = "#f5deb3",
		["пшено"] = "#f5deb3",
		["пшеница"] = "#f5deb3",
	["white"] = "#ffffff",
		["белый"] = "#ffffff",
	["wisteria"] = "#c9a0dc",
		["глициния"] = "#c9a0dc",
	["wine"] = "#722f37",
		["вино"] = "#722f37",
		["винный"] = "#722f37",

	-- X colors
	["xanadu"] = "#738678",
		["занаду"] = "#738678",
		["райский"] = "#738678",

	-- Y colors
	["yellow"] = "#ffff00",
		["жёлтый"] = "#ffff00",
		["желтый"] = "#ffff00",

	-- Z colors
	["zinnwaldite"] = "#ebc2af",
		["циннвальдит"] = "#ebc2af",
	["zaffre"] = "#0014a8",
		["кобальтовая синь"] = "#0014a8",
}

-- colors of Corona Palette build from web colors palette
local coronaPalette = {}

-- convertor from web colors code, to Corona SDK colors
local function webColor( colorString )
  local r = tonumber( string.sub(colorString, 2, 3), 16 )/255
  local g = tonumber( string.sub(colorString, 4, 5), 16 )/255
  local b = tonumber( string.sub(colorString, 6, 7), 16 )/255
  return r,g,b
end

-- on load prepare all colors in palette to Corona SDK colors
for k,v in pairs(palette) do
		coronaPalette[k] = { webColor(v) }
end

local function M( color, alpha )
	-- return available data for special causes
	if color == "return webColor" then
		if alpha == nil then return webColor
		else return webColor(alpha)
		end
	elseif color == "return palette" then 
		if alpha == nil then return palette
		else return palette[alpha] -- wrong table key returns nil
		end
	elseif color == "return coronaPalette" then
		if alpha == nil then return coronaPalette
		else return coronaPalette[alpha] -- wrong table key returns nil
		end
	end

	local colorName = string.lower(color) -- convert any english string to lower case
	if coronaPalette[colorName] == nil then --simple error check
		local errorMessage = "Color \"" .. colorName .. [[" is not defined.
Цвет "]] .. colorName .. [[" не определен.
Русские названия цветов должны быть обязательно в нижнем регистре]]
		-- if SAFEWORK defined then stop, else return white color
		if SAFEWORK then
			error(errorMessage)
		else 
			print(errorMessage)
			return 1,1,1,1
		end
	end	

	if alpha == nil then -- if alpha not exist, then return just 3 values
		return unpack(coronaPalette[colorName])
	end
	
	local colorWithAlpha = { unpack(coronaPalette[colorName]) } -- return with user alpha
	colorWithAlpha[4] = alpha
	return unpack( colorWithAlpha )
end

-- return base function
return M