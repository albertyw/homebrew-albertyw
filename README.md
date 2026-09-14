# homebrew-albertyw

[![Build Status](https://drone.albertyw.com/api/badges/albertyw/homebrew-albertyw/status.svg)](https://drone.albertyw.com/albertyw/homebrew-albertyw)

Tap for some of my packages

This currently contains a homebrew formula for:
- [git-browse](https://github.com/albertyw/git-browse)
- [git-reviewers](https://github.com/albertyw/git-reviewers)
- [req-update](https://github.com/albertyw/req-update)


## Installation

Homebrew requires non-official taps to be trusted before it will load their
formulae.  Installing a formula by its fully qualified name (as shown below)
trusts only that formula.  To trust the whole tap so formulae can be installed
by their short names:

```bash
brew trust albertyw/albertyw
brew tap albertyw/albertyw
brew install git-browse
```


## git-browse

Open repositories, directories, and files in the browser.

```bash
brew install albertyw/albertyw/git-browse
```


## git-reviewers

Intelligently find code reviewers.

```bash
brew install albertyw/albertyw/git-reviewers
```


## req-update

Automatically update your project's dependencies

```bash
brew install albertyw/albertyw/req-update
```


## Development

A tap from a local checkout is trusted by its path rather than its name, so
trust the path before tapping it:

```bash
brew trust "$(pwd)"
brew tap albertyw/albertyw "$(pwd)"
brew install albertyw/albertyw/git-browse --build-from-source
```


## Releases

To update formula, when a new release is made:
1.  Edit the formula's `url` field to point to the new release version
2.  Run `curl -L $url | sha256sum` to get the shasum for the package and copy it into the formula's `sha256` field
