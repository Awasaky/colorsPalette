colorsPalette
=============
simple Lua / Corona SDK Library - return predefined in stroke names or user web colors in Corona SDK format

[Demo preview / посмотреть демонстрацию](https://i.imgur.com/65hZQoq.gifv)

ENGLISH
-------
Color palette, names and definitions based on web colors in article:
https://ru.wikipedia.org/wiki/%D0%A1%D0%BF%D0%B8%D1%81%D0%BE%D0%BA_%D1%86%D0%B2%D0%B5%D1%82%D0%BE%D0%B2

Total number of colors 232 English names and 350 Russian names
Usage:
```
local palette = require"colorsPalette" -- use require to add module
object:setFillColor( palette("Dark oLiVe"[, alphaChannelColor]) ) -- color name in quotes, any case
```
Additional alphaChannelColor is real number from 0 to 1

If you enter wrong color name, function return white color with alpha = 1

Also console show wrong color string.

Usage data of module
```
local webColorFunc = palette"return webColor" -- assign webColor function to local variable webColorFunc
local webPalette =  palette"return palette" -- assign palette of web colors to local variable webPalette
local coronaSDKPalette = palette"return coronaPalette" --assign palette of Corona SDK colors  to local variable coronaSDKPalette

print( colorsList("return webColor")("#fc0fc0") ) --0.98823529411765	0.058823529411765	0.75294117647059
print( colorsList("return palette", "ярко-розовый")) --#fc0fc0
print( unpack(colorsList("return coronaPalette", "ярко-розовый")) ) -- -0.98823529411765	0.058823529411765	0.75294117647059
```
RUSSIAN
-------
Цветовая палитра, имена и значения базируются на статье:
https://ru.wikipedia.org/wiki/%D0%A1%D0%BF%D0%B8%D1%81%D0%BE%D0%BA_%D1%86%D0%B2%D0%B5%D1%82%D0%BE%D0%B2

Общее число цветов - 232 английских имени и 350 русских имен
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
```
local webColorFunc = palette"return webColor" -- назначает функцию webColor локальной переменной webColorFunc
local webPalette =  palette"return palette" -- назначает палитру веб цветов локальной переменной webPalette
local coronaSDKPalette = palette"return coronaPalette" -- назначает палитру цветов Corona SDK colors цветов локальной переменной coronaSDKPalette

print( colorsList("return webColor")("#fc0fc0") ) --0.98823529411765	0.058823529411765	0.75294117647059
print( colorsList("return palette", "ярко-розовый")) --#fc0fc0
print( unpack(colorsList("return coronaPalette", "ярко-розовый")) ) --0.98823529411765	0.058823529411765	0.75294117647059
```
