# run this command to build SwiftyAnimTool.xcframework by yourself.
rm -rf animtool
git clone https://github.com/dinghaoz/animtool.git
cd animtool/xcode
xcodebuild -scheme SwiftyAnimTool -derivedDataPath derived_data -arch x86_64 -sdk iphonesimulator BUILD_LIBRARY_FOR_DISTRIBUTION=YES
xcodebuild -scheme SwiftyAnimTool -derivedDataPath derived_data -arch arm64 -sdk iphoneos BUILD_LIBRARY_FOR_DISTRIBUTION=YES
xcodebuild -create-xcframework -framework ./derived_data/Build/Products/Debug-iphonesimulator/SwiftyAnimTool.framework -framework ./derived_data/Build/Products/Debug-iphoneos/SwiftyAnimTool.framework -output ./derived_data/Build/Products/SwiftyAnimTool.xcframework
cd ../..
rm -rf SwiftyAnimTool/SwiftyAnimTool.xcframework 
cp -R animtool/xcode/derived_data/Build/Products/SwiftyAnimTool.xcframework SwiftyAnimTool/SwiftyAnimTool.xcframework
