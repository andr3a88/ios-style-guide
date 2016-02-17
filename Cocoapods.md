# Cocoapods

A list of useful pod and common issue with Cocoapods

##### Model - Database

* [Mantle](https://github.com/Mantle/Mantle) [Obj-C]
* [Realm](https://github.com/realm/realm-cocoa) [Obj-C, Swift, Java]
 
##### Networking
* [AFNetworking](https://github.com/realm/realm-cocoa) [Obj-C]
* [Alamofire](https://github.com/Alamofire/Alamofire) [Swift]
* [AlamofireImage](https://github.com/Alamofire/AlamofireImage) [Swift]

##### Menu - PagedView - TableView 
* [SWRevealViewController](https://github.com/John-Lluch/SWRevealViewController) [Obj-C]
* [RESideMenu](https://github.com/romaonthego/RESideMenu) [Obj-C]
* [PagingMenuController](https://github.com/kitasuke/PagingMenuController) [Swift]
* [DZNEmptyDataSet](https://github.com/dzenbot/DZNEmptyDataSet) [Obj-C]
* [SWTableViewCell](https://github.com/CEWendel/SWTableViewCell) [Obj-C]

##### Form & Charts 
* [XLForm](https://github.com/xmartlabs/XLForm) [Obj-C]
* [Eureka](https://github.com/xmartlabs/Eureka) (XLForm Swift Version) [Swift]
* [iOS-Charts](https://github.com/danielgindi/ios-charts) Port of MPAndroidChart [Swift]

### Podfile example

```
# Pod configuration
platform :ios, "8.0"
use_frameworks! # for Swift project

def import_pods
    
    #Core libraries
    pod 'CocoaLumberjack'
    pod 'AFNetworking', '~> 2.6.0'
    
    #Object serializer
    pod 'Mantle', '~> 2.0'
    
    #Mobile Database
    pod 'Realm', '~> 0.95'
    
    #Table view swipe cell and table view empty view
    pod 'SWTableViewCell', '~> 0.3'
    pod 'DZNEmptyDataSet'
    
    #Autolayout helper
    pod 'Masonry', '~> 0.6'
    
    #Detect Urls, #, @ and regex patterns on UILabel
    #pod 'ResponsiveLabel', '~> 1.0.3'
    pod 'TTTAttributedLabel', '~> 1.13'
    
    #Collection of NSFormatter subclasses for colors, time, location and phone number
    pod 'FormatterKit'
    
    #Pull to refresh for table view and collection view
    pod 'INSPullToRefresh', '~> 1.0'

   ...
    
    #For development pod
    #pod "LocalPod", :path => "development pod path"
    
end

target 'AppTarget' do
    
    import_pods
    
end

target 'AppTargetTests' do
    
    import_pods
    
end
```

### Create a Pod

```
pod lib create PodName
```

### Common Issue

#### Ovverrides FRAMEWORK_SEARCH_PATHS
```
 [!] The `AppTests [Debug]` target overrides the `FRAMEWORK_SEARCH_PATHS` build setting defined in `Pods/Target Support Files/Pods-SlhashTests/Pods-SlhashTests.debug.xcconfig'. This can lead to problems with the CocoaPods installation
    - Use the `$(inherited)` flag, or
    - Remove the build settings from the target.
```

**Solution:** a `“$(inherited)”` to _FRAMEWORK_SEARCH_PATHS_ (App target => Build Settings Tab => Search for “Framework Search Path”

#### undefined symbols for architecture arm64

After `pod update` undefined symbols for architecture arm64

**Solution**: Adding `$(OTHER_LDFLAGS)` to the App target under  _"Other Linker Flags"_ got me through this


