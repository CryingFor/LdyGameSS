require "Debug"
require "Tool"
require "PData"

Task_1 = {}



function Task_1.Run()
	Tool:Sleep(2)
	Debug:Info("任务1 运行")
	Tool:Sleep(2)
end

return Task_1