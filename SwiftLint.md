# SwiftLint

### Installation

```
brew install swiftlint
```

### Usage
Integrate SwiftLint into an Xcode scheme to get warnings and errors displayed in the IDE. Just add a new "Run Script Phase" with:

```
if which swiftlint >/dev/null; then
  swiftlint
else
  echo "warning: SwiftLint not installed, download from https://github.com/realm/SwiftLint"
fi
```

### Commands

```
$ swiftlint help
Available commands:

   autocorrect  Automatically correct warnings and errors
   help         Display general or command-specific help
   lint         Print lint warnings and errors for the Swift files in the current directory (default command)
   rules        Display the list of rules and their identifiers
   version      Display the current version of SwiftLint

```

### Repository
* [SwiftLint Github](https://github.com/realm/SwiftLint) 




