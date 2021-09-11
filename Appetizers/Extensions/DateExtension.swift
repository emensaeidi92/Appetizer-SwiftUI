import Foundation

extension Date {
    var eighteenYears:Date {
        return Calendar.current.date(byAdding: .year, value: -18, to: Date())!
    }

    var oneHundredYears: Date {
        return Calendar.current.date(byAdding: .year, value: -100, to: Date())!
    }
}
