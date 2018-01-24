require "Input"
Tool={}

function Tool.mSleep(ms)
	mSleep(ms/2)
end

function Tool.Sleep(s)
	while(s>0)
	do
		Tool.mSleep(s*1000)
		s = s - 1
	end
end

function Tool.FindPointInRegion(data)
	local x,y = findColor(
	data[1],
	data[2],
	data[3]
	)
	if x ~= -1 and y ~= -1 then
		return true,x,y
	else
		return false ,x,y
	end
end

function Tool.FindPointsInRegion(data)
	local points = findColors(
	data[1],
	data[2],
	data[3]
	)
	
	if points ~= nil then
		return true,points
	else
		return false,points
	end
end

function Tool.CheckPoint(x,y,color)
	local ret = true
	if (getColor(x,y) ~= color) then
		ret = false
	end
	return ret
end

function Tool.Assert(condition,info)
	if (condition) == false then
		if info ~= nil then
			print(tostring(info))
		end
		lua_exit()
	end
end

function Tool.TryTouchIcon(data)
	local ret,x,y = Tool.FindPointInRegion(data)
	if ret == true then
		Input.TouchPoint({x,y})
		return true
	end
	return false
end

function Tool.IfIcon(data)
	local ret,x,y = Tool.FindPointInRegion(data)
	if ret == true then
		return true
	end
	return false
end

--字符串分割函数
function Tool.Split(szFullString, szSeparator)  
	local nFindStartIndex = 1  
	local nSplitIndex = 1  
	local nSplitArray = {}  
	while true do  
		 local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex)  
		 if not nFindLastIndex then  
			nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString))  
			break  
		 end  
		 nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1)  
		 nFindStartIndex = nFindLastIndex + string.len(szSeparator)  
		 nSplitIndex = nSplitIndex + 1  
	end  
	return nSplitArray  
end  

function Tool.RandomSort(t)
	local count = 0
	local r = 1
	local bak = t
	local equ = 0
	for key,v in pairs(t) do
		count = count + 1
	end
	for key,v in pairs(t) do
		r =math.random(1,count)
		t[key],t[r] = t[r],t[key]
	end
	for key,v in pairs(t) do
		r =math.random(1,count)
		t[key],t[r] = t[r],t[key]
	end
	for key,v in pairs(t) do
		r =math.random(1,count)
		t[key],t[r] = t[r],t[key]
	end
	return t
end

function Tool.TryCatchIconAll(data)
	local ret,points = Tool.FindPointsInRegion(data) 
	local count = 0

	if ret == true then
		for key,v in pairs(points) do
			if v ~= nil then
				count = count + 1
			end
		end
		return count,points
	else
		return count,points
	end
	
end


return Tool

