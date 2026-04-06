import XCTest
@testable import FutureCounter

final class FutureCounterTests: XCTestCase {

    func testFutureTimeIsCorrectNumberOfHoursAhead() {
        let vm = TimeViewModel()
        let base = Date(timeIntervalSinceReferenceDate: 0)
        vm.currentTime = base
        vm.hoursToAdd = 9

        let diff = vm.futureTime.timeIntervalSince(base)
        XCTAssertEqual(diff, 9 * 3600, accuracy: 1.0)
    }

    func testFutureTimeUpdatesWithDifferentHours() {
        let vm = TimeViewModel()
        let base = Date(timeIntervalSinceReferenceDate: 0)
        vm.currentTime = base

        for hours in 1..<24 {
            vm.hoursToAdd = hours
            let diff = vm.futureTime.timeIntervalSince(base)
            XCTAssertEqual(diff, Double(hours) * 3600, accuracy: 1.0)
        }
    }

    func testFutureTimeCrossesMidnight() {
        let vm = TimeViewModel()
        // Set current time to 23:00
        var components = DateComponents()
        components.year = 2026
        components.month = 1
        components.day = 1
        components.hour = 23
        components.minute = 0
        let calendar = Calendar.current
        vm.currentTime = calendar.date(from: components)!
        vm.hoursToAdd = 3

        let result = calendar.dateComponents([.hour], from: vm.futureTime)
        XCTAssertEqual(result.hour, 2) // 23 + 3 = 02:00 next day
    }
}
