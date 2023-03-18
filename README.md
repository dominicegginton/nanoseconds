# Nanoseconds

Simple high resolution time stamps for swift developers, along with helpful tools to work with them.

## Key Features

- High resolution time stamp
- Built-in operators overloads
- Useful extensions for unit conversion
- Covert time intervals to a human readable strings
- Linux compatible

## Install

Install via the [**Swift Package Manger**](https://swift.org/package-manager/) by declaring **Nanoseconds** as a dependency in your  `Package.swift`:

``` swift
.package(url: "https://github.com/dominicegginton/Nanoseconds", from: "1.0.0")
```

Remember to add **Nanoseconds** to your target as a dependency.

## Getting Started

``` swift
import Foundation
import Nanoseconds

let start = Now()
sleep(1)
let end = Now()
let duration = end - start
print(duration)  //=> 1004222113.0
```

## Documentation

#### Now

```swift
/**
    A type that represents a point in time with nanosecond precision.
*/
public struct Now {
    /**
        Creates a new `Now` instance.
    */
    public init()

    /**
        Compares two `Now` instances.
        - Parameters:
            - lhs: The first `Now` instance.
            - rhs: The second `Now` instance.
        - Returns: `true` if the first `Now` instance is less than the second `Now` instance.
     */
    public static func < (lhs: Now, rhs: Now) -> Bool

    /**
        Compares two `Now` instances.
        - Parameters:
            - lhs: The first `Now` instance.
            - rhs: The second `Now` instance.
        - Returns: `true` if the first `Now` instance is less than or equal to the second `Now` instance.
     */
    public static func <= (lhs: Now, rhs: Now) -> Bool

    /**
        Compares two `Now` instances.
        - Parameters:
            - lhs: The first `Now` instance.
            - rhs: The second `Now` instance.
        - Returns: `true` if the first `Now` instance is greater than the second `Now` instance.
     */
    public static func > (lhs: Now, rhs: Now) -> Bool

    /**
        Compares two `Now` instances.
        - Parameters:
            - lhs: The first `Now` instance.
            - rhs: The second `Now` instance.
        - Returns: `true` if the first `Now` instance is greater than or equal to the second `Now` instance.
     */
    public static func >= (lhs: Now, rhs: Now) -> Bool

    /**
        Compares two `Now` instances.
        - Parameters:
            - lhs: The first `Now` instance.
            - rhs: The second `Now` instance.
        - Returns: `true` if the first `Now` instance is equal to the second `Now` instance.
     */
    public static func == (lhs: Now, rhs: Now) -> Bool

    /**
        Compares two `Now` instances.
        - Parameters:
            - lhs: The first `Now` instance.
            - rhs: The second `Now` instance.
        - Returns: `true` if the first `Now` instance is not equal to the second `Now` instance.
     */
    public static func != (lhs: Now, rhs: Now) -> Bool
    
    /**
        Subtract a `Now` instance from another `Now` instance.
        - Parameters:
            - lhs: The first `Now` instance.
            - rhs: The second `Now` instance.
        - Returns: The difference between the two `Now` instances.
     */
    public static func - (lhs: Now, rhs: Now) -> TimeInterval

    /**
        Add a `Now` instance to another `Now` instance.
        - Parameters:
            - lhs: The first `Now` instance.
            - rhs: The second `Now` instance.
        - Returns: The sum of the two `Now` instances.
     */
    public static func + (lhs: Now, rhs: Now) -> TimeInterval
}
```

#### TimeInterval

```swift
extension TimeInterval {
    /**
        Creates a new `TimeInterval` from the given number of nanoseconds.
        - Parameter nanoseconds: The number of nanoseconds.
     */
    public init (nanoseconds: Double)

    /**
        Creates a new `TimeInterval` from the given number of microseconds.
        - Parameter microseconds: The number of microseconds.
     */
    public init (microseconds: Double)

    /**
        Creates a new `TimeInterval` from the given number of milliseconds.
        - Parameter milliseconds: The number of milliseconds.
     */
    public init (milliseconds: Double)

    /**
        Creates a new `TimeInterval` from the given number of seconds.
        - Parameter seconds: The number of seconds.
     */
    public init (seconds: Double)

    /**
        Creates a new `TimeInterval` from the given number of minutes.
        - Parameter minutes: The number of minutes.
     */
    public init (minutes: Double)

    /**
        Creates a new `TimeInterval` from the given number of hours.
        - Parameter hours: The number of hours.
     */
    public init (hours: Double)

    /**
        The number of nanoseconds in the `TimeInterval`.
     */
    public var nanoseconds: Double

    /**
        The number of microseconds in the `TimeInterval`.
     */
    public var microseconds: Double

    /**
        The number of milliseconds in the `TimeInterval`.
     */
    public var milliseconds: Double

    /**
        The number of seconds in the `TimeInterval`.
     */
    public var seconds: Double

    /**
        The number of minutes in the `TimeInterval`.
     */
    public var minutes: Double

    /**
        The number of hours in the `TimeInterval`.
     */
    public var hours: Double

    /**
        Covert the `TimeInterval` to a string.
        The string will be in the format `[h]h [m]m [s]s`.
        Only the largest unit of time will be displayed.
     */
    public var timeString: String
}
```