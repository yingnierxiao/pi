#include "lua_cocos2dx_game_auto.hpp"
#include "Joystick.h"
#include "tolua_fix.h"
#include "LuaBasicConversions.h"



int lua_cocos2dx_game_Joystick_initWithJoystick(lua_State* tolua_S)
{
    int argc = 0;
    Joystick* cobj = nullptr;
    bool ok  = true;

#if COCOS2D_DEBUG >= 1
    tolua_Error tolua_err;
#endif


#if COCOS2D_DEBUG >= 1
    if (!tolua_isusertype(tolua_S,1,"Joystick",0,&tolua_err)) goto tolua_lerror;
#endif

    cobj = (Joystick*)tolua_tousertype(tolua_S,1,0);

#if COCOS2D_DEBUG >= 1
    if (!cobj) 
    {
        tolua_error(tolua_S,"invalid 'cobj' in function 'lua_cocos2dx_game_Joystick_initWithJoystick'", nullptr);
        return 0;
    }
#endif

    argc = lua_gettop(tolua_S)-1;
    if (argc == 2) 
    {
        std::string arg0;
        std::string arg1;

        ok &= luaval_to_std_string(tolua_S, 2,&arg0);

        ok &= luaval_to_std_string(tolua_S, 3,&arg1);
        if(!ok)
            return 0;
        cobj->initWithJoystick(arg0, arg1);
        return 0;
    }
    CCLOG("%s has wrong number of arguments: %d, was expecting %d \n", "initWithJoystick",argc, 2);
    return 0;

#if COCOS2D_DEBUG >= 1
    tolua_lerror:
    tolua_error(tolua_S,"#ferror in function 'lua_cocos2dx_game_Joystick_initWithJoystick'.",&tolua_err);
#endif

    return 0;
}
int lua_cocos2dx_game_Joystick_setAutoPosition(lua_State* tolua_S)
{
    int argc = 0;
    Joystick* cobj = nullptr;
    bool ok  = true;

#if COCOS2D_DEBUG >= 1
    tolua_Error tolua_err;
#endif


#if COCOS2D_DEBUG >= 1
    if (!tolua_isusertype(tolua_S,1,"Joystick",0,&tolua_err)) goto tolua_lerror;
#endif

    cobj = (Joystick*)tolua_tousertype(tolua_S,1,0);

#if COCOS2D_DEBUG >= 1
    if (!cobj) 
    {
        tolua_error(tolua_S,"invalid 'cobj' in function 'lua_cocos2dx_game_Joystick_setAutoPosition'", nullptr);
        return 0;
    }
#endif

    argc = lua_gettop(tolua_S)-1;
    if (argc == 1) 
    {
        bool arg0;

        ok &= luaval_to_boolean(tolua_S, 2,&arg0);
        if(!ok)
            return 0;
        cobj->setAutoPosition(arg0);
        return 0;
    }
    CCLOG("%s has wrong number of arguments: %d, was expecting %d \n", "setAutoPosition",argc, 1);
    return 0;

#if COCOS2D_DEBUG >= 1
    tolua_lerror:
    tolua_error(tolua_S,"#ferror in function 'lua_cocos2dx_game_Joystick_setAutoPosition'.",&tolua_err);
#endif

    return 0;
}
int lua_cocos2dx_game_Joystick_onDisable(lua_State* tolua_S)
{
    int argc = 0;
    Joystick* cobj = nullptr;
    bool ok  = true;

#if COCOS2D_DEBUG >= 1
    tolua_Error tolua_err;
#endif


#if COCOS2D_DEBUG >= 1
    if (!tolua_isusertype(tolua_S,1,"Joystick",0,&tolua_err)) goto tolua_lerror;
#endif

    cobj = (Joystick*)tolua_tousertype(tolua_S,1,0);

#if COCOS2D_DEBUG >= 1
    if (!cobj) 
    {
        tolua_error(tolua_S,"invalid 'cobj' in function 'lua_cocos2dx_game_Joystick_onDisable'", nullptr);
        return 0;
    }
#endif

    argc = lua_gettop(tolua_S)-1;
    if (argc == 0) 
    {
        if(!ok)
            return 0;
        cobj->onDisable();
        return 0;
    }
    CCLOG("%s has wrong number of arguments: %d, was expecting %d \n", "onDisable",argc, 0);
    return 0;

#if COCOS2D_DEBUG >= 1
    tolua_lerror:
    tolua_error(tolua_S,"#ferror in function 'lua_cocos2dx_game_Joystick_onDisable'.",&tolua_err);
#endif

    return 0;
}
int lua_cocos2dx_game_Joystick_onRun(lua_State* tolua_S)
{
    int argc = 0;
    Joystick* cobj = nullptr;
    bool ok  = true;

#if COCOS2D_DEBUG >= 1
    tolua_Error tolua_err;
#endif


#if COCOS2D_DEBUG >= 1
    if (!tolua_isusertype(tolua_S,1,"Joystick",0,&tolua_err)) goto tolua_lerror;
#endif

    cobj = (Joystick*)tolua_tousertype(tolua_S,1,0);

#if COCOS2D_DEBUG >= 1
    if (!cobj) 
    {
        tolua_error(tolua_S,"invalid 'cobj' in function 'lua_cocos2dx_game_Joystick_onRun'", nullptr);
        return 0;
    }
#endif

    argc = lua_gettop(tolua_S)-1;
    if (argc == 0) 
    {
        if(!ok)
            return 0;
        cobj->onRun();
        return 0;
    }
    CCLOG("%s has wrong number of arguments: %d, was expecting %d \n", "onRun",argc, 0);
    return 0;

#if COCOS2D_DEBUG >= 1
    tolua_lerror:
    tolua_error(tolua_S,"#ferror in function 'lua_cocos2dx_game_Joystick_onRun'.",&tolua_err);
#endif

    return 0;
}
int lua_cocos2dx_game_Joystick_setVisibleJoystick(lua_State* tolua_S)
{
    int argc = 0;
    Joystick* cobj = nullptr;
    bool ok  = true;

#if COCOS2D_DEBUG >= 1
    tolua_Error tolua_err;
#endif


#if COCOS2D_DEBUG >= 1
    if (!tolua_isusertype(tolua_S,1,"Joystick",0,&tolua_err)) goto tolua_lerror;
#endif

    cobj = (Joystick*)tolua_tousertype(tolua_S,1,0);

#if COCOS2D_DEBUG >= 1
    if (!cobj) 
    {
        tolua_error(tolua_S,"invalid 'cobj' in function 'lua_cocos2dx_game_Joystick_setVisibleJoystick'", nullptr);
        return 0;
    }
#endif

    argc = lua_gettop(tolua_S)-1;
    if (argc == 1) 
    {
        bool arg0;

        ok &= luaval_to_boolean(tolua_S, 2,&arg0);
        if(!ok)
            return 0;
        cobj->setVisibleJoystick(arg0);
        return 0;
    }
    CCLOG("%s has wrong number of arguments: %d, was expecting %d \n", "setVisibleJoystick",argc, 1);
    return 0;

#if COCOS2D_DEBUG >= 1
    tolua_lerror:
    tolua_error(tolua_S,"#ferror in function 'lua_cocos2dx_game_Joystick_setVisibleJoystick'.",&tolua_err);
#endif

    return 0;
}
int lua_cocos2dx_game_Joystick_setFailRadius(lua_State* tolua_S)
{
    int argc = 0;
    Joystick* cobj = nullptr;
    bool ok  = true;

#if COCOS2D_DEBUG >= 1
    tolua_Error tolua_err;
#endif


#if COCOS2D_DEBUG >= 1
    if (!tolua_isusertype(tolua_S,1,"Joystick",0,&tolua_err)) goto tolua_lerror;
#endif

    cobj = (Joystick*)tolua_tousertype(tolua_S,1,0);

#if COCOS2D_DEBUG >= 1
    if (!cobj) 
    {
        tolua_error(tolua_S,"invalid 'cobj' in function 'lua_cocos2dx_game_Joystick_setFailRadius'", nullptr);
        return 0;
    }
#endif

    argc = lua_gettop(tolua_S)-1;
    if (argc == 1) 
    {
        double arg0;

        ok &= luaval_to_number(tolua_S, 2,&arg0);
        if(!ok)
            return 0;
        cobj->setFailRadius(arg0);
        return 0;
    }
    CCLOG("%s has wrong number of arguments: %d, was expecting %d \n", "setFailRadius",argc, 1);
    return 0;

#if COCOS2D_DEBUG >= 1
    tolua_lerror:
    tolua_error(tolua_S,"#ferror in function 'lua_cocos2dx_game_Joystick_setFailRadius'.",&tolua_err);
#endif

    return 0;
}
int lua_cocos2dx_game_Joystick_addEventListener(lua_State* tolua_S)
{
    int argc = 0;
    Joystick* cobj = nullptr;
    bool ok  = true;

#if COCOS2D_DEBUG >= 1
    tolua_Error tolua_err;
#endif


#if COCOS2D_DEBUG >= 1
    if (!tolua_isusertype(tolua_S,1,"Joystick",0,&tolua_err)) goto tolua_lerror;
#endif

    cobj = (Joystick*)tolua_tousertype(tolua_S,1,0);

#if COCOS2D_DEBUG >= 1
    if (!cobj) 
    {
        tolua_error(tolua_S,"invalid 'cobj' in function 'lua_cocos2dx_game_Joystick_addEventListener'", nullptr);
        return 0;
    }
#endif

    argc = lua_gettop(tolua_S)-1;
    if (argc == 1) 
    {
        int arg0;

        arg0 = (  toluafix_ref_function(tolua_S,2,0));
        if(!ok)
            return 0;
        cobj->addEventListener(arg0);
        return 0;
    }
    CCLOG("%s has wrong number of arguments: %d, was expecting %d \n", "addEventListener",argc, 1);
    return 0;

#if COCOS2D_DEBUG >= 1
    tolua_lerror:
    tolua_error(tolua_S,"#ferror in function 'lua_cocos2dx_game_Joystick_addEventListener'.",&tolua_err);
#endif

    return 0;
}
int lua_cocos2dx_game_Joystick_setDieRadius(lua_State* tolua_S)
{
    int argc = 0;
    Joystick* cobj = nullptr;
    bool ok  = true;

#if COCOS2D_DEBUG >= 1
    tolua_Error tolua_err;
#endif


#if COCOS2D_DEBUG >= 1
    if (!tolua_isusertype(tolua_S,1,"Joystick",0,&tolua_err)) goto tolua_lerror;
#endif

    cobj = (Joystick*)tolua_tousertype(tolua_S,1,0);

#if COCOS2D_DEBUG >= 1
    if (!cobj) 
    {
        tolua_error(tolua_S,"invalid 'cobj' in function 'lua_cocos2dx_game_Joystick_setDieRadius'", nullptr);
        return 0;
    }
#endif

    argc = lua_gettop(tolua_S)-1;
    if (argc == 1) 
    {
        double arg0;

        ok &= luaval_to_number(tolua_S, 2,&arg0);
        if(!ok)
            return 0;
        cobj->setDieRadius(arg0);
        return 0;
    }
    CCLOG("%s has wrong number of arguments: %d, was expecting %d \n", "setDieRadius",argc, 1);
    return 0;

#if COCOS2D_DEBUG >= 1
    tolua_lerror:
    tolua_error(tolua_S,"#ferror in function 'lua_cocos2dx_game_Joystick_setDieRadius'.",&tolua_err);
#endif

    return 0;
}
int lua_cocos2dx_game_Joystick_create(lua_State* tolua_S)
{
    int argc = 0;
    bool ok  = true;

#if COCOS2D_DEBUG >= 1
    tolua_Error tolua_err;
#endif

#if COCOS2D_DEBUG >= 1
    if (!tolua_isusertable(tolua_S,1,"Joystick",0,&tolua_err)) goto tolua_lerror;
#endif

    argc = lua_gettop(tolua_S) - 1;

    if (argc == 2)
    {
        std::string arg0;
        std::string arg1;
        ok &= luaval_to_std_string(tolua_S, 2,&arg0);
        ok &= luaval_to_std_string(tolua_S, 3,&arg1);
        if(!ok)
            return 0;
        Joystick* ret = Joystick::create(arg0, arg1);
        object_to_luaval<Joystick>(tolua_S, "Joystick",(Joystick*)ret);
        return 1;
    }
    CCLOG("%s has wrong number of arguments: %d, was expecting %d\n ", "create",argc, 2);
    return 0;
#if COCOS2D_DEBUG >= 1
    tolua_lerror:
    tolua_error(tolua_S,"#ferror in function 'lua_cocos2dx_game_Joystick_create'.",&tolua_err);
#endif
    return 0;
}
static int lua_cocos2dx_game_Joystick_finalize(lua_State* tolua_S)
{
    printf("luabindings: finalizing LUA object (Joystick)");
    return 0;
}

int lua_register_cocos2dx_game_Joystick(lua_State* tolua_S)
{
    tolua_usertype(tolua_S,"Joystick");
    tolua_cclass(tolua_S,"Joystick","Joystick","cc.Layer",nullptr);

    tolua_beginmodule(tolua_S,"Joystick");
        tolua_function(tolua_S,"initWithJoystick",lua_cocos2dx_game_Joystick_initWithJoystick);
        tolua_function(tolua_S,"setAutoPosition",lua_cocos2dx_game_Joystick_setAutoPosition);
        tolua_function(tolua_S,"onDisable",lua_cocos2dx_game_Joystick_onDisable);
        tolua_function(tolua_S,"onRun",lua_cocos2dx_game_Joystick_onRun);
        tolua_function(tolua_S,"setVisibleJoystick",lua_cocos2dx_game_Joystick_setVisibleJoystick);
        tolua_function(tolua_S,"setFailRadius",lua_cocos2dx_game_Joystick_setFailRadius);
        tolua_function(tolua_S,"addEventListener",lua_cocos2dx_game_Joystick_addEventListener);
        tolua_function(tolua_S,"setDieRadius",lua_cocos2dx_game_Joystick_setDieRadius);
        tolua_function(tolua_S,"create", lua_cocos2dx_game_Joystick_create);
    tolua_endmodule(tolua_S);
    std::string typeName = typeid(Joystick).name();
    g_luaType[typeName] = "Joystick";
    g_typeCast["Joystick"] = "Joystick";
    return 1;
}
TOLUA_API int register_all_cocos2dx_game(lua_State* tolua_S)
{
	tolua_open(tolua_S);
	
	tolua_module(tolua_S,nullptr,0);
	tolua_beginmodule(tolua_S,nullptr);

	lua_register_cocos2dx_game_Joystick(tolua_S);

	tolua_endmodule(tolua_S);
	return 1;
}

