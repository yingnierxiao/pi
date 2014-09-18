local skynet = require "skynet"

local GPIO = require "GPIO"


local wifiCar

local Wheel = {}
Wheel.__index = Wheel

function Wheel.new( pin )
    local obj = {}

    obj.pin = pin
    GPIO.setmode(GPIO.BOARD)  
    GPIO.setup(obj.pin[0],GPIO.OUT)  
    GPIO.setup(obj.pin[1],GPIO.OUT)  
    local w = setmetatable(obj,Wheel)
    w:stop()
    return w
end

function Wheel:forward()
    print(self.pin[3].. " forward")
    GPIO.output(self.pin[0],GPIO.HIGH)  
    GPIO.output(self.pin[1],GPIO.LOW)  
end

function Wheel:stop(  )
    print(self.pin[3].. " stop")
    GPIO.output(self.pin[0],false)  
    GPIO.output(self.pin[1],false) 
end

function Wheel:back(  )
    print(self.pin[3].. " back")
    GPIO.output(self.pin[0],false)  
    GPIO.output(self.pin[1],true)  
end


local Car = {}

Car.__index = Car

function Car.new(  )
    local obj = {}
    obj.fl = Wheel.new({13,15,"fl"})
    obj.fr = Wheel.new({16,18,"fr"})

    obj.bl = Wheel.new({19,21,"bl"})
    obj.br = Wheel.new({22,24,"br"})

    return setmetatable(obj,Car)
end

function Car:left( ... )
    self.fl:back()
    self.bl:back()

    self.fr:forward()
    self.br:forward()
end

function Car:right( ... )
    self.fl:forward()
    self.bl:forward()

    self.fr:back()
    self.br:back()
end

function Car:forward( ... )
    self.fl:forward()
    self.bl:forward()

    self.fr:forward()
    self.br:forward()
end

function Car:back( ... )
    self.fl:back()
    self.bl:back()

    self.fr:back()
    self.br:back()
end

function Car:stop( ... )
    self.fl:stop()
    self.bl:stop()

    self.fr:stop()
    self.br:stop()
end

function accept.dir(pid,dir )
    dir = tonumber(dir)
	if dir == 0 then 
        wifiCar:stop()
    elseif dir == 1 then
        wifiCar:forward()
    elseif dir == 2 then
        wifiCar:back()
    elseif dir == 3 then
        wifiCar:left()
    elseif dir == 4 then
        wifiCar:right()
    elseif dir == 5 then

    elseif dir == 6 then

    elseif dir == 7 then 

    elseif dir == 8 then 

    end

end

--[[
    DEFAULT = 0, 
    D_UP = 1,
    D_DOWN = 2,
    D_LEFT = 3,
    D_RIGHT = 4,
    D_LEFT_UP = 5,
    D_LEFT_DOWN = 6,
    D_RIGHT_UP = 7,
    D_RIGHT_DOWN =8

]]

function init( ... )
	wifiCar = Car.new()
end
