--SAFEWORK = true
math.randomseed( os.time() )

local colorsList = require"colorsPalette"

-- каждый охотник желает знать где сидит фазан
local rainbow = {"красный", "orange", "желтый", "green", "голубой", "blue", "фиолетовый" }

for i = 1, #rainbow do
	local rect = display.newRect( 35 + (i-1) * 40, 120, 40, 200 )
	rect:setFillColor( colorsList(rainbow[i]) )
end

print( colorsList"return webColor" )
print( colorsList"return palette" )
print( colorsList"return coronaPalette" )
print( "webColor #fc0fc0 ", colorsList("return webColor", "#fc0fc0"))
print( "ярко-розовый ", colorsList("return palette", "ярко-розовый"))
print( "ярко-розовый ", unpack(colorsList("return coronaPalette", "ярко-розовый")) )

local list = colorsList"return palette"
local count, countRu, colorsNames = 0, 0, {}
for k in pairs(list) do
	table.insert(colorsNames, k)
	if string.match(k, "[a-z]+") then
		count = count + 1
	else
		countRu = countRu + 1
	end
end
print(count, countRu)


local nextColorName = display.newText( "", display.contentCenterX, 240, native.systemFont, 16 )
local delay = 5000
local function showNextBox()
	local rect = display.newRect( display.contentCenterX, display.contentHeight + 100, display.contentWidth - 8 , 100 )
	rect.strokeWidth = 4
	local nextColorNumber = math.random(#colorsNames)
	local nextColor = { colorsList( colorsNames[nextColorNumber]) }
	local strokeColor = {}
	for i = 1, 3 do
		strokeColor[i] = 1 - nextColor[i]
		if math.ceil(strokeColor[i]*10) == math.ceil(nextColor[i]*10) then
			strokeColor[i] = 1
		end
	end
	rect:setFillColor( unpack(nextColor) )
	rect.stroke = strokeColor
	nextColorName.text = [[next color is:
]] .. colorsNames[nextColorNumber]
	transition.to(rect, { time = delay, y = display.contentCenterY + 80,
		onComplete = function()
			rect:removeSelf()
		end
	})
end

showNextBox()
showNextBoxTimer = timer.performWithDelay( delay, showNextBox, 0 )