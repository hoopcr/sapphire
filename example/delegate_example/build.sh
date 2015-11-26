#!/bin/sh

rm -rf Sample.app
mkdir -p Sample.app/Contents/MacOS
mkdir -p Sample.app/Contents/Resources/Base.lproj

#ibtool --errors --warnings --notices --output-format human-readable-text --compile Sample.app/Contents/Resources/Base.lproj/Application.nib Application.xib
ibtool --errors --warnings --notices --output-format human-readable-text --compile Sample.app/Contents/Resources/Base.lproj/Main.storyboardc Main.storyboard
cp Info.plist Sample.app/Contents/
cp assets/* Sample.app/Contents/Resources

crystal build app.cr -o Sample.app/Contents/MacOS/app
