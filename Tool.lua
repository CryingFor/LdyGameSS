Tool={}

function Tool.mSleep(ms)
	mSleep(ms/2)
end


function Tool.Sleep(s)
	while(s>0)
	do
		Tool:mSleep(s*1000)
		s = s - 1
	end
end

function Tool.FindPointInRegion(region,muti_colors)
	posandcolor=""
	ref_point = muti_colors[1]
	for key,c in pairs(muti_colors) do
		if posandcolor ~= "" then
			posandcolor = posandcolor .. "," 
		end
		posandcolor = posandcolor .. c[1] - ref_point[1] .. "|" .. c[2] - ref_point[2] .. "|" .. string.format("0x%06x",tonumber(c[3]))
	end
	x,y = findColor(
	region,
	posandcolor
	)
	if x ~= -1 and y ~= -1 then
		return true,x,y
	else
		return false ,x,y
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


return Tool

