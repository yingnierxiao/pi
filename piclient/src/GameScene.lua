require "Cocos2d"
require "Cocos2dConstants"
local jsokect = require "JSocket"
local proto = require "protopack"


local GameScene = class("GameScene",function()
    return cc.Scene:create()
end)

function GameScene.create()
    local scene = GameScene.new()
    return scene
end


function GameScene:ctor()
    local visibleSize = cc.Director:getInstance():getVisibleSize()
    local origin = cc.Director:getInstance():getVisibleOrigin()
    
    
    self.socket = jsokect.new()
    
   
    local jc = Joystick:create("pan.png","dot.png")
    local lb = cc.Label:create();
    lb:setSystemFontSize(25)
    self:addChild(lb)
    lb:setString("no connect")
    
    self:addChild(jc)
    jc:setPosition(cc.p(250,250))
    jc:setDieRadius(visibleSize.width/2)
    jc:setAutoPosition(false)
    jc:onRun()
    jc:addEventListener(function (dir) 
        if self.socket.isConnected == true  then 
            self.socket:send(proto.pack(1,dir..""))
        else
            lb:setString("not connect")
        end
    end )
    
    local jc2 = Joystick:create("pan.png","dot.png")
    self:addChild(jc2)
    jc2:setPosition(cc.p(visibleSize.width-250,250))
    jc2:setDieRadius(visibleSize.width/2)
    jc2:setAutoPosition(false)
    jc2:onRun()
    jc2:addEventListener(function (dir)
        if self.socket.isConnected == true  then 
            self.socket:send(proto.pack(2,dir..""))
        else
            lb:setString("not connect")
        end
        
    end )
    
    
   
    
    local editBoxSize = cc.size(visibleSize.width *0.25, 60)
    local EditName = cc.EditBox:create(editBoxSize, cc.Scale9Sprite:create("green_edit.png"))
    EditName:setPosition(cc.p(visibleSize.width/2,visibleSize.height-EditName:getContentSize().height))
    self:addChild(EditName);
    EditName:setText("192.168.1.11")
    
    
    lb:setPosition(visibleSize.width/2,visibleSize.height-EditName:getContentSize().height*2);


    local pBackgroundButton            = cc.Scale9Sprite:create("button.png")
    local pBackgroundHighlightedButton = cc.Scale9Sprite:create("buttonHighlighted.png")

    local pTitleButtonLabel = cc.Label:createWithSystemFont("connect", "Marker Felt", 30)
    pTitleButtonLabel:setColor(cc.c3b(159, 168, 176))

    local pControlButton = cc.ControlButton:create(pTitleButtonLabel, pBackgroundButton)
    pControlButton:setPosition(cc.p(visibleSize.width/2+EditName:getContentSize().width/2 +80,visibleSize.height-EditName:getContentSize().height))
    self:addChild(pControlButton)

    pControlButton:registerControlEventHandler(function ()   
        if string.utf8len(EditName:getText())>5  then 
            self.socket:connect(EditName:getText(),8888)
        end 
    end ,cc.CONTROL_EVENTTYPE_TOUCH_DOWN )

    local had = function (event)
        lb:setString(event.name)
    end

    --init socket event
    self.socket:addEventListener("SOCKET_TCP_DATA",had)
    self.socket:addEventListener("SOCKET_TCP_CLOSE",had)
    self.socket:addEventListener("SOCKET_TCP_CONNECTED",had)
    self.socket:addEventListener("SOCKET_TCP_CONNECT_FAILURE",had)
end

return GameScene
