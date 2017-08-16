require "Adapter"
require "PData"
require "Tool"


Adapter.Init()
Tool.Assert(Adapter.RegisterCurrentDisplay({1920,1080}))

Type = Adapter.FindCurrentData()

--Using PData[Type] to catch picture


