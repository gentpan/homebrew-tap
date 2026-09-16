cask "openstats" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "0.4.0"
  sha256 arm:   "bdc7c35940985147a3e549acf835b4d8b0fdc99335761129c291cce5ce3d85c9",
         intel: "b1c8e8cd72500220441c56df6b07c415f5c2428b8e6586810ff9d60d109ced6d"

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
