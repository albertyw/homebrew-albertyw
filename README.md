# homebrew-albertyw

[![Build Status](https://drone.albertyw.com/api/badges/albertyw/homebrew-albertyw/status.svg)](https://drone.albertyw.com/albertyw/homebrew-albertyw)

Tap for some of my packages

This currently contains a homebrew formula for
[git-browse](https://github.com/albertyw/git-browse) and
[git-reviewers](https://github.com/albertyw/git-reviewers).


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

## Releases

To update formula, when a new release is made
1.  Edit the formula's `url` field to point to the new release version
2.  Run `brew fetch ./git-browse.rb --build-from-source` (or `./git-reviewers.rb`)
3.  Get the computed SHA256 and copy it into the formula's `sha256` field
