rem @echo off

Rem É¾³ý¾ÉÎÄ¼þ
rd /s /Q Debug
rd /s /Q Release
rd /s /Q .vs
rd /s /Q libs
rd /s /Q obj
del *.pcm /f /s /q /a
del *.db /f /s /q /a
del uv.target.mk
del session.target.mk
del uv.target.mk 
del http_parser.target.mk
del GypAndroid.mk 
del sdk.target.mk 
del *.sln /f /s /q /a
del *.vcxproj /f /s /q /a
del *.suo /f /s /q /a
del *.filters /f /s /q /a

rem ±àÒë window ¿â
call gen_windows.bat
call build_windows.bat
call build_windows.bat

rem  ±àÒë android ¿â
call gen_android.bat
rem set ANDROID_BUILD_TOP=""
rem gyp --depth=. com_android.gyp --f=android-make -D library="static_library" -D OS="android"
	
rem call build_android.bat
ndk-build NDK_PROJECT_PATH=. APP_BUILD_SCRIPT=./GypAndroid.mk

@pause









