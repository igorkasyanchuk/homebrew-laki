# Laki for Homebrew

[Laki](https://github.com/igorkasyanchuk/laki-releases) runs coding agents side by side, each task in its own git
worktree. A Mac app, signed and notarized.

```bash
brew install --cask igorkasyanchuk/laki/laki    # Laki.app in /Applications
brew upgrade --cask laki                        # a new version (quit Laki first)
brew uninstall --cask laki                      # --zap also removes its settings; ~/.laki stays
```

The cask here follows every release. `~/.laki` holds your workspaces' worktrees and Laki's state, so no uninstall
removes it.
