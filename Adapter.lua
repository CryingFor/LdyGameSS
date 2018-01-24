require "Debug"
require "PData"

Adapter = {}

--TODO
--适配哪种系统
Adapter.System = nil

--分辨率
Adapter.DisplaySize = nil

--找到匹配的分辨率
Adapter.DisplaySizePData = nil

--注册的分辨率列表
Adapter.RegisterDisplayList = {
{4,3},
{16,9},
{17,9},
{18,9},
{18.5:9},
}

--注册的分辨率
Adapter.RegisterDisplay = {
["4:3"] = {},
["16:9"] = {},
["17:9"] = {},
["18:9"] = {},
["18.5:9"] = {},
}

--TODO 初始化函数
function Adapter.Init()
	--To Get Screen size. Get system type and so on.
	--TODO 返回分辨率，返回系统类型
	
	
	--注册开发的分辨率
	Adapter.RegisterCurrentDisplay({1280,720})
	
	
	--寻找匹配分辨率
	Adapter.FindCurrentData()
	
	--匹配数据库
	PData.d = PData.data[Adapter.System .. "." .. Adapter.DisplaySizePData[1] .. "x" .. Adapter.DisplaySizePData[2]]
	
	--TODO 设置分辨率缩放
	
	
end

--取整数函数
function Adapter.GetCeil(num)
	if math.ceil(num) == num then
		return math.ceil(num)
	else
		return math.ceil(num) - 1
	end
end

function Adapter.RegisterCurrentDisplay(size)
	local size_length = 0
	local scale = "" 
	local found_flag = false
	
	for key,v in pairs(Adapter.RegisterDisplayList) do
		if Adapter.GetCeil(size[1] / v[1]) == Adapter.GetCeil(size[1] / v[2]) then
			scale = tostring(v[1]) .. ":" .. tostring(v[2])
			found_flag = true
			break
		end
	end
	if found_flag == false then
		Debug.Error("注册分辨率失败，该分辨率目前不属于列表中的任何比例")
		return false
	end
	
	table.insert(Adapter.RegisterDisplay[scale],1,size)
	return true
end

function Adapter.FindCurrentData()
	local scale_x = -1,scale_y = -1
	local bak_x,bak_y = -1,-1
	local x,y = Adapter.DisplaySize[1],Adapter.DisplaySize[2]
	local found_flag = false
	if Adapter.DisplaySize == nil then
		Debug.Error("当前分辨率识别错误")
		return false
	end
	
	for key,v in pairs(Adapter.RegisterDisplayList) do
		if Adapter.GetCeil(size[1] / v[1]) == Adapter.GetCeil(size[1] / v[2]) then
			scale = tostring(v[1]) .. ":" .. tostring(v[2])
			found_flag = true
			break
		end
	end
	if found_flag == true then
		found_flag = false
		for key,v in pairs(Adapter.RegisterDisplay[scale]) do
			if (v[1] >= scale_x) and (v[1] <= x) and (v[2] >= scale_y) and (v[2] <= y) then
				scale_x = v[1]
				scale_y = v[2]
				found_flag = true
			end
		end
	else
		Debug.Error("无法找到当前分辨率的比例")
		return false
	end
	
	if found_flag == false then
		Debug.Error("当前分辨率尚未完成匹配，请联系作者进行兼容开发: " .. x .. "x" .. y)
		return false
	end
	
	Debug.Info("当前分辨率为: " .. x .. "x" .. y .. " , 找到匹配分辨率为: " .. scale_x .. "x" .. scale_y .. "。（仅供作者参考，不影响脚本使用）")
	Adapter.DisplaySizePData = {scale_x,scale_y}
	return true
end


return Adapter