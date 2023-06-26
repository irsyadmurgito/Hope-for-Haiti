-- Hope for Haiti --
 
-- Setting up the global table 
HopeForHaiti = {}
 
-- Create a couple of useful local variables
local screen = love.graphics.getWidth()
local middle = screen / 2
 
-- First we'll need to load our font
function HopeForHaiti.loadFont()
	HopeForHaiti.font = love.graphics.newFont('fonts/Arial.ttf',30)
end
 
-- Our draw function
function HopeForHaiti.draw()
	love.graphics.setBackgroundColor(255,255,255)
	love.graphics.setColor(255,0,0)
	love.graphics.setFont(HopeForHaiti.font)
	love.graphics.printf("Hope For Haiti", middle - 100, 10, 200,"center")
	love.graphics.setColor(0,0,0)
	love.graphics.rectangle("fill",middle-100,30,200,80)
end
 
-- Update function that runs every frame
function HopeForHaiti.update(dt)

end
 
-- Key pressed function
function HopeForHaiti.keypressed(key)
	if key == "escape" then
		love.event.quit()
	end
end
 
-- Mouse pressed function
function HopeForHaiti.mousepressed(x, y, button)
	if x < middle + 100 and x > middle - 100 and y < 110 and y > 30 then
		love.event.quit()
	end
end
 
-- Love draw function
function love.draw()
	HopeForHaiti.draw()
end
 
-- Love update function
function love.update(dt)
	HopeForHaiti.update(dt)
end
 
-- Love keypressed function
function love.keypressed(key)
	HopeForHaiti.keypressed(key)
end
 
-- Love mousepressed function
function love.mousepressed(x, y, button)
	HopeForHaiti.mousepressed(x, y, button)
end
 
-- Love load function
function love.load()
	HopeForHaiti.loadFont()
end