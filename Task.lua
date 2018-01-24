require "Debug"
require "Task_1"

Task = {}


Task.TaskList={
{["Task"] = Task_1, ["Name"] = "任务1", ["Do"] = true}
}

--任务的公共初始化回调入口
function Task.Init()
	--TODO 哪些任务会被调用哪些任务不会被调用，通过Do来判断
	
	--任务初始化公共接口
	for key,t in ipairs(Task.TaskList) do
		if t.Do == true and t["Task"].Init ~= nil then
			t["Task"].Init()
		end
	end
end


function Task.Start()
	Task.Run()
end

function Task.Run()
	while (1)
	do
		for key,t in ipairs(Task.TaskList) do
			if t.Do == true and t["Task"].Run ~= nil then
				t["Task"].Run()
			end
		end
	end
end

return Task