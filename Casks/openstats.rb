cask "openstats" do
  version "0.3.0"
  sha256 "9ef1ab19e6ae6184e416cef34425f4296ab95342ce9aa1285e880e06b09097bf"

  url "https://getopenstats.com/download/OpenStats-#{version}.dmg"
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
