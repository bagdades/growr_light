local tm = rtctime.epoch2cal(rtctime.get())
if tm["year"] < 2017 then
	print(tm["year"])
  sntp.sync()
else
	local timeZone = tm["hour"] + 2
	if timeZone >= 24 then
		timeZone = timeZone - 24
	end
	device_data.Dh = timeZone
	device_data.Dm = tm["min"]
end


local C1 = 20    -- Lower temperature 
local V1 = 792   -- ADC value for lower temperature 
local C2 = 280   -- Hight temperature 
local V2 = 349   -- ADC value for hight temperature 


function ConvertADCTemp(value_adc)
	local n = ((C1 - C2) / (V1 - V2))
	local temp = ((n * value_adc) - (n * V1) + C1)
	return string.format("%d", temp)
end

function MeassureTemp()
	gpio.mode(MTP, gpio.OUTPUT)
	gpio.mode(MT, gpio.OUTPUT)
	gpio.mode(MLP, gpio.INPUT)
	gpio.mode(ML, gpio.INPUT)
	gpio.write(MTP, gpio.HIGH)
	gpio.write(MT, gpio.LOW)
	local valueADC = adc.read(0)
	print(valueADC)
	return ConvertADCTemp(valueADC)
end

function MeassureLight()
	gpio.mode(MLP, gpio.OUTPUT)
	gpio.mode(ML, gpio.OUTPUT)
	gpio.mode(MTP, gpio.INPUT)
	gpio.mode(MT, gpio.INPUT)
	gpio.write(MLP, gpio.HIGH)
	gpio.write(ML, gpio.LOW)
	local valueADC = adc.read(0)
	print(valueADC)
	valueADC = valueADC / 10
	local tempLigt = valueADC > 100 and 100 or valueADC
	tempLigt = 100 - tempLigt
	return string.format('%d',tempLigt)
end

device_data.T = MeassureTemp()
print(device_data.T)

device_data.L = MeassureLight()
print(device_data.L)

function controllLiht()
	local uTime = string.sub(cfg_index.time_upper, 1, 2) .. string.sub(cfg_index.time_upper, 4, 5)
	uTime = tonumber(uTime)
	local lTime = string.sub(cfg_index.time_lower, 1, 2) .. string.sub(cfg_index.time_lower, 4, 5)
	lTime = tonumber(lTime)
	local curTime = (device_data.Dh * 100) + device_data.Dm
	local curTemp = tonumber(device_data.T)
	local curLight = tonumber(device_data.L)
	if cfg_index.onOff == "Light On" and curLight < cfg_index.lightOff 
		and curTime > uTime and curTime < lTime and curTemp < cfg_index.tempOff then
		gpio.write(output_pin, gpio.HIGH)
		device_data.S = 1
	else 
		gpio.write(output_pin, gpio.LOW)
		device_data.S = 0
	end
end

controllLiht()

collectgarbage()
