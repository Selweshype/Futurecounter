# FutureCounter

An iOS app for iPhone and iPad that answers: **"If something takes X hours, what time will that be?"**

Designed for people with dyscalculia. Select the number of hours on the wheel and instantly see the result in large orange digits — no mental arithmetic needed.

## Setup

### Requirements
- macOS with Xcode 15 or later
- iOS 16+ device or simulator
- [XcodeGen](https://github.com/yonaskolb/XcodeGen)

### Generate the Xcode project

```bash
brew install xcodegen
xcodegen generate
```

Then open `FutureCounter.xcodeproj` in Xcode, set your Development Team under **Signing & Capabilities**, and build.

## Design

- Pure black background, white monospaced digits — mirrors the iOS Clock app
- Current time displayed at top in 24-hour format (HH:mm)
- Wheel picker to select 1–23 hours
- Result shown in large orange digits at the bottom
- Universal app: iPhone and iPad, all orientations
