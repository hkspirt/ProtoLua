使用云风pbc解析Protocol Buffers绑定lua
https://github.com/cloudwu/pbc

修改
1、由于是vs2008创建的工程，stdint.h是从其他地方copy过来的
2、.c后缀全部改为.cpp，解决c变量定义顺序问题

步骤
1、编写proto,运行build.bat，将proto文件导成pb
2、test.lua
3、编译工程并运行