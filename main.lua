function love.load()
    
    dieRoll = 0
    
    die = {
        love.graphics.newImage("PNG/Dice/dieRed_border1.png"),
        love.graphics.newImage("PNG/Dice/dieRed_border2.png"),
        love.graphics.newImage("PNG/Dice/dieRed_border3.png"),
        love.graphics.newImage("PNG/Dice/dieRed_border4.png"),
        love.graphics.newImage("PNG/Dice/dieRed_border5.png"),
        love.graphics.newImage("PNG/Dice/dieRed_border6.png")
    }






end

function love.update(dt)

end

function love.draw()
    if dieRoll > 0 then
        love.graphics.draw(die[dieRoll], 0, 0)
    end
end


function love.keypressed(key)
    if key == "space" then
        math.randomseed(os.time())
        math.random(); math.random(); math.random();

        dieRoll = math.random(1, #die)
    end
end
