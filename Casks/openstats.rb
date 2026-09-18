cask "openstats" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "0.6.1"
  sha256 arm:   "16c2bba8054caf70f6ff9cda24d0b8df5ef9dfc02e38319ba99ef7cc8f5af364",
         intel: "2698b5ca33907c14a7174d70a9fb5af7bacacd7518513ce72a4aa7a5d45569e4"

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
