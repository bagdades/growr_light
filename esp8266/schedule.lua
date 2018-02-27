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


local C1 = 23    -- Lower temperature 
local V1 = 778   -- ADC value for lower temperature 
local C2 = 280   -- Hight temperature 
local V2 = 349   -- ADC value for hight temperature 


function ConvertADCTemp(value_adc)
	local n = ((C1 - C2) / (V1 - V2))
	local temp = ((n * value_adc) - (n * V1) + C1)
	return string.format("%d", temp)
end

function MeassureTemp()
	--Meassure temperature
	gpio.write(6, gpio.HIGH)
	gpio.write(5, gpio.LOW)
	local valueADC = adc.read(0)
	return ConvertADCTemp(valueADC)
end

function MeassureLight()
	--Measure light
	gpio.write(5, gpio.HIGH)
	gpio.write(6, gpio.LOW)
	local valueADC = adc.read(0)
	print(valueADC)
	valueADC = valueADC / 10
	local tempLigt = valueADC > 100 and 100 or valueADC
	tempLigt = 100 - tempLigt
	return string.format('%d',tempLigt)
end

-- device_data.T = MeassureTemp()

device_data.L = MeassureLight()
print(device_data.L)

if cfg_index.onOff == "Light On" and tonumber(device_data.L) < cfg_index.lightOff then
	gpio.write(output_pin, gpio.HIGH)
	device_data.S = 1
else 
	gpio.write(output_pin, gpio.LOW)
	device_data.S = 0
end
collectgarbage()
