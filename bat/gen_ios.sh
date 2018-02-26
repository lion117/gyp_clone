rm -rf libs/ios
echo delete libs
rm -rf sdk.xcodeproj
gyp sdk.gyp --depth=. --f=xcode -D OS="ios"