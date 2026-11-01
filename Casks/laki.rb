cask "laki" do
  version "0.39.0"
  sha256 "726c140ffb216c47eef85bd936a9f78854b4e3550046adf0005f163846fc347c"

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
