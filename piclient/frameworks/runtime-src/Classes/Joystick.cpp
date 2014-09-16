//
//  Joystick.cpp
//  piclient
//
//  Created by zj on 14-9-16.
//
//

#include "Joystick.h"
#include "CCLuaStack.h"
#include "CCLuaEngine.h"

Joystick* Joystick::create(std::string chassisPath,std::string dotPath)
{
    auto joystick = new Joystick();
    joystick->initWithJoystick(chassisPath,dotPath);
    return joystick;
}

void Joystick::initWithJoystick(std::string chassisPath,std::string dotPath)
{
    _chassis = Sprite::create(chassisPath);
    this->addChild(_chassis,0);
    _touchDot = Sprite::create(dotPath);
    this->addChild(_touchDot,1);
    
    isDieRadius = false;
    isAutoPosition = false;
    isMoveOut = false;
    _direction = DEFAULT;
    _eventCallback = 0 ;
}

void Joystick::onRun()
{
    listener = EventListenerTouchOneByOne::create();
    listener->setSwallowTouches(false);
    listener->onTouchBegan = CC_CALLBACK_2(Joystick::onTouchBegan,this);
    listener->onTouchMoved = CC_CALLBACK_2(Joystick::onTouchMoved,this);
    listener->onTouchEnded = CC_CALLBACK_2(Joystick::onTouchEnded,this);
    this->_eventDispatcher->addEventListenerWithSceneGraphPriority(listener,this);
}

bool Joystick::onTouchBegan(Touch* touch,Event* event)
{
    Vec2 locationInNode = this->convertToNodeSpace(touch->getLocation());
    if( isAutoPosition )
    {
        this->setPosition(touch->getLocation());
        return true;
    }
    if( isAutoPosition==false && isDieRadius )
    {
        if( locationInNode.getLength() > _radius )
        {
            return false;
        }
    }
    _touchDot->setPosition(locationInNode);
    if( locationInNode.getLength() > _failradius )
    {
        changeAngle(locationInNode);
    }
    return true;
}
void Joystick::onTouchMoved(Touch* touch,Event* event)
{
    Vec2 locationInNode = this->convertToNodeSpace(touch->getLocation());
    if( isDieRadius )
    {
        if( locationInNode.getLength() < _radius )
        {
            if( isMoveOut )
            {
                _touchDot->setPosition(locationInNode);
                isMoveOut = false;
            }
            setTouchDotPosition(locationInNode,_touchDot->getPosition() + touch->getDelta());
            return;
        }
    }
    else
    {
        setTouchDotPosition(locationInNode,_touchDot->getPosition() + touch->getDelta());
        return;
    }
    
    isMoveOut = true;
    _touchDot->setPosition(0,0);
    resetState();
}
void Joystick::onTouchEnded(Touch* touch,Event* event)
{
    _touchDot->setPosition(0,0);
    isMoveOut = false;
    resetState();
}

void Joystick::setTouchDotPosition(Vec2 vec1,Vec2 vec2)
{
    _touchDot->setPosition(vec2);
    if( _failradius>0 )
    {
        if( vec1.getLength() < _failradius )
        {
            resetState();
            return;
        }
    }
    changeAngle(vec1);
}

void Joystick::setDieRadius(float radius)
{
    _radius = radius;
    isDieRadius = true;
}

void Joystick::setAutoPosition(bool value)
{
    isAutoPosition = value;
}

void Joystick::setFailRadius(float radius)
{
    _failradius = radius;
}

void Joystick::onDisable()
{
    this->_eventDispatcher->removeEventListener(listener);
    isDieRadius = false;
    isAutoPosition = false;
    isMoveOut = false;
}

void Joystick::changeAngle( Vec2 position )
{
    auto angle = CC_RADIANS_TO_DEGREES(position.getAngle());
    if(angle > -22.5 && angle < 22.5)
    {
        _direction=D_RIGHT;
    }
    else if(angle > 22.5 && angle < 67.5)
    {
        _direction=D_RIGHT_UP;
    }
    else if(angle > 67.5 && angle < 112.5)
    {
        _direction=D_UP;
    }
    else if(angle > 112.5 && angle < 157.5)
    {
        _direction=D_LEFT_UP;
    }
    else if((angle > 157.5 && angle < 180)||(angle < -157.5 && angle > -180))
    {
        _direction=D_LEFT;
    }
    else if(angle < -112.5 && angle > -157.5)
    {
        _direction=D_LEFT_DOWN;
    }
    else if(angle < -67.5 && angle > -112.5)
    {
        _direction=D_DOWN;
    }
    else if(angle < -22.5 && angle > -67.5)
    {
        _direction=D_RIGHT_DOWN;
    }
    callDirectionFun();
}

void Joystick::addEventListener(int callback)
{
    _eventCallback = callback;
}

void Joystick::callDirectionFun()
{
    if( _eventCallback >0)
    {
         LuaStack* stack = LuaEngine::getInstance()->getLuaStack();
        stack->pushInt(_direction);
        stack->executeFunctionByHandler(_eventCallback,  1);
        stack->clean();
    }
}

void Joystick::resetState()
{
    if(_direction != DEFAULT)
    {
        _direction = DEFAULT;
        callDirectionFun();
    }
}

void Joystick::setVisibleJoystick(bool visible)
{
    _chassis->setVisible(visible);
    _touchDot->setVisible(visible);
}