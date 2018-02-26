set ANDROID_BUILD_TOP=""
gyp --depth=. sdk_android.gyp --f=android-make -D library="static_library" -D OS="android"
