require "Debug"
MyOCR = {}

MyOCR.ocr = nil

function MyOCR.Init()
	local msg = nil
	MyOCR.ocr,msg = createOCR({
		type = "tesseract",
--		path = "[external]",
--		lang = "chi_sim"
	}
	)
	if MyOCR.ocr ~= nil then
    -- ocr 创建成功，使用该实例进行后续识别操作（参见下面函数文档）
    sysLog("OCR创建成功: Tesseract-OCR v" .. msg)
else
    -- ocr 创建失败，根据msg提示调整
    sysLog("OCR创建失败: " .. tostring(msg))
		Debug.Error("请先下载字库：chi_sim 中文简体字库")
		
	end
	
end

function MyOCR.GetNum(region,colordiff,list)
	local code,text
	code, text = MyOCR.ocr:getText({
		rect = region,
		diff = colordiff,
		whilelist = list
	})
	
	return text
end

function MyOCR.IfGetTextTrue(region,colordiff,list,expect_rate)
	local code,text
	code, text = MyOCR.ocr:getText({
		rect = region,
		diff = colordiff
	})
	Debug.Info("识别 : " .. text)
	if code == 0 then
		local right = 0
		for i = 0, string.len(text) do
			for ii = 0, string.len(list) do
				if string.sub(list,ii,ii+1) == string.sub(text,i,i+1) then
						right = right + 1
				end
			end
		end
		rate = (right * 2.0)/string.len(text) 
		if rate >= expect_rate then
			return true
		else
			return false 
		end
	else
		return false
	end
	
end

return MyOCR