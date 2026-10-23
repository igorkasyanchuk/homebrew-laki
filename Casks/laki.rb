cask "laki" do
  version "0.25.0"
  sha256 "e70e6e9eb20a35e40e1040fbc53e35120af1ed7194d94ddbccc5189bdabb7091"

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
