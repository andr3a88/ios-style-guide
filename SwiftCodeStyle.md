# Swift Coding Style

My code convention for Swift inspired by [Sources](#sources)

## Table of Contents

* [Code Organization](#code-organization)
* [Spacing](#spacing)
* [Sources](#sources)

## Code Organization

Use `#pragma mark -` to categorize methods in functional groupings.

```swift
#pragma mark - Lifecycle

- (instancetype)init {}
- (void)viewDidLoad {}
- (void)viewWillAppear:(BOOL)animated {}
- (void)didReceiveMemoryWarning {}

#pragma mark - Custom Accessors

- (void)setCustomProperty:(id)value {}
- (id)customProperty {}

#pragma mark - Public

- (void)publicMethod {}

#pragma mark - Private

- (void)privateMethod {}

#pragma mark - Protocol conformance
#pragma mark - UITextFieldDelegate
#pragma mark - UITableViewDataSource
#pragma mark - UITableViewDelegate

#pragma mark - IBActions

- (IBAction)submitData:(id)sender {}
```

## Spacing

* Indent using tabs. Be sure to set this preference in Xcode.
* Method braces and other braces (`if`/`else`/`switch`/`while` etc.) always open on the same line as the statement but close on a new line.

**For example:**
```swift
if(user.isHappy) {
    // Do something
}
else {
    // Do something else
}
```
* There should be exactly one blank line between methods to aid in visual clarity and organization.
* Whitespace within methods should be used to separate functionality (though often this can indicate an opportunity to split the method into several, smaller methods). In methods with long or verbose names, a single line of whitespace may be used to provide visual separation before the method’s body.
* `@synthesize` and `@dynamic` should each be declared on new lines in the implementation.


## Sources
This guide has been built taking inspiration from the following sources:

#### Swift
* [GitHub](https://github.com/github/swift-style-guide)
