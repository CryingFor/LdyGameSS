Input={}

function Input:TouchPoint(x,y)
		touchDown(1,x,y)
		mSleep(math.random(100,300))
		touchUp(1,x,y)
end

--移动 dir可以选择down，up，left，right
function Input:TouchMove(x,y,dir,length)
	local times = length / 10
	touchDown(1,x,y)
	for i = 1,times do
		if dir == "down" then
			touchMove(1,x,y+10)
		elseif dir == "up" then
			touchMove(1,x,y-10)
		elseif dir == "left" then
			touchMove(1,x-10,y)
		elseif dir == "right" then
			touchMove(1,x+10,y)
		end
		mSleep(50)
	end
	if dir == "down" then
		touchUp(1,x,y+length)
	elseif dir == "up" then
		touchUp(1,x,y-length)
	elseif dir == "left" then
		touchUp(1,x-length,y)
	elseif dir == "right" then
		touchUp(1,x+length,y)
	end
end



