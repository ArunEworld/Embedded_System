-- http://nodemcu.readthedocs.io/en/master/en/modules/pwm/

--[[
http://esp8266iot.blogspot.in/
http://aruneworld.blogspot.com/
https://github.com/adalurarun/Embedded_System/MicroController/Espressif/ESP8266
Copyright Arun 2016-2017
MIT License

If you like this project, please add a star!
]]--


	----------------------------------------------------------------------------------------------------------------------------------
	-----------------------------------------------	PWM Module	----------------------------------------------------------------------
	----------------------------------------------------------------------------------------------------------------------------------

local PWM = ...			-- Obtain a sample value from somewhere
local PWM_Module =  {}	-- conPWM an empty table and assign it to variable "Table_name" (ex: local Arun =  {})
_G[PWM] = PWM_Module	--	A global variable (not a function) that holds the global environment

--------------------- PWM Module------------------------------
--[[	PWM Module
		pwm.close()		Quit PWM mode for the specified GPIO pin.
		pwm.getclock()	Get selected PWM frequency of pin.
		pwm.getduty()	Get selected duty cycle of pin.
		pwm.setclock()	Set PWM frequency.
		pwm.setduty()	Set duty cycle for a pin.
		pwm.setup()		Set pin to PWM mode.
		pwm.start()		PWM starts, the waveform is applied to the GPIO pin.
		pwm.stop()		Pause the output of the PWM waveform.
]]--

function PWM_Module.close(pin)
--[[	pwm.close()		-	Quit PWM mode for the specified GPIO pin.
		Syntax		:	pwm.close(pin)
		Parameters	:	pin 1~12, IO index
		Returns		:	nil
		See also	:	pwm.start()
]]--
		pwm.close(pin)
end

function PWM_Module.getclock(pin)

--[[	pwm.getclock()	-	Get selected PWM frequency of pin.
		Syntax		:	pwm.getclock(pin)
		Parameters	:	pin 1~12, IO index
		Returns		:	number PWM frequency of pin
		See also	:	pwm.setclock()
		See also	:	pwm.getduty()
]]--
		pwm.getclock(pin)
end
function PWM_Module.getduty(pin)
--[[	pwm.getduty()	-	Get selected duty cycle of pin.
		Syntax		:	pwm.getduty(pin)
		Parameters	:	pin 1~12, IO index
		Returns		:	number duty cycle, max 1023
		See also	:	pwm.setduty()
]]--
		pwm.getduty(pin)
end

function PWM_Module.setclock(pin, clock)
--[[	pwm.setclock()	-	Set PWM frequency. Note: Setup of the PWM frequency will synchronously change other setups as well if there are any. Only one PWM frequency can be allowed for the system.
		Syntax		:	pwm.setclock(pin, clock)
		Parameters	:	pin 1~12, IO index
						clock 1~1000, PWM frequency
		Returns		:	nil
		See also	:	pwm.getclock()
]]--
		pwm.setclock(pin, clock)
end

function PWM_Module.setduty(pin, duty)
--[[	pwm.setduty()	-	Set duty cycle for a pin.
		Syntax		:	pwm.setduty(pin, duty)
		Parameters	:	pin 1~12, IO index
						duty 0~1023, pwm duty cycle, max 1023 (10bit)
		Returns		:	nil
		Example		:	pwm.setup(1, 500, 512)		-- D1 is connected to green led
						pwm.setup(2, 500, 512)		-- D2 is connected to blue led
						pwm.setup(3, 500, 512)		-- D3 is connected to red led
						pwm.start(1)
						pwm.start(2)
						pwm.start(3)
						function led(r, g, b)
							pwm.setduty(1, g)
							pwm.setduty(2, b)
							pwm.setduty(3, r)
						end
						led(512, 0, 0) --  set led to red
						led(0, 0, 512) -- set led to blue.
]]--
			pwm.setduty(pin, duty)
end

function PWM_Module.setup(pin, clock, duty)
--[[	pwm.setup()		-	Set pin to PWM mode. Only 6 pins can be set to PWM mode at the most.
		Syntax		:	pwm.setup(pin, clock, duty)
		Parameters	:	pin 1~12, IO index
						clock 1~1000, pwm frequency
						duty 0~1023, pwm duty cycle, max 1023 (10bit)

		Returns		:	nil
		Example		:	pwm.setup(1, 100, 512)		-- set pin index 1 as pwm output, frequency is 100Hz, duty cycle is half.
		See also	:	pwm.start()
]]--
		pwm.setup(pin, clock, duty)
end

function PWM_Module.start(pin)
--[[	pwm.start()		-	PWM starts, the waveform is applied to the GPIO pin.
		Syntax		:	pwm.start(pin)
		Parameters	:	pin 1~12, IO index
		Returns		:	nil
		See also	:	pwm.stop()
]]--
		pwm.start(pin)
end

function PWM_Module.stop(pin)
--[[	pwm.stop()	-	Pause the output of the PWM waveform.
		Syntax		:	pwm.stop(pin)
		Parameters	:	pin 1~12, IO index
		Returns		:	nil
		See also	:	pwm.start()
]]--
		pwm.stop(pin)
end

return PWM_Module