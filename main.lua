--SAFEWORK = true

local colorsList = require"colorsPalette"

local circ1 = display.newCircle( 50, 50, 50 ) -- каждый
circ1:setFillColor( colorsList("красный") )

local circ2 = display.newCircle( 150, 50, 50 ) -- охотник
circ2:setFillColor( colorsList("orange") )

local circ3 = display.newCircle( 250, 50, 50 ) -- желает
circ3:setFillColor( colorsList("желтый") )

local circ4 = display.newCircle( 50, 150, 50 ) -- знать
circ4:setFillColor( colorsList("green") )

local circ5 = display.newCircle( 150, 150, 50 ) -- где
circ5:setFillColor( colorsList("голубой") )

local circ6 = display.newCircle( 250, 150, 50 ) -- сидит
circ6:setFillColor( colorsList("blue") )

local circ7 = display.newCircle( 50, 250, 50 ) -- фазан
circ7:setFillColor( colorsList("фиолетовый") )
--
print( colorsList"return webColor" )
print( colorsList"return palette" )
print( colorsList"return coronaPalette" )
print( "webColor ", colorsList("return webColor", "#fc0fc0"))
print( "ярко-розовый ", colorsList("return palette", "ярко-розовый"))
print( "ярко-розовый ", unpack(colorsList("return coronaPalette", "ярко-розовый")) )

local list = colorsList"return palette"
local count = 0
local countRu = 0
for k,v in pairs(list) do
	if string.find(k, "[^a-z]") then
		countRu = countRu + 1
	else
		count = count + 1
		print(k)
	end
end
print(count, countRu)