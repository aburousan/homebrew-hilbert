# Hilbert Homebrew tap

A Homebrew tap for [Hilbert](https://github.com/aburousan/hilbert-editor), an
offline desktop editor for Typst aimed at maths and physics writing.

## Install

```sh
brew install --cask aburousan/hilbert/hilbert
```

Or tap first, then install:

```sh
brew tap aburousan/hilbert
brew install --cask hilbert
```

The build is not yet notarised by Apple, so macOS Gatekeeper may refuse to open it
on the first launch. Either add `--no-quarantine` when installing:

```sh
brew install --cask --no-quarantine aburousan/hilbert/hilbert
```

or open it once from Finder with right-click then Open, or allow it under
System Settings, Privacy & Security.

## Update

```sh
brew upgrade --cask hilbert
```
