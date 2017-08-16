Adapter = {}

--TODO
--适配哪种系统
Adapter.System = nil

--分辨率获取到是多少
Adapter.DisplaySize = {}

--注册的分辨率
Adapter.RegisterDisplay = {
["4:3"] = {},
["16:9"] = {}
}

--TODO 初始化函数
function Adapter.Init()
	--To Get Screen size. Get system type and so on.
end

function Adapter.RegisterCurrentDisplay(size)
	local size_length = 0
	local scale_x,scale_y 
	for key,v in ipairs(size) do
		size_length = size_length + 1
	end
	if size_length ~= 2 then
		print("分辨率注册失败，传入参数错误")
		return false
	end
	
	if (size[1] / 4) == (size[2] / 3) then
		scale_x = 4
		scale_y = 3
	elseif (size[1] / 16) == (size[2] / 9) then
		scale_x = 16
		scale_y = 9
	else
		print("找不到该分辨率的比例")
		return false
	end
	table.insert(Adapter.RegisterDisplay[scale_x .. ":" .. scale_y],1,size)
	return true
end

function Adapter.FindCurrentData()
	local scale_x,scale_y 
	local bak_x,bak_y = -1,-1
	local x,y = Adapter.DisplaySize[1],Adapter.DisplaySize[2]
	if Adapter.DisplaySize == nil then
		print("当前分辨率识别错误")
		return nil
	end
	if (x / 4) == (y / 3) then
		scale_x = 4
		scale_y = 3
	elseif (x / 16) == (y / 9) then
		scale_x = 16
		scale_y = 9
	else 
		print("找不到该分辨率的比例")
		return nil
	end
	
	for key,v in ipairs(Adapter.RegisterDisplay[scale_x .. ":" .. scale_y]) do
		if (v[1] <= x) and (v[2] <= y) then
			if (v[1] > bak_x) and (v[2] > bak_y) then
				bak_x = v[1]
				bak_y = v[2]
			end
		end
	end
	
	if (bak_x ~= x) and (bak_y ~= y) then
		print("警告： 分辨率未找到完全匹配 当前分辨率： " .. x .. "," .. y .. " 适配分辨率为： " .. bak_x .. "," .. bak_y)
		return bak_x .. "x" .. bak_y
	elseif (bak_x == x) and (bak_y == y) then
		print("找到适配分辨率 当前分辨率： " .. x .. "," .. y .. " 适配分辨率为： " .. bak_x .. "," .. bak_y)
		return bak_x .. "x" .. bak_y
	else
		print("错误： 分辨率适配错误 当前分辨率： " .. x .. "," .. y .. " 适配分辨率为： " .. bak_x .. "," .. bak_y)
		return nil
	end
	
end


return Adapter