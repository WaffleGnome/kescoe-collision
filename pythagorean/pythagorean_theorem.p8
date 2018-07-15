pico-8 cartridge // http://www.pico-8.com
version 16
__lua__
function _init()
			touch_dist = 15
			
   player = {
    x = 20,
   	y = 20,
   	s = 8,
   	c = 12,
   	speed = 1,
   	
   	update =function(self)
     				if btn(1) then self.x +=self.speed end
     				if btn(2) then self.y -=self.speed end
        	if btn(3) then self.y +=self.speed end
     	   if btn(0) then self.x -=self.speed end			
     
     		end -- end update player
   }
   
   coin = {
   	x = 65,
   	y = 65,
   	s = 8,
   	c = 10,
   }
   
   function collision(obj1, obj2)
   	a = obj1.x - obj2.x
   	b = obj1.y - obj2.y
   	distance = sqrt(a*a + b*b)
   	if distance <= touch_dist then
   		player.c = 11
   	else 
   			player.c = 12
   	end -- end if statement
 
   end -- end collision function

end -- end init function

function _draw()
	circ(player.x, player.y,player.s,player.c)
	circfill(coin.x, coin.y, coin.s, coin.c)
	player:update()
	print(distance)
end -- end draw function



function _update()
cls(7)
collision(player,coin)
end -- end update function

-->8
--[[ 
		the distance object have 
  to be in order to touch
  
]]--
touch_dist = 15

--[[ 
			the collision detection
			logic
]]--
     
--[[     
function collision(obj1, obj2)
   	a = obj1.x - obj2.x
   	b = obj1.y - obj2.y
   	distance = sqrt(a*a + b*b)
   	if distance <= touch_dist then
   		 -- do stuff
   	else 
   			-- do stuff
   	end -- end if statement
 
end -- end collision function



--[[
	to start detection insert the 
	object names that you want to
	check for collision. 
	example below
	]]--
	
	--collision(player, coin)
