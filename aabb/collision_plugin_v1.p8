pico-8 cartridge // http://www.pico-8.com
version 16
__lua__
function _init()
   player ={
    	x = 65,
    	y = 65,
    	c = 10, 
    	speed = 1,
    	width = 8,
    	height =8,
    	img = 1,
    	
    	make = function(self)
    				spr(self.img, self.x, self.y)
    			end, -- end make
    	update =function(self)
    				if btn(1) then self.x +=self.speed end
    				if btn(2) then self.y -=self.speed end
       	if btn(3) then self.y +=self.speed end
    	   if btn(0) then self.x -=self.speed end
    				
    
    		end -- end update player
   	} -- end player
   	
   	
   	coin ={
   		x= 55,
   		y= 55,
   		c=55,
   		s=8,
   		width =8,
   		height =8,
   	 
   	 draw = function(self)
   	 spr(2, self.x, self.y)
   	 end
   	 
   	} --end coin 


    function collision(obj1, obj2)
      if  obj1.x < obj2.x + obj2.width and
          obj1.x + obj1.width > obj2.x and
          obj1.y < obj2.y + obj2.height and
          obj1.y + obj1.height >obj2.y 

        then  obj1.img = 3
        else  obj1.img = 1
  end -- end of if statement

end -- end of collision function
   	
   	
end -- end init

function _draw()
	player:make()
	coin:draw()
	
end




function _update()
cls(7)
player:update()
collision(player,coin)


end -- end update function




-->8
--[[
to use collision function youll
need these 4 characteristics of
the two objects that you want to
make collidable

example bellow:
player ={
	  x    =  65,
	  y    =  65,
	width  =  8,
	height =  8,
} -- end of player  setup

--------------------

below is the collision 
function you can leave as is 
or edit if needed
]]--

function collision(obj1, obj2)
	if  obj1.x < obj2.x + obj2.width and
		obj1.x + obj1.width > obj2.x and
		obj1.y < obj2.y + obj2.height and
		obj1.y + obj1.height >obj2.y 

		then -- do stuff
		else -- do stuff
	end -- end of if statement

end -- end of collision function

--[[
	to use the function call the 
	function with the names of the
	objects that you want be be 
collidable
	
]]
-- example
-- collision(player, enemy)

__gfx__
0000000099999999bbbbbbbbcccccccc000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000099999999bbbbbbbbcccccccc000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0070070099090999bb1b1bbbc00cc00c000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0007700099090999bbbbbbbbcccccccc000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0007700099999999bb1111bbcccccccc000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0070070099000999bbbbbbbbcc0000cc000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000099999999bbbbbbbbcccccccc000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000099999999bbbbbbbbcccccccc000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
