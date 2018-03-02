dofile("settings.lua")
dofile("wifi.lua")

--Global variables
device_data = {T = 100, L = 85, Dh = 11, Dm = 02, S = 0}

--Init ADC
if adc.force_init_mode(adc.INIT_ADC) then
	node.restart()
	return
end

--Set gpio for LED
gpio.mode(4, gpio.OUTPUT)
if cfg_index.onOff == 'Light On' then
	gpio.write(4, gpio.HIGH)
else
	gpio.write(4, gpio.LOW)
end

--Constants
MLP = 7
MTP = 2
MT = 5
ML = 6

--Init output
output_pin = 1
gpio.mode(output_pin, gpio.OUTPUT)

-- Sheduler
rtctime.set(1436430589, 0)
-- cron.schedule(cfg['cron_mask'], function(e)
cron.schedule("* * * * *", function(e)
  dofile("schedule.lua")
end)


--Start HTTP 'server'
dofile("httpd.lua")
print('Ready')
