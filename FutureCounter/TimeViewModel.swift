import SwiftUI
import Combine

final class TimeViewModel: ObservableObject {
    @Published var currentTime: Date = .now
    @Published var hoursToAdd: Int = 1

    var futureTime: Date {
        Calendar.current.date(byAdding: .hour, value: hoursToAdd, to: currentTime) ?? currentTime
    }

    private var cancellable: AnyCancellable?

    init() {
        cancellable = Timer.publish(every: 60, tolerance: 1, on: .main, in: .common)
            .autoconnect()
            .sink { [weak self] date in
                self?.currentTime = date
            }
    }
}
