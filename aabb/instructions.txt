--[[
to use collision function youll
need to add these 4 characteristics to the two objects that you want to
make collidable (objects x position, object y position ,and objects height and width)

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
