cask "openstats" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "0.3.1"
  sha256 arm:   "b0b6af2d9706e0d75e66c21dbc581bd59e2c393c567be21aa6394a6a613938f8",
         intel: "a2b783985631abffd2ffdd8dcaa0b804bd53eb35756b57dbf1c500bb806aaeb8"

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
