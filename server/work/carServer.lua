local skynet = require "skynet"

local GPIO = require "GPIO"


local wifiCar

local Wheel = {}
Wheel.__index = Wheel

function Wheel.new( pin )
    local obj = {}
	-- print(pin[1],pin[2],pin[3])
    obj.pin = pin
    GPIO.setmode(GPIO.BOARD)  
    GPIO.setup(pin[1],GPIO.OUT)  
    GPIO.setup(pin[2],GPIO.OUT)  
    local w = setmetatable(obj,Wheel)
    w:stop()
    return w
end

function Wheel:forward()
    -- print(self.pin[3].. " forward")
    GPIO.output(self.pin[1],GPIO.HIGH)  
    GPIO.output(self.pin[2],GPIO.LOW)  
end

function Wheel:stop(  )
    -- print(self.pin[3].. " stop")
    GPIO.output(self.pin[1],GPIO.LOW)  
    GPIO.output(self.pin[2],GPIO.LOW) 
end

function Wheel:back(  )
    -- print(self.pin[1].." "..self.pin[2].." "..self.pin[3].. " back")
    GPIO.output(self.pin[2],GPIO.HIGH)  
    GPIO.output(self.pin[1],GPIO.LOW)  
end


local Car = {}

Car.__index = Car

function Car.new(  )
    local obj = {}
    obj.fl = Wheel.new({13,15,"fl"})
    obj.fr = Wheel.new({16,18,"fr"})

    obj.bl = Wheel.new({19,21,"bl"})
    obj.br = Wheel.new({22,24,"br"})

    obj.speed = 10
    obj.xspeed = 0   --right    +   left  - 
    obj.yspeed = 0   --forward  +   back  -

    obj.lastx = 0
    obj.lasty = 0


    return setmetatable(obj,Car)
end

function Car:left( ... )
    self.fl:back()
    self.fr:forward()

    self.bl:back()
    self.br:forward()
end

function Car:right( ... )
    self.fl:forward()
    self.fr:back()

    self.bl:forward()
    self.br:back()
end

function Car:forward( ... )
    self.fl:forward()
    self.fr:forward()

    self.bl:forward()
    self.br:forward()
end

function Car:back( ... )
    self.fl:back()
    self.fr:back()

    self.bl:back()  
    self.br:back()
end

function Car:stop( ... )
    self.fl:stop()
    self.fr:stop()

    self.bl:stop()
    self.br:stop()
end

function accept.dir(pid,dir )
    --xspeed    right    +   left  - 
    --yspeed    forward  +   back  -
    dir = tonumber(dir)
	if dir == 0 then                    --DEFAULT = 0, 
        wifiCar.xspeed = 0
        wifiCar.yspeed = 0
    elseif dir == 1 then                --D_UP = 1,
        wifiCar.xspeed = 0
        wifiCar.yspeed = wifiCar.speed
    elseif dir == 2 then                --D_DOWN = 2,
        wifiCar.xspeed = 0
        wifiCar.yspeed = -wifiCar.speed
    elseif dir == 3 then                --D_LEFT = 3,
        wifiCar.xspeed = -wifiCar.speed
        wifiCar.yspeed = 0
    elseif dir == 4 then                --D_RIGHT = 4,
        wifiCar.xspeed = wifiCar.speed
        wifiCar.yspeed = 0
    elseif dir == 5 then                --D_LEFT_UP = 5,
        wifiCar.xspeed = -wifiCar.speed
        wifiCar.yspeed = wifiCar.speed
    elseif dir == 6 then                --D_LEFT_DOWN = 6,
        wifiCar.xspeed = -wifiCar.speed
        wifiCar.yspeed = -wifiCar.speed
    elseif dir == 7 then                --D_RIGHT_UP = 7,
        wifiCar.xspeed = wifiCar.speed
        wifiCar.yspeed = wifiCar.speed
    elseif dir == 8 then                --D_RIGHT_DOWN =8
        wifiCar.xspeed = wifiCar.speed
        wifiCar.yspeed = -wifiCar.speed
    end
end

local function loop( ... )
    local time = skynet.time()

    if wifiCar.lastx ~= wifiCar.xspeed then
        if wifiCar.xspeed > 0 then
            wifiCar:right()
        elseif wifiCar.xspeed < 0 then
            wifiCar:left()
        elseif wifiCar.xspeed = 0 then
            wifiCar:stop()
        end
    end

    if wifiCar.lasty ~= wifiCar.yspeed then 
        if wifiCar.yspeed > 0 then
            wifiCar:forward()
        elseif wifiCar.yspeed < 0 then
            wifiCar:back()
        elseif wifiCar.yspeed = 0 then
            wifiCar:stop()
        end
    end


    local delayTime = (skynet.time()-time)*100      
    if delayTime > 100 then                         
        print("error loop time > 1s") 
        delayTime = 99
    end
    skynet.timeout(100-delayTime,loop)              
end

function init( ... )
	GPIO.cleanup()
	wifiCar = Car.new()
end
