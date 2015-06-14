# GoldenRetriever

[![CI Status](http://img.shields.io/travis/zenangst/GoldenRetriever.svg?style=flat)](https://travis-ci.org/zenangst/GoldenRetriever)
[![Version](https://img.shields.io/cocoapods/v/GoldenRetriever.svg?style=flat)](http://cocoadocs.org/docsets/GoldenRetriever)
[![License](https://img.shields.io/cocoapods/l/GoldenRetriever.svg?style=flat)](http://cocoadocs.org/docsets/GoldenRetriever)
[![Platform](https://img.shields.io/cocoapods/p/GoldenRetriever.svg?style=flat)](http://cocoadocs.org/docsets/GoldenRetriever)

## Usage

```swift
let fido = GoldenRetriever()

fido.fetch("https://avatars2.githubusercontent.com/u/57446?v=3&s=460") { data, error in
  // give 🐶 a 🍬
}
```

## Installation

**GoldenRetriever** is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'GoldenRetriever'
```

## Author

Christoffer Winterkvist, chris@zenangst.com

## License

**GoldenRetriever** is available under the MIT license. See the LICENSE file for more info.
