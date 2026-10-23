cask "laki" do
  version "0.26.0"
  sha256 "30a17a80df6666fb604bca31fe5de0c4c44cdb6e6fb9155129426dce195cc224"

  url "https://github.com/igorkasyanchuk/laki-releases/releases/download/v#{version}/Laki-#{version}-arm64.dmg"
  name "Laki"
  desc "Runs coding agents side by side, each task in its own git worktree"
  homepage "https://github.com/igorkasyanchuk/laki-releases"

  depends_on arch: :arm64
  depends_on :macos

  app "Laki.app"

  zap trash: [
    "~/Library/Application Support/Laki",
    "~/Library/Preferences/dev.laki.app.plist",
    "~/Library/Saved Application State/dev.laki.app.savedState",
  ]
end
