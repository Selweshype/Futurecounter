import SwiftUI

struct ContentView: View {
    @StateObject private var vm = TimeViewModel()

    private static let timeFormatter: DateFormatter = {
        let f = DateFormatter()
        f.dateFormat = "HH:mm"
        return f
    }()

    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()

            VStack(spacing: 0) {
                Spacer()

                // Current time
                Text("CURRENT TIME")
                    .font(.system(.subheadline, design: .default).weight(.regular))
                    .foregroundStyle(Color(white: 0.5))
                    .tracking(3)

                Text(Self.timeFormatter.string(from: vm.currentTime))
                    .font(.system(size: 72, weight: .thin).monospacedDigit())
                    .foregroundStyle(.white)
                    .padding(.top, 8)

                Spacer().frame(height: 52)

                // Hours picker
                Text("IN HOW MANY HOURS?")
                    .font(.system(.subheadline, design: .default).weight(.regular))
                    .foregroundStyle(Color(white: 0.5))
                    .tracking(3)

                Picker("Hours", selection: $vm.hoursToAdd) {
                    ForEach(1..<24) { hour in
                        Text("\(hour)")
                            .font(.system(size: 40, weight: .light).monospacedDigit())
                            .foregroundStyle(.white)
                            .tag(hour)
                    }
                }
                .pickerStyle(.wheel)
                .frame(height: 160)
                .accessibilityLabel("Number of hours to add")

                Spacer().frame(height: 52)

                // Result
                Text("IT WILL BE")
                    .font(.system(.subheadline, design: .default).weight(.regular))
                    .foregroundStyle(Color(white: 0.5))
                    .tracking(3)

                Text(Self.timeFormatter.string(from: vm.futureTime))
                    .font(.system(size: 96, weight: .thin).monospacedDigit())
                    .foregroundStyle(.orange)
                    .padding(.top, 8)
                    .accessibilityLabel("It will be \(Self.timeFormatter.string(from: vm.futureTime))")

                Spacer()
            }
            .padding(.horizontal, 24)
        }
        .colorScheme(.dark)
        .preferredColorScheme(.dark)
    }
}

#Preview {
    ContentView()
}
