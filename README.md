iRot47    [![Version](http://cocoapod-badges.herokuapp.com/v/iRot47/badge.png)](http://cocoadocs.org/docsets/iRot47)
======

ROT47 is a derivative of ROT13 which, in addition to scrambling the basic letters, also treats numbers and common symbols. Instead of using the sequence A-Z as the alphabet, ROT47 uses a larger set of characters from the common character encoding known as ASCII. 

Specifically, all 7-bit printable characters, excluding space, from decimal 33 '!' through 126 '~' are rotated by 47 positions, without special preserving of case. 

The use of a larger alphabet is intended to produce a more thorough obfuscation than that of ROT13, but because ROT47 introduces numbers and symbols into the mix without discrimination, it's much more obvious that the text has been enciphered.

## Installation

### CocoaPods

The recommended approach for installating `iRot47` is via the [CocoaPods](http://cocoapods.org/) package manager, as it provides flexible dependency management and dead simple installation.


Install CocoaPods if not already available:

``` bash
$ [sudo] gem install cocoapods
$ pod setup
```

Change to the directory of your Xcode project:

``` bash
$ cd /path/to/MyProject
$ touch Podfile
$ edit Podfile
```

Edit your Podfile and add iRot47:

``` bash
platform :ios, '6.0'
pod 'iRot47', '~> 1.0'
```

Install into your Xcode project:

``` bash
$ pod install
```

Open your project in Xcode from the .xcworkspace file (not the usual project file)

``` bash
$ open MyProject.xcworkspace
```

### Manual Install

All you need to do is drop `iRot47` files into your project, and add `#import "NSString+r47.h"` to the top of classes that will use it.
