cask "laki" do
  version "0.54.0"
  sha256 "902c0fc1b61c984289d298b95c6ef7b982b86534879f5eb66650b034843b1372"

  url "https://github.com/igorkasyanchuk/laki-releases/releases/download/v#{version}/Laki-#{version}-arm64.dmg"
  name "Laki"
  desc "Runs coding agents side by side, each task in its own git worktree"
  homepage "https://laki.sh"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Laki.app"

  uninstall quit: "dev.laki.app"

  zap trash: [
    "~/Library/Application Support/Laki",
    "~/Library/Preferences/dev.laki.app.plist",
    "~/Library/Saved Application State/dev.laki.app.savedState",
  ]
end
