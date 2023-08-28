# homebrew-albertyw

[![Build Status](https://drone.albertyw.com/api/badges/albertyw/homebrew-albertyw/status.svg)](https://drone.albertyw.com/albertyw/homebrew-albertyw)

Tap for some of my packages

This currently contains a homebrew formula for:
- [git-browse](https://github.com/albertyw/git-browse)
- [git-reviewers](https://github.com/albertyw/git-reviewers)
- [req-update](https://github.com/albertyw/req-update)


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


## Releases

To update formula, when a new release is made:
1.  Edit the formula's `url` field to point to the new release version
2.  Run `curl -L $url | sha256sum` to get the shasum for the package and copy it into the formula's `sha256` field
