# FutureCounter

An app that answers: **"If something takes X hours, what time will that be?"**

Designed for people with dyscalculia. Select the number of hours on the wheel and instantly see the result in large orange digits — no mental arithmetic needed.

---

## iPhone (no Mac, no App Store needed) — Web App

The web app works on any iPhone or Android, installs on your home screen, and works offline.

1. Open **Safari** on your iPhone
2. Go to the GitHub Pages URL (enable it first — see below)
3. Tap the **Share** button → **Add to Home Screen**
4. Done — it opens like a native app, full screen, black background

### Enable GitHub Pages
In the GitHub repo → **Settings** → **Pages** → Source: `Deploy from a branch` → Branch: `main` / `docs` folder → Save.

---

## iPad (no Mac needed) — Swift Playgrounds

1. Install **[Swift Playgrounds](https://apps.apple.com/app/swift-playgrounds/id908519492)** from the App Store (free, iPad only)
2. Install **[Working Copy](https://apps.apple.com/app/working-copy-git-client/id896694807)** from the App Store (free tier)
3. In Working Copy: clone this repository
4. Tap the `FutureCounter.swiftpm` folder → **Open in Swift Playgrounds**
5. Tap the **Run** button (▶) — the app launches directly on your iPad

---

## Mac — Xcode

```bash
brew install xcodegen
xcodegen generate
open FutureCounter.xcodeproj
```

Set your Development Team under **Signing & Capabilities**, then **Cmd+R** to run.

---

## Design

- Pure black background, white monospaced digits — mirrors the iOS Clock app
- Current time in 24-hour format (HH:mm), no seconds
- Wheel picker to select 1–23 hours
- Result in large orange digits at the bottom
