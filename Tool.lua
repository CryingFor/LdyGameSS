Tool = {}

function Tool.Assert(condition,info)
	if (condition) == false then
		if info ~= nil then
			print(tostring(info))
		end
		lua_exit()
	end
end


return Tool