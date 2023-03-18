import Foundation

/**
    A type that represents a point in time with nanosecond precision.
*/
public struct Now {
    /**
        The raw value of the time.
    */
    var rawValue: UInt64

    /**
        Creates a new `Now` instance.
    */
    public init() {
        self.rawValue = DispatchTime.now().rawValue
    }
}


extension Now: Comparable {
    /**
        Compares two `Now` instances.
        - Parameters:
            - lhs: The first `Now` instance.
            - rhs: The second `Now` instance.
        - Returns: `true` if the first `Now` instance is less than the second `Now` instance.
     */
    public static func < (lhs: Now, rhs: Now) -> Bool {
        lhs.rawValue < rhs.rawValue
    }

    /**
        Compares two `Now` instances.
        - Parameters:
            - lhs: The first `Now` instance.
            - rhs: The second `Now` instance.
        - Returns: `true` if the first `Now` instance is less than or equal to the second `Now` instance.
     */
    public static func <= (lhs: Now, rhs: Now) -> Bool {
        lhs.rawValue <= rhs.rawValue
    }

    /**
        Compares two `Now` instances.
        - Parameters:
            - lhs: The first `Now` instance.
            - rhs: The second `Now` instance.
        - Returns: `true` if the first `Now` instance is greater than the second `Now` instance.
     */
    public static func > (lhs: Now, rhs: Now) -> Bool {
        lhs.rawValue > rhs.rawValue
    }

    /**
        Compares two `Now` instances.
        - Parameters:
            - lhs: The first `Now` instance.
            - rhs: The second `Now` instance.
        - Returns: `true` if the first `Now` instance is greater than or equal to the second `Now` instance.
     */
    public static func >= (lhs: Now, rhs: Now) -> Bool {
        lhs.rawValue >= rhs.rawValue
    }

    /**
        Compares two `Now` instances.
        - Parameters:
            - lhs: The first `Now` instance.
            - rhs: The second `Now` instance.
        - Returns: `true` if the first `Now` instance is equal to the second `Now` instance.
     */
    public static func == (lhs: Now, rhs: Now) -> Bool {
        lhs.rawValue == rhs.rawValue
    }

    /**
        Compares two `Now` instances.
        - Parameters:
            - lhs: The first `Now` instance.
            - rhs: The second `Now` instance.
        - Returns: `true` if the first `Now` instance is not equal to the second `Now` instance.
     */
    public static func != (lhs: Now, rhs: Now) -> Bool {
        lhs.rawValue != rhs.rawValue
    }

    /**
        Subtract a `Now` instance from another `Now` instance.
        - Parameters:
            - lhs: The first `Now` instance.
            - rhs: The second `Now` instance.
        - Returns: The difference between the two `Now` instances.
     */
    public static func - (lhs: Now, rhs: Now) -> TimeInterval {
        TimeInterval(nanoseconds: Double(lhs.rawValue - rhs.rawValue))
    }

    /**
        Add a `Now` instance to another `Now` instance.
        - Parameters:
            - lhs: The first `Now` instance.
            - rhs: The second `Now` instance.
        - Returns: The sum of the two `Now` instances.
     */
    public static func + (lhs: Now, rhs: Now) -> TimeInterval {
        TimeInterval(nanoseconds: Double(lhs.rawValue + rhs.rawValue))
    }
}