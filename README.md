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

## macOS signing and notarization

The current PromptHub macOS packages are signed with a Developer ID certificate and notarized by Apple. Homebrew verifies the release-specific SHA256 values before installation.

If macOS cannot verify a download, download the current package again from the official GitHub Release or reinstall through this tap.
