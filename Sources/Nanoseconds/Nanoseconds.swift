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
    public var microsecond: Double { return self / 1000 } 
    public var milliseconds: Double { return self / 1e+6 }
    public var seconds: Double { return self / 1e+9 } 
    public var minutes: Double { return self / 6e+10 } 
    public var hours: Double { return self / 3.6e+12 } 
}
