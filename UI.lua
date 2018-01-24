require "Debug"
require "HUD"
require "Tool"
require "Adapter"

UI = {}

UI.hudtext = {["id"] = nil, ["status"] = false , ["data"] = {" ",30,"0x00ff0000","",0,340,120,221,58}}
function UI.Init()

--	local id,id2
--	id2 = createHUD()
	setScreenScale(720,1280)
	id = createHUD()  
	for index = 4,1,-1 do
--	for index = 451,1,-1 do
		showHUD(id,"",12,"0x00ff0000","ui_" .. index .. ".png",0,0,0,1280,720)
		mSleep(12)
	end

	Tool.Sleep(2)

	hideHUD(id)
--	hideHUD(id2)
end

return UI