@echo off
color 1e
title 垃圾清理工具
echo 正在清理C++垃圾文件,请稍等......
del /f/s/q/a *.obj
del /f/s/q/a *.ncb
del /f/s/q/a *.suo
del /f/s/q/a *.sbr
del /f/s/q/a *.pdb
del /f/s/q/a *.idb
del /f/s/q/a *.ilk
del /f/s/q/a *.pch
del /f/s/q/a *.old
del /f/s/q/a *.user
rd /s/q _UpgradeReport_Files
echo 清除完毕！
echo. & pause 