// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "FutureCounter",
    platforms: [
        .iOS("16.0")
    ],
    products: [
        .iOSApplication(
            name: "FutureCounter",
            targets: ["FutureCounter"],
            bundleIdentifier: "com.yourname.FutureCounter",
            teamIdentifier: "",
            displayVersion: "1.0",
            bundleVersion: "1",
            iconAssetName: "AppIcon",
            accentColorAssetName: "AccentColor",
            supportedDeviceFamilies: [
                .pad,
                .phone
            ],
            supportedInterfaceOrientations: [
                .portrait,
                .landscapeRight,
                .landscapeLeft,
                .portraitUpsideDown(.when(deviceFamilies: [.pad]))
            ]
        )
    ],
    targets: [
        .executableTarget(
            name: "FutureCounter",
            path: "Sources"
        )
    ]
)
