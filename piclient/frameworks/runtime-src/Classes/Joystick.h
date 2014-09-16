//
//  Joystick.h
//  piclient
//
//  Created by zj on 14-9-16.
//  copy by  http://www.cnblogs.com/Richard-Core/p/3915898.html
//

#ifndef __Joystick__
#define __Joystick__

#include "cocos2d.h"
USING_NS_CC;

enum JoystickEnum
{
    DEFAULT,
    D_UP,
    D_DOWN,
    D_LEFT,
    D_RIGHT,
    D_LEFT_UP,
    D_LEFT_DOWN,
    D_RIGHT_UP,
    D_RIGHT_DOWN
};

class Joystick : public Layer
{
public:
    /** 啟動搖杆器 */
    void onRun();
    /** 清除數據 */
    void onDisable();
    /** 設置死亡半徑，即超出半徑將摇杆器失效 */
    void setDieRadius(float radius);
    /** 設置無效區域半徑（如果在無效區域內，將重置） */
    void setFailRadius(float radius);
    /** 是否顯示底盤和觸點 */
    void setVisibleJoystick(bool visible);
    /** 是否自由變換搖杆器的位置，即在屏幕上每一次按下鼠標時的座標將是搖杆器的座標，移動時將不改變搖杆器座標，直到下次按下鼠標 */
    void setAutoPosition(bool value);
    /** 回調函數指針 */
    typedef std::function<void(Ref*,JoystickEnum)> ccJoystickCallback;
    /** 靜態創建函數（需要傳入底盤和觸點圖片路徑） */
    static Joystick* create(std::string chassisPath,std::string dotPath);
    /** 初始化搖杆器（需要傳入底盤和觸點圖片路徑） */
    void initWithJoystick(std::string chassisPath,std::string dotPath);
    
    void addEventListener(int callback);
    
    
protected:
    int _eventCallback;
    
    /** 有效區域半徑 */
    float _radius;
    /** 失效區域半徑 */
    float _failradius;
    /** 是否移出有效區域 */
    bool isMoveOut;
    /** 是否存在有效區域半徑 */
    bool isDieRadius;
    /** 是否自由變換搖杆器座標 */
    bool isAutoPosition;
    /** 方向 */
    JoystickEnum _direction;
    /** 底盤 */
    Sprite* _chassis;
    /** 觸點 */
    Sprite* _touchDot;
    EventListenerTouchOneByOne* listener;
    
    bool onTouchBegan(Touch* touch,Event* event);
    void onTouchMoved(Touch* touch,Event* event);
    void onTouchEnded(Touch* touch,Event* event);
    /**
     1、設置觸點，并判斷是否在無效區域內（如果在無效區域內，將重置）
     2、發送角度變化（如果不在無效區域內） */
    void setTouchDotPosition(Vec2 vec1,Vec2 vec2);
    /**
     1、計算搖杆器八方向
     2、發送角度變化，回調弧度變化函數 */
    void changeAngle( Vec2 position );
    /** 回調註冊的監聽函數 */
    void callDirectionFun();
    /** 重置（當弧度不是 DEFAULT時才重置） */
    void resetState();
    
};

#endif