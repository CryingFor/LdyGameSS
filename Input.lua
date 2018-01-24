Input={}

function Input.Init()
	math.randomseed(os.time()) 
end

function Input.TouchPoint(point)
		x = point[1] + math.random(1,5)
		y = point[2] + math.random(1,5)
		touchDown(1,x,y)
		mSleep(math.random(50,150))
		touchUp(1,x,y)
		mSleep(math.random(100,200))
end

--移动 dir可以选择down，up，left，right
function Input.TouchMove(x,y,dir,length)
	local times = length
	touchDown(1,x,y)
	mSleep(1000)
	for i = 1,times do
		if dir == "向下" then
			y = y + 1
			touchMove(1,x,y+1)
		elseif dir == "向上" then
			y = y - 1
			touchMove(1,x,y-1)
		elseif dir == "向左" then
			x = x - 1
			touchMove(1,x-1,y)
		elseif dir == "向右" then
			x = x + 1
			touchMove(1,x+1,y)
		end
	end
	touchUp(1,x,y)
	mSleep(1000)
end



