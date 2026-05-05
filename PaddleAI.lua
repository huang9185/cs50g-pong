PaddleAI = Class{}

function PaddleAI:init(x, y, width, height)
    self.x = x
    self.y = y
    self.width = width
    self.height = height
    self.dy = 0
end

function PaddleAI:update(dt, ball)
    if math.random() + math.random(1, 100) > PROBABILITY then
        if ball.y < self.y then
            self.dy = -PADDLE_SPEED
        elseif ball.y > self.y then
            self.dy = PADDLE_SPEED
        else
            self.dy = 0
        end

        if self.dy < 0 then
            self.y = math.max(0, self.y + self.dy * dt)
        else
            self.y = math.min(VIRTUAL_HEIGHT - self.height, self.y + self.dy * dt)
        end
    end
end

function PaddleAI:render()
    love.graphics.rectangle('fill', self.x, self.y, self.width, self.height)
end
