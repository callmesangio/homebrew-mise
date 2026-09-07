# callmesangio/mise

A Homebrew tap that installs [mise][mise] from its **official release
binaries**, packaged as a cask. macOS only, on both Apple silicon and
Intel.

## Why this tap exists

The mise docs [discourage the Homebrew formula][homebrew-advice]:

> The Homebrew formula is convenient, but it is not the preferred
> installation method. Homebrew builds mise separately from the official,
> more optimized release binaries. For the best performance and fastest
> access to new releases, use the [`mise.run`][mise-run] installer instead.

That leaves you choosing between upstream's advice and keeping mise under
your package manager. This tap removes the choice: the cask pulls the
prebuilt macOS binary straight from the [GitHub release][releases]. Those
are the same artifacts `mise.run` installs from, just the `.tar.xz` rather
than its `.tar.gz`. You get the official binary *and* `brew upgrade`,
`brew uninstall`, and `Brewfile` support.

Shell completions and the `mise` manpage are installed along with the
binary.

## Install

```sh
brew install --cask callmesangio/mise/callmesangio-mise
```

Or tap first, then install:

```sh
brew tap callmesangio/mise
brew install --cask callmesangio-mise
```

In a `Brewfile`:

```ruby
tap "callmesangio/mise"
cask "callmesangio-mise"
```

> [!IMPORTANT]
> This conflicts with the homebrew-core formula, since both provide
> `bin/mise`. If you already have it, remove it first:
>
> ```sh
> brew uninstall mise
> ```

## Upgrade

```sh
brew upgrade --cask callmesangio-mise
```

New mise releases are picked up automatically: a scheduled workflow runs
`brew livecheck` every six hours and commits the version and checksum bump.

## Uninstall

```sh
brew uninstall --cask callmesangio-mise
brew untap callmesangio/mise
```

Note that this removes the mise binary only. Tools, plugins, and cached
downloads under `~/.local/share/mise` are left in place; delete that
directory too for a full cleanup.

[mise]: https://mise.jdx.dev/
[homebrew-advice]: https://mise.jdx.dev/installing-mise.html#homebrew
[mise-run]: https://mise.jdx.dev/installing-mise.html#mise-run
[releases]: https://github.com/jdx/mise/releases
