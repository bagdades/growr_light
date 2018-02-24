dofile("settings.lua")
dofile("wifi.lua")

--Global variables
device_data = {T = 100, L = 85, Dh = 11, Dm = 02}

output_pin = 1
gpio.mode(output_pin, gpio.OUTPUT)
-- gpio.serout(output_pin, gpio.HIGH, {20000, 995000}, 100, 1)
-- gpio.write(output_pin, gpio.HIGH)
if cfg_index.onOff == 'Light On' then
	gpio.write(output_pin, gpio.HIGH)
else
	gpio.write(output_pin, gpio.LOW)
end

dofile("read_data.lua")

-- Sheduler
rtctime.set(1436430589, 0)
-- cron.schedule(cfg['cron_mask'], function(e)
cron.schedule("*/1 * * * *", function(e)
  dofile("schedule.lua")
end)

--Start HTTP 'server'
dofile("httpd.lua")
print('Ready')
