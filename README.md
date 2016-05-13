# JHHttpClient

[![CI Status](http://img.shields.io/travis/jianghuan/JHHttpClient.svg?style=flat)](https://travis-ci.org/jianghuan/JHHttpClient)
[![Version](https://img.shields.io/cocoapods/v/JHHttpClient.svg?style=flat)](http://cocoapods.org/pods/JHHttpClient)
[![License](https://img.shields.io/cocoapods/l/JHHttpClient.svg?style=flat)](http://cocoapods.org/pods/JHHttpClient)
[![Platform](https://img.shields.io/cocoapods/p/JHHttpClient.svg?style=flat)](http://cocoapods.org/pods/JHHttpClient)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

JHHttpClient is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "JHHttpClient"
```

## Instruction

Please add entry to your project's info.plist, App Transport Security Settings to enable http://

```swift
JHHttpClient.invoke(self.api.text!) { (response, error) in
    print(response)
    if let jsonResult = response as? Dictionary<String, AnyObject> {
        print(jsonResult)
        print("-----")
        print(jsonResult.description)
        let str = jsonResult.description
        self.response.text = str
    }
}
```

## Author

jianghuan, seraphjiang@gmail.com

## License

JHHttpClient is available under the MIT license. See the LICENSE file for more info.
