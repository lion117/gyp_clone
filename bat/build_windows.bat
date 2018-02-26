@call "c:\Program Files (x86)\Microsoft Visual Studio 12.0\VC\vcvarsall.bat"
MSBuild "sdk.sln" /t:Build /p:Configuration=Debug /maxcpucount:4
MSBuild "sdk.sln" /t:Build /p:Configuration=Release /maxcpucount:4


