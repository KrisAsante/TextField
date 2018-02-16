-----------------------------------------------------------------------------------------
-- Created by: Chris Asante
-- Created on: Feb 2018
-- how to add a text field and button, so that you can enter text
-- 
-----------------------------------------------------------------------------------------

display.setDefault("background", 0.5, 0.5, 1 )
local myText = display.newText( "Cool Button", 1024, 400, native.systemFont, 146 )
myText:setFillColor( 0, 0, 1 )

local answerTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 200, 450, 75 )
answerTextField.id = "answer textField"

local enterButton = display.newImageRect( "./assets/sprites/enterButton.png", 406, 157 )
enterButton.x = display.contentCenterX
enterButton.y = display.contentCenterY
enterButton.id = "enter button"
 
local function enterButtonTouch( event )
    -- it is not perfect, but we will make it better soon
    print( answerTextField.text )

    return true
end

enterButton:addEventListener( "touch", enterButtonTouch )