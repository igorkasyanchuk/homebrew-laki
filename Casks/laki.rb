cask "laki" do
  version "0.34.0"
  sha256 "07c882e1c068f6a93e82fb6344c5ee1c60d6b0e378f6447f8f6e51469075a704"

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
