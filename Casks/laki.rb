cask "laki" do
  version "0.68.0"
  sha256 "b4f03ee8f25502889f134ab5cd5f48d29ba0ec80458abac04402026829e72262"

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
