Debug = {}


function Debug:Info(str)
	sysLog("Info: " .. tostring(str))
end

function Debug:Warning(str)
	sysLog("Warning: " .. tostring(str))
end


function Debug:Error(str)
	sysLog("Error:  " .. tostring(str))
	lua_exit()
end