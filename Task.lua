require "Debug"
require "Task_1"

Task = {}

TaskList={
{["Name"] = "任务1",["Run"] = nil }
}


function Task:Init()
	TaskList[1].Run = Task_1.Run
end


function Task:Start()
	Task:Run()
end


function Task:Run()
	for key,t in ipairs(TaskList) do
		Debug:Info("开始 : "  .. t.Name .. key)
		if t.Run ~= nil then
			t.Run()
		end
		Debug:Info("结束 : "  .. t.Name)
	end

end