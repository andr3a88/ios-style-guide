# Cocoapods

A list of useful pod and common issue with Cocoapods

## Pod list

* [DZNEmptyDataSet](https://github.com/dzenbot/DZNEmptyDataSet) [Obj-C]
* [Mantle](https://github.com/Mantle/Mantle) [Obj-C]
* [Realm](https://github.com/realm/realm-cocoa) [Obj-C, Swift]

## Issue

#### Ovverrides FRAMEWORK_SEARCH_PATHS
```
 [!] The `AppTests [Debug]` target overrides the `FRAMEWORK_SEARCH_PATHS` build setting defined in `Pods/Target Support Files/Pods-SlhashTests/Pods-SlhashTests.debug.xcconfig'. This can lead to problems with the CocoaPods installation
    - Use the `$(inherited)` flag, or
    - Remove the build settings from the target.
```

**Solution:** a _“$(inherited)”_ to _FRAMEWORK_SEARCH_PATHS_ (App target => Build Settings Tab => Search for “Framework Search Path”
