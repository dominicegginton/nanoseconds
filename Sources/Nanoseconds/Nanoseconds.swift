import Foundation

public struct Nanoseconds {
    var rawValue: Double

    public init() {
        self.rawValue = Double(DispatchTime.now().rawValue)
    }
}

extension Nanoseconds: Comparable {
    public static func < (lhs: Nanoseconds, rhs: Nanoseconds) -> Bool {
        lhs.rawValue < rhs.rawValue
    }
    public static func - (lhs: Nanoseconds, rhs: Nanoseconds) -> TimeInterval {
        TimeInterval(lhs.rawValue - rhs.rawValue)
    }

    public static func + (lhs: Nanoseconds, rhs: Nanoseconds) -> TimeInterval {
        TimeInterval(lhs.rawValue + rhs.rawValue)
    }
}

extension TimeInterval {
    public init (nanoseconds: Double) { self = nanoseconds }
    public init (microseconds: Double) { self = microseconds * 1000 }
    public init (milliseconds: Double) { self = milliseconds * 1e+6 }
    public init (seconds: Double) { self = seconds * 1e+9 }
    public init (minutes: Double) { self = minutes * 6e+10 }
    public init (hours: Double) { self = hours * 3.6e+12 }
    public var microseconds: Double { return self / 1000 }
    public var milliseconds: Double { return self / 1e+6 }
    public var seconds: Double { return self / 1e+9 }
    public var minutes: Double { return self / 6e+10 }
    public var hours: Double { return self / 3.6e+12 }
}
