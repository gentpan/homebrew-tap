cask "openstats" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "0.3.2"
  sha256 arm:   "02d8ffd76f330108396b11786b2aa875b839c4dd6c6422c744d7e0cd7f1ebdf4",
         intel: "ca914ca0919cad6792a5bdcf1354c871d0510660db2184b3eb2bff8d91905a9c"

  url "https://getopenstats.com/download/OpenStats-#{version}-#{arch}.dmg"
  name "OpenStats"
  desc "Menu bar system monitor with fan control, keep-awake and cleanup"
  homepage "https://getopenstats.com"

  # 应用内置在线升级，brew upgrade 默认不再重复升级
  auto_updates true
  depends_on macos: :sonoma

  app "OpenStats.app"

  zap trash: [
    "~/Library/Logs/OpenStats",
    "~/Library/Preferences/com.openstats.app.plist",
  ]
end
