-- Player
player = {
    x = 100,
    y = 100,
    speed = 200,
    size = 40
}

-- Enemy
enemy = {
    x = 400,
    y = 300,
    speed = 100,
    size = 40
}

function love.update(dt)
    -- PLAYER MOVEMENT
    if love.keyboard.isDown("right") or love.keyboard.isDown("d") then
        player.x = player.x + player.speed * dt
    end
    if love.keyboard.isDown("left") or love.keyboard.isDown("a") then
        player.x = player.x - player.speed * dt
    end
    if love.keyboard.isDown("down") or love.keyboard.isDown("s") then
        player.y = player.y + player.speed * dt
    end
    if love.keyboard.isDown("up") or love.keyboard.isDown("w") then
        player.y = player.y - player.speed * dt
    end

    -- ENEMY AI (CHASE PLAYER)
    if enemy.x < player.x then
        enemy.x = enemy.x + enemy.speed * dt
    elseif enemy.x > player.x then
        enemy.x = enemy.x - enemy.speed * dt
    end

    if enemy.y < player.y then
        enemy.y = enemy.y + enemy.speed * dt
    elseif enemy.y > player.y then
        enemy.y = enemy.y - enemy.speed * dt
    end
end

function love.draw()
    -- Player (white)
    love.graphics.setColor(1, 1, 1)
    love.graphics.rectangle("fill", player.x, player.y, player.size, player.size)

    -- Enemy (red)
    love.graphics.setColor(1, 0, 0)
    love.graphics.rectangle("fill", enemy.x, enemy.y, enemy.size, enemy.size)
end
