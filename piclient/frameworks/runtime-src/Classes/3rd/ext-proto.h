//
//  ext-proto.h
//  game
//
//  Created by zj on 14-5-21.
//
//

#ifndef game_ext_proto_h
#define game_ext_proto_h

#if __cplusplus
extern "C" {
#endif
    
#include "lauxlib.h"
    
    int luaopen_protopack(lua_State *L);
    
#if __cplusplus
}
#endif

#endif
