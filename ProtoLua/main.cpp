#include <iostream>

extern "C"
{
#include "lua.h"
#include "lualib.h"
#include "lauxlib.h"
};

LUA_API int luaopen_protobuf_c(lua_State *L);
int main()
{
    lua_State* L = luaL_newstate();
    luaL_openlibs(L);
    luaopen_protobuf_c(L);

    luaL_dofile(L, "test.lua");

    lua_close(L);
    getchar();
    return 0;
}