-----------------------------------------------------------------------------------------
-- created on : March 19
-- created by : Adam
-- main.lua
-- tells you if the number you put is positive or negative
-----------------------------------------------------------------------------------------
local answer
local answerTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 200, 450, 130 )

answerTextField.id = "answer textField"

local answertonumber

local enterButton = display.newImageRect( "./assets/sprites/enterButton.png", 406, 157 )
enterButton.x = display.contentCenterX
enterButton.y = display.contentCenterY
enterButton.id = "enter button"

 

local function enterButtonTouch( event )
 	answer = answerTextField.text
	answertonumber = tonumber(answer)
	
	if answertonumber == 0 then
	    display.newText("**invalid**", 1024, 1200, native.systemFont, 100) 
	elseif answertonumber >= 0 then
		display.newText("number is positive", 1024, 1200, native.systemFont, 100)
	else 
		display.newText("number is negative", 1024, 1200, native.systemFont, 100)
	end
end

enterButton:addEventListener( "touch", enterButtonTouch )