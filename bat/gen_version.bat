rem @echo off

cd version
rd /s /Q new
cd ..

rem 创建发布文件夹
cd version
md new
cd new
md interface
md pc
md android
md iOS
md demo
cd pc
md Debug
md Release
cd ..\..\..

rem 复制文档
copy readme\history.txt version\new
copy readme\API_APP.md version\new
copy readme\API_PC.md version\new

rem 复制接口
copy interface\int_type.h version\new\interface
copy interface\session_interface.h version\new\interface

rem 复制 window 库
copy Debug\session.dll version\new\pc\Debug
copy Debug\session.lib version\new\pc\Debug
copy Debug\session.pdb version\new\pc\Debug
copy Release\session.dll version\new\pc\Release
copy Release\session.lib version\new\pc\Release
copy Release\session.pdb version\new\pc\Release

rem 复制 window demo
copy test\audioDev\session_app_test.h version\new\demo
copy test\audioDev\session_app_test.cpp version\new\demo
copy test\audioDev\session_pc_test.h version\new\demo
copy test\audioDev\session_pc_test.cpp version\new\demo
copy Debug\session.dll version\new\demo
copy Debug\session_app_test.exe version\new\demo
copy Debug\session_pc_test.exe version\new\demo

rem 复制 android 库
xcopy libs version\new\android /s /y
