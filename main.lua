function Menu()

    function love.draw()
        love.graphics.print("PLAY?", 100, 100)
        love.graphics.print("END", 100, 200)
    end

    love.mousepressed = function (x,y)
        if x > 90 and x < 140
            and y > 90 and y < 140 then
            Game()
        end
        if x > 90 and x < 140
            and y > 180 and y < 220 then
            END()
        end
    end
end

function Game()
    function love.draw()
        love.graphics.setColor(1, 1, 1)
        love.graphics.print("Click circle to win", 100, 100)
        love.graphics.setColor(0, 0, 1)
        love.graphics.circle("fill", 300, 300, 50, 100)
    end

    love.mousepressed = function (x,y)
        if x > 100 and x < 600
            and y > 300 and y < 1000 then
            YouWin()
        end
    end

    function YouWin()
        function love.draw()
            love.graphics.setColor(0, 1, 0)
            love.graphics.circle("fill", 300, 300, 50, 100)
            love.graphics.print("You win", 100, 50)
            love.graphics.print("Back to menu?", 100, 100)
        end
        love.mousepressed = function (x,y)
            if x > 80 and x < 120
                and y > 80 and y < 120 then
                Menu()
            end
        end
    end
end

function END()
    love.event.quit()
end

Menu()

