# Homebrew Tap for PromptHub

This is the official [Homebrew](https://brew.sh/) tap for [PromptHub](https://github.com/legeling/PromptHub) — a cross-platform prompt management tool for AI workflows.

## Installation

```bash
brew tap legeling/tap
brew install --cask prompthub
```

## Update

```bash
brew upgrade --cask prompthub
```

## Uninstall

```bash
brew uninstall --cask prompthub
brew untap legeling/tap
```

## ⚠️ macOS Security Notice

PromptHub is not currently code-signed with an Apple Developer certificate. On first launch, macOS may block the app. To resolve this, run:

```bash
sudo xattr -rd com.apple.quarantine /Applications/PromptHub.app
```

Or go to **System Settings > Privacy & Security** and click "Open Anyway".
