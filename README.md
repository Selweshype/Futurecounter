# FutureCounter

An iOS app for iPhone and iPad that answers: **"If something takes X hours, what time will that be?"**

Designed for people with dyscalculia. Select the number of hours on the wheel and instantly see the result in large orange digits — no mental arithmetic needed.

## Run on iPad (no Mac needed)

1. Install **[Swift Playgrounds](https://apps.apple.com/app/swift-playgrounds/id908519492)** from the App Store (free)
2. Install **[Working Copy](https://apps.apple.com/app/working-copy-git-client/id896694807)** from the App Store (free tier)
3. In Working Copy: clone this repository
4. Tap the `FutureCounter.swiftpm` folder → **Open in Swift Playgrounds**
5. Tap the **Run** button (▶) — the app launches directly on your iPad

## Run on iPhone / Mac (with Xcode)

### Requirements
- macOS with Xcode 15 or later
- iOS 16+ device or simulator
- [XcodeGen](https://github.com/yonaskolb/XcodeGen)

```bash
brew install xcodegen
xcodegen generate
open FutureCounter.xcodeproj
```

Set your Development Team under **Signing & Capabilities**, then **Cmd+R** to run.

## Design

- Pure black background, white monospaced digits — mirrors the iOS Clock app
- Current time displayed at top in 24-hour format (HH:mm)
- Wheel picker to select 1–23 hours
- Result shown in large orange digits at the bottom
- Universal app: iPhone and iPad, all orientations
