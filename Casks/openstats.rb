cask "openstats" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "0.5.0"
  sha256 arm:   "5538c4a88373871e90c0f85d5908e12548961c733926dfd61b377b76f1cd46de",
         intel: "c0aae2b8df77a165dd72426581ff252aa17aa4cf4f76cbcc122b23983be3e35c"

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
