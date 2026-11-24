# FigLock Homebrew tap

Homebrew tap for the [FigLock](https://figlock.com) command line, a headless, agent-aware password and secrets
manager. One encrypted vault for passwords, API tokens and secrets that lives in storage you already own, and AI
agents can use a secret after you approve it, without seeing it.

## Install

```sh
brew install figlock/tap/figlock
figlock --version
```

The formula installs the signed and notarized build for macOS (Apple silicon and Intel) and static builds for
Linux (x86_64 and ARM64). Nothing is compiled on your machine.

## Update and remove

```sh
brew upgrade figlock
brew uninstall figlock
```

Removing the program leaves your vault and settings alone. The vault is in the folder or Drive you chose, so you
can install again at any time and carry on.

## What is here

- `Formula/figlock.rb`: the formula. The release workflow in
  [figlock/figlock](https://github.com/figlock/figlock) updates it with the new version and checksums for every
  release, so please do not edit it by hand.

## The Mac app

This tap installs the command line only. The Mac app is a separate signed download and updates itself. Get it
from [figlock.com/install](https://figlock.com/install/).

## Help and issues

- Install guide and other ways to install: [figlock.com/install](https://figlock.com/install/)
- Bugs and questions: [figlock/figlock issues](https://github.com/figlock/figlock/issues) and
  [discussions](https://github.com/figlock/figlock/discussions)
- Security reports: [security policy](https://github.com/figlock/figlock/security/policy)

FigLock is an early release and has had no outside security audit yet, so please do not store real secrets in it
until the audit is done and published.

Licensed under either [MIT](https://github.com/figlock/figlock/blob/main/LICENSE-MIT) or
[Apache-2.0](https://github.com/figlock/figlock/blob/main/LICENSE-APACHE), at your option.
