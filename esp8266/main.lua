dofile("settings.lua")
dofile("wifi.lua")

--Global variables
device_data = {T = 100, L = 85, Dh = 11, Dm = 02}

--Init ADC
if adc.force_init_mode(adc.INIT_ADC) then
	node.restart()
	return
end

--Set gpio for measure adc two channel
gpio.mode(5, gpio.OUTPUT)
gpio.mode(6, gpio.OUTPUT)

--Init output
output_pin = 1
gpio.mode(output_pin, gpio.OUTPUT)
if cfg_index.onOff == 'Light On' then
	gpio.write(output_pin, gpio.HIGH)
else
	gpio.write(output_pin, gpio.LOW)
end

-- Sheduler
rtctime.set(1436430589, 0)
-- cron.schedule(cfg['cron_mask'], function(e)
cron.schedule("*/1 * * * *", function(e)
  dofile("schedule.lua")
end)

--Start HTTP 'server'
dofile("httpd.lua")
print('Ready')
