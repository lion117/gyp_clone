rem @echo off

Rem и╬ЁЩ╬инд╪Ч
rd /s /Q Debug
rd /s /Q Release
rd /s /Q .vs
rd /s /Q libs
rd /s /Q obj
del *.pcm /f /s /q /a
del *.db /f /s /q /a
del uv.target.mk
del session.target.mk
del com.target.mk 
del http_parser.target.mk
del json_cpp.target.mk
del com_base.target.mk
del GypAndroid.mk 
del sdk.target.mk 
del *.sln /f /s /q /a
del *.vcxproj /f /s /q /a
del *.suo /f /s /q /a
del *.filters /f /s /q /a
del *.sdf /f /s /q /a
del *.aac /f /s /q /a
del *.user /f /s /q /a