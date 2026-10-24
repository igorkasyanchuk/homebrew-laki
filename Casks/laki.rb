cask "laki" do
  version "0.27.0"
  sha256 "0e20b11bb87ff7df6135f93d360f36d55a0be490101b6e8b92fec75e3723a495"

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
