--SAFEWORK = true
math.randomseed( os.time() )

local colorName = require"colorsPalette"

--каждый охотник желает знать где сидит фазан
--local rainbow = {"красный", "оранжевый", "желтый", "зеленый", "голубой", "синий", "фиолетовый"}
--Richard Of York Gave Battle In Vain
--local rainbow = {"red", "orange", "yellow", "green", "sky blue", "blue", "violet"}
-- mixed names
local rainbow = {"красный", "orange", "желтый", "green", "голубой", "blue", "фиолетовый"}

-- draw rainbow
for i = 1, #rainbow do
	local rect = display.newRect(40+(i-1)*40, 120, 40, 200)
	rect:setFillColor( colorName(rainbow[i]) )
end

-- Count web colors in module
local listWeb = colorName"return paletteWeb"
local totalWeb = 0
for k in pairs(listWeb) do
	totalWeb = totalWeb + 1
end

-- Count names in module
local list = colorName"return coronaPalette"
local colorsNames = {}
local total, count, countRu = 0, 0, 0
for k in pairs(list) do
	total = total + 1
	table.insert(colorsNames, k) -- insert name of color to colorsNames table
	if k:find('^%a') then
		count = count + 1
		-- table.insert(colorsNames, k) -- to add only English names to colorsNames table
	else
		countRu = countRu + 1
		-- table.insert(colorsNames, k) -- to add only Russian names to colorsNames table
	end
end
print("Total Web colors", totalWeb, "English names", count, "Russian names", countRu, "Total colors", total)

local delay = 5000
local nextColorName = display.newText( "", display.contentCenterX, 240, native.systemFont, 16 )
-- showRandomColoredBox display random color box, moving up, and show his color name and number in colorsNames
local function showRandomColoredBox()
	local rect = display.newRect(display.contentCenterX, display.contentHeight+100, display.contentWidth-8, 200)
	rect.strokeWidth = 4
	local nextColorNumber = math.random(#colorsNames)
	local nextColor = { colorName( colorsNames[nextColorNumber]) }
	local strokeColor = {}
	for i = 1, 3 do
		strokeColor[i] = 1 - nextColor[i]
		if math.ceil(strokeColor[i]*10) == math.ceil(nextColor[i]*10) then
			strokeColor[i] = 1
		end
	end
	rect:setFillColor( unpack(nextColor) )
	rect.stroke = strokeColor
	nextColorName.text = "next color is: " .. nextColorNumber .. " / " .. #colorsNames
		.. "\n" .. colorsNames[nextColorNumber]
	transition.to(rect, { time = delay, y = display.contentCenterY + 125,
		onComplete = function()
			rect:removeSelf()
		end
	})
end

showRandomColoredBox()
timer.performWithDelay( delay, showRandomColoredBox, 0 )