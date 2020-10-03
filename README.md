# Nanoseconds

 ![GitHub Workflow Status](https://img.shields.io/github/workflow/status/dominicegginton/Nanoseconds/CI?label=CI) ![GitHub tag (latest SemVer pre-release)](https://img.shields.io/github/v/tag/dominicegginton/Nanoseconds?include_prereleases&label=release)

> 🕐 Simple high resolution timing for Swift

Nanoseconds is a wrapper around `DispatchTime.now()` providing you with timestamp with nanosecond accuracy.

## Key Features

- High resolution time stamp
- Built-in operators overloads
- Useful extensions for unit conversion
- Linux compatible

## Install

Install via the [**Swift Package Manger**](https://swift.org/package-manager/) by declaring **Nanoseconds** as a dependency in your  `Package.swift`:

``` swift
.package(url: "https://github.com/dominicegginton/Nanoseconds", from: "0.0.1")
```

Remember to add **Nanoseconds** to your target as a dependency.

## Usage

Creating high resolution timestamps with nanosecond accuracy is easy:

```  swift
let foo = Nanoseconds()
```

Use built-in operators overloads to calculate a [**TimeInterval**](https://developer.apple.com/documentation/foundation/timeinterval):

``` swift
let start = Nanoseconds()
sleep(1)
let end = Nanoseconds()
let duration = end - start
print(duration)  //=> 1004222113.0
```

To convert high resolutions [**TimeInterval**](https://developer.apple.com/documentation/foundation/timeinterval) objects from nanosecond accuracy use a provided extention:

``` swift
print(duration.milliseconds)  //=> 1004.22211
print(duration.seconds)  //=> 1.004222113
```
