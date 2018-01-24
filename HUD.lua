require "Adapter"
require "Debug"

HUD = {}

HUD.ButtonHud = {}
    
HUD.ButtonHud_2048x1536 = {
["创建点"] = {["id"] = nil, ["status"] = false , ["data"] = {"创建点",30,"0xffff0000","0xffffffff",0,100,0,150,32}},
["完成"] =  {["id"] = nil, ["status"] = false , ["data"] = {"完成",30,"0xffff0000","0xffffffff",0,290,0,100,32}},
["提示"] = {["id"] = nil, ["status"] = false , ["data"] = {"先创建多个点，然后点完成",30,"0xffff0000","0x00ffffff",0,500,600,400,32}},

["时间"] = {["id"] = nil, ["status"] = false , ["data"] = {"",50,"0xfffeaf06","0x00000000",0,1450,140,440,60}},
["剩余次数"] = {["id"] = nil, ["status"] = false , ["data"] = {"",25,"0xfffeaf06","0x00000000",0,1500,120,340,52}},
["休息时间"] = {["id"] = nil, ["status"] = false , ["data"] = {"",25,"0xfffeaf06","0x00000000",0,1500,175,340,52}},


["我方红buff"] = {["id"] = nil, ["status"] = false , ["data"] = {"",20,"0xff6ae15f","0x00ffffff",0,135,320,200,50}},
["我方蓝buff"] = {["id"] = nil, ["status"] = false , ["data"] = {"",20,"0xff6ae15f","0x00ffffff",0,20,185,200,50}},
["敌方红buff"] = {["id"] = nil, ["status"] = false , ["data"] = {"",20,"0xff6ae15f","0x00ffffff",0,98,70,200,50}},
["敌方蓝buff"] = {["id"] = nil, ["status"] = false , ["data"] = {"",20,"0xff6ae15f","0x00ffffff",0,210,190,200,50}},


["大招1"] = {["id"] = nil, ["status"] = false , ["data"] = {"",35,"0x8ffaaf07","0x00ffffff",0,1500,260,440,40}},
["大招2"] = {["id"] = nil, ["status"] = false , ["data"] = {"",35,"0x8ffaaf07","0x00ffffff",0,1500,340,440,40}},
["大招3"] = {["id"] = nil, ["status"] = false , ["data"] = {"",35,"0x8ffaaf07","0x00ffffff",0,1500,420,440,40}},
["大招4"] = {["id"] = nil, ["status"] = false , ["data"] = {"",35,"0x8ffaaf07","0x00ffffff",0,1500,500,440,40}},

--["局内表现"] = {["id"] = nil, ["status"] = false , ["data"] = {"",25,"0x8ffaaf07","局内表现.png",0,700,0,110,50}},
["连招"] = {["id"] = nil, ["status"] = false , ["data"] = {"L",0,"0x8ffaaf07","L.png",0,750,461,100,100}},

["野怪1"] = {["id"] = nil, ["status"] = false , ["data"] = {"",15,"0xff6ae15f","0x00ffffff",0,225,320,100,100}},
["野怪2"] = {["id"] = nil, ["status"] = false , ["data"] = {"",15,"0xff6ae15f","0x00ffffff",0,151,254,100,100}},
["野怪3"] = {["id"] = nil, ["status"] = false , ["data"] = {"",15,"0xff6ae15f","0x00ffffff",0,45,213,100,100}},
["野怪4"] = {["id"] = nil, ["status"] = false , ["data"] = {"",15,"0xff6ae15f","0x00ffffff",0,13,152,100,100}},
["野怪5"] = {["id"] = nil, ["status"] = false , ["data"] = {"",15,"0xff6ae15f","0x00ffffff",0,108,18,100,100}},
["野怪6"] = {["id"] = nil, ["status"] = false , ["data"] = {"",15,"0xff6ae15f","0x00ffffff",0,182,90,100,100}},
["野怪7"] = {["id"] = nil, ["status"] = false , ["data"] = {"",15,"0xff6ae15f","0x00ffffff",0,288,130,100,100}},
["野怪8"] = {["id"] = nil, ["status"] = false , ["data"] = {"",15,"0xff6ae15f","0x00ffffff",0,320,190,100,100}},
}
--370,235

HUD.ButtonHud_1136x640 = {
["创建点"] = {["id"] = nil, ["status"] = false , ["data"] = {"创建点",30,"0xffff0000","0xffffffff",0,100,0,150,32}},
["完成"] =  {["id"] = nil, ["status"] = false , ["data"] = {"完成",30,"0xffff0000","0xffffffff",0,290,0,100,32}},
["提示"] = {["id"] = nil, ["status"] = false , ["data"] = {"先创建多个点，然后点完成",30,"0xffff0000","0x00ffffff",0,500,600,400,32}},

["时间"] = {["id"] = nil, ["status"] = false , ["data"] = {"",40,"0xfffeaf06","0x00000000",0,860,52,200,52}},
["剩余次数"] = {["id"] = nil, ["status"] = false , ["data"] = {"",25,"0xfffeaf06","0x00000000",0,860,52,240,52}},
["休息时间"] = {["id"] = nil, ["status"] = false , ["data"] = {"",25,"0xfffeaf06","0x00000000",0,860,102,240,52}},


["我方红buff"] = {["id"] = nil, ["status"] = false , ["data"] = {"",20,"0xff6ae15f","0x00ffffff",0,58,140,100,50}},
["我方蓝buff"] = {["id"] = nil, ["status"] = false , ["data"] = {"",20,"0xff6ae15f","0x00ffffff",0,4,70,100,50}},
["敌方红buff"] = {["id"] = nil, ["status"] = false , ["data"] = {"",20,"0xff6ae15f","0x00ffffff",0,55,11,100,50}},
["敌方蓝buff"] = {["id"] = nil, ["status"] = false , ["data"] = {"",20,"0xff6ae15f","0x00ffffff",0,109,80,100,50}},


["大招1"] = {["id"] = nil, ["status"] = false , ["data"] = {"",25,"0x8ffaaf07","0x00ffffff",0,880,110,240,40}},
["大招2"] = {["id"] = nil, ["status"] = false , ["data"] = {"",25,"0x8ffaaf07","0x00ffffff",0,880,150,240,40}},
["大招3"] = {["id"] = nil, ["status"] = false , ["data"] = {"",25,"0x8ffaaf07","0x00ffffff",0,880,190,240,40}},
["大招4"] = {["id"] = nil, ["status"] = false , ["data"] = {"",25,"0x8ffaaf07","0x00ffffff",0,880,230,240,40}},

--["局内表现"] = {["id"] = nil, ["status"] = false , ["data"] = {"",25,"0x8ffaaf07","局内表现.png",0,700,0,110,50}},
["连招"] = {["id"] = nil, ["status"] = false , ["data"] = {"L",0,"0x8ffaaf07","L.png",0,750,461,100,100}},

["野怪1"] = {["id"] = nil, ["status"] = false , ["data"] = {"",10,"0xff6ae15f","0x00ffffff",0,125,174,15,15}},
["野怪2"] = {["id"] = nil, ["status"] = false , ["data"] = {"",10,"0xff6ae15f","0x00ffffff",0,86,136,15,15}},
["野怪3"] = {["id"] = nil, ["status"] = false , ["data"] = {"",10,"0xff6ae15f","0x00ffffff",0,35,116,15,15}},
["野怪4"] = {["id"] = nil, ["status"] = false , ["data"] = {"",10,"0xff6ae15f","0x00ffffff",0,18,85,15,15}},
["野怪5"] = {["id"] = nil, ["status"] = false , ["data"] = {"",10,"0xff6ae15f","0x00ffffff",0,66,18,15,15}},
["野怪6"] = {["id"] = nil, ["status"] = false , ["data"] = {"",10,"0xff6ae15f","0x00ffffff",0,102,51,15,15}},
["野怪7"] = {["id"] = nil, ["status"] = false , ["data"] = {"",10,"0xff6ae15f","0x00ffffff",0,158,72,15,15}},
["野怪8"] = {["id"] = nil, ["status"] = false , ["data"] = {"",10,"0xff6ae15f","0x00ffffff",0,175,104,15,15}},
}



HUD.ButtonHud_1280x720 = {
["创建点"] = {["id"] = nil, ["status"] = false , ["data"] = {"创建点",30,"0xffff0000","0xffffffff",0,100,0,150,32}},
["完成"] =  {["id"] = nil, ["status"] = false , ["data"] = {"完成",30,"0xffff0000","0xffffffff",0,290,0,100,32}},
["提示"] = {["id"] = nil, ["status"] = false , ["data"] = {"先创建多个点，然后点完成",30,"0xffff0000","0x00ffffff",0,500,600,400,32}},

["时间"] = {["id"] = nil, ["status"] = false , ["data"] = {"",40,"0xfffeaf06","0x00000000",0,990,52,240,52}},
["剩余次数"] = {["id"] = nil, ["status"] = false , ["data"] = {"",40,"0xfffeaf06","0x00000000",0,990,52,240,52}},
["休息时间"] = {["id"] = nil, ["status"] = false , ["data"] = {"",40,"0xfffeaf06","0x00000000",0,990,102,240,52}},

["我方红buff"] = {["id"] = nil, ["status"] = false , ["data"] = {"",20,"0xff6ae15f","0x00ffffff",0,108,170,25,25}},
["我方蓝buff"] = {["id"] = nil, ["status"] = false , ["data"] = {"",20,"0xff6ae15f","0x00ffffff",0,54,95,25,25}},
["敌方红buff"] = {["id"] = nil, ["status"] = false , ["data"] = {"",20,"0xff6ae15f","0x00ffffff",0,105,31,25,25}},
["敌方蓝buff"] = {["id"] = nil, ["status"] = false , ["data"] = {"",20,"0xff6ae15f","0x00ffffff",0,166,106,25,25}},

["大招1"] = {["id"] = nil, ["status"] = false , ["data"] = {"",25,"0x8ffaaf07","0x00ffffff",0,1000,130,240,40}},
["大招2"] = {["id"] = nil, ["status"] = false , ["data"] = {"",25,"0x8ffaaf07","0x00ffffff",0,1000,170,240,40}},
["大招3"] = {["id"] = nil, ["status"] = false , ["data"] = {"",25,"0x8ffaaf07","0x00ffffff",0,1000,210,240,40}},
["大招4"] = {["id"] = nil, ["status"] = false , ["data"] = {"",25,"0x8ffaaf07","0x00ffffff",0,1000,250,240,40}},

--["局内表现"] = {["id"] = nil, ["status"] = false , ["data"] = {"",25,"0x8ffaaf07","局内表现.png",0,700,0,110,50}},
["连招"] = {["id"] = nil, ["status"] = false , ["data"] = {"L",0,"0x8ffaaf07","L.png",0,750,461,100,100}},

["野怪1"] = {["id"] = nil, ["status"] = false , ["data"] = {"",10,"0xff6ae15f","0x00ffffff",0,145,194,15,15}},
["野怪2"] = {["id"] = nil, ["status"] = false , ["data"] = {"",10,"0xff6ae15f","0x00ffffff",0,106,156,15,15}},
["野怪3"] = {["id"] = nil, ["status"] = false , ["data"] = {"",10,"0xff6ae15f","0x00ffffff",0,49,136,15,15}},
["野怪4"] = {["id"] = nil, ["status"] = false , ["data"] = {"",10,"0xff6ae15f","0x00ffffff",0,33,105,15,15}},
["野怪5"] = {["id"] = nil, ["status"] = false , ["data"] = {"",10,"0xff6ae15f","0x00ffffff",0,83,33,15,15}},
["野怪6"] = {["id"] = nil, ["status"] = false , ["data"] = {"",10,"0xff6ae15f","0x00ffffff",0,122,71,15,15}},
["野怪7"] = {["id"] = nil, ["status"] = false , ["data"] = {"",10,"0xff6ae15f","0x00ffffff",0,178,92,15,15}},
["野怪8"] = {["id"] = nil, ["status"] = false , ["data"] = {"",10,"0xff6ae15f","0x00ffffff",0,195,124,15,15}},
}



HUD.PointHud = {
}

function HUD.Init()
	for key,v in pairs(HUD.ButtonHud) do
		HUD.ButtonHud[key].data[2] = HUD.ButtonHud[key].data[2] * Adapter.DisplayRate.x
	end
end

function HUD.StartCreateHud()
	local g_x,g_y = Adapter.DisplaySize[1],Adapter.DisplaySize[2]
	for key,v in pairs(HUD.ButtonHud) do
		HUD.ShowHUD(v)
	end
	local count = 0
	while true do
		local y,x = catchTouchPoint()	--竖屏坐标转换
		y = g_y - y					--竖屏坐标转换
		Debug.Info(x .. "," .. y)
		if (HUD.ClickButtonHUD(x,y) == "创建点") then
			toast("点击创建点")
			y,x = catchTouchPoint()	--竖屏坐标转换
			y = g_y - y					--竖屏坐标转换
			count = count + 1
			HUD.AddPointHud(count,x,y)
		elseif (HUD.ClickButtonHUD(x,y) == "完成") then
			break
		end
	end

	for key,v in pairs(HUD.PointHud) do
		Debug.Info("第" .. key .. "个点：" .. v.point[1] .. "," .. v.point[2])
	end
	
	Debug.Info("总共" .. count .. "个点")
	
	for key,v in pairs(HUD.ButtonHud) do
		HUD.HideHUD(v)
	end
	for key,v in pairs(HUD.PointHud) do
		HUD.HideHUD(v.data)
	end
end


function HUD.AddPointHud(id,x,y)
	local 边长 = 10
	local default = {["point"] = {x,y}, ["data"] = {["id"] = id, ["status"] = false , ["data"] = {" ",15,"0xffff0000","0xff00ff00",0,x,y,边长,边长}}}
	return HUD.ShowHUD(default.data)
end

function HUD.ShowHUD(hud)
	if hud.id == nil then
		hud.id = createHUD()
	end
	showHUD(hud.id,hud.data[1],hud.data[2],hud.data[3],hud.data[4],hud.data[5],hud.data[6],hud.data[7],hud.data[8],hud.data[9])
	hud.status = true
	return hud.id
end

function HUD.HideHUD(hud)
	if hud.status == true and hud.id ~= nil then
		hud.status = false
		hideHUD(hud.id)
		hud.id = nil
	end
end

function HUD.ClickButtonHUD(x,y)
	for key,v in pairs(HUD.ButtonHud) do
		if v.status then
			if (x >= v.data[6] and x <= (v.data[6] + v.data[8]) ) and
			(y >= v.data[7] and y <= (v.data[7] + v.data[9]) ) then
				return v.data[1]
			end
		end
	end
	return nil
end


function HUD.ShowBuffHUD(hudstr)
	HUD.ShowHUD(HUD.ButtonHud[hudstr])
end

function HUD.HideBuffHUD(hudstr)
	HUD.HideHUD(HUD.ButtonHud[hudstr])
end



return HUD