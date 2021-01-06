<h1 align='center'>Nanoseconds</h1>
<h4 align='center'>Simple high resolution timing for Swift</h4>
<div align='center'>
  <img src='https://img.shields.io/github/workflow/status/dominicegginton/Nanoseconds/CI?label=CI'>
  <img src='https://img.shields.io/github/v/tag/dominicegginton/Nanoseconds?include_prereleases&label=release'>
  <img src="https://img.shields.io/github/license/dominicegginton/Nanoseconds">
</div>

## Key Features

- High resolution time stamp
- Built-in operators overloads
- Useful extensions for unit conversion
- Linux compatible

## Install

Install via the [**Swift Package Manger**](https://swift.org/package-manager/) by declaring **Nanoseconds** as a dependency in your  `Package.swift`:

``` swift
.package(url: "https://github.com/dominicegginton/Nanoseconds", from: "0.0.2")
```

Remember to add **Nanoseconds** to your target as a dependency.

## Documentation

### Creating Timestamps
Creating high resolution timestamps with nanosecond accuracy is easy, simply create a instant of `Nanoseconds` struct

```  swift
let foo = Nanoseconds()
```

### Creating Time Intervals

Use the built-in operators overloads to easily calculate and initialize [**TimeInterval**](https://developer.apple.com/documentation/foundation/timeinterval):

``` swift
let start = Nanoseconds()
sleep(1)
let end = Nanoseconds()
let duration = end - start
print(duration)  //=> 1004222113.0
```

### Convert Time Intervals from Nanoseconds to Other Units 
To convert [**TimeInterval**](https://developer.apple.com/documentation/foundation/timeinterval) objects from nanosecond to a different unit simply use a provided extension:

- nanoseconds
- microseconds
- milliseconds
- seconds
- minutes
- hours

``` swift
print(duration.milliseconds)  //=> 1004.22211
print(duration.seconds)  //=> 1.004222113
```
