cask "laki" do
  version "0.28.0"
  sha256 "8520f82d239f2998b97a1ec02ae6b5f6881194b0ccd3b1ac1007c2ffa2a9f747"

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
