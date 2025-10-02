function love.load()
love.graphics.setBackgroundColor(0.21, 0.67, 0.97)

bullets = {}
bulletSpeed = 300

player = {x=250, y=250, width=15, height=15}
monster = {x = 500, y = 500, width = 15, height = 15}

math.randomseed(os.time())

end

function love.update(dt)

    for i,v in ipairs(bullets) do
        v.x = v.x + (v.dx *dt)
        v.y = v.y + (v.dy *dt)

        if v.x >= monster.x and v.x <= (monster.x + monster.width) and v.y >= monster.y and v.y <= (monster.y + monster.height) then
            monster.x = math.random(0,600)
            monster.y = math.random(0,600)
        end
    end

    if love.keyboard.isDown("d") then
        player.x = player.x + 50 * dt;
    end
    if love.keyboard.isDown("a") then
        player.x = player.x - 50 * dt;
    end
    if love.keyboard.isDown("w") then
        player.y = player.y - 50 * dt;
    end
    if love.keyboard.isDown("s") then
        player.y = player.y + 50 * dt;
    end

end

function love.draw()
    love.graphics.setColor(1,1,1)
    love.graphics.rectangle("fill", player.x, player.y, player.width, player.height)

    love.graphics.setColor(1,0.2,0.2)
    love.graphics.rectangle("fill", monster.x, monster.y, monster.width, monster.height)

    love.graphics.setColor(0.5, 0.5, 0.5)
    for i,v in ipairs(bullets) do
        love.graphics.circle("fill", v.x, v.y, 3)
    end

end

function love.mousepressed(x, y, button)
    if button == 1 then
        local startX = player.x + player.width / 2
        local startY = player.y + player.height / 2
        local mouseX = x
        local mouseY = y

        local angle = math.atan2((mouseY - startY), (mouseX - startX))

        local bulletDx = bulletSpeed * math.cos(angle)
        local bulletDy = bulletSpeed * math.sin(angle)

        table.insert(bullets, {x = startX, y = startY, dx = bulletDx, dy = bulletDy})
    end

end



