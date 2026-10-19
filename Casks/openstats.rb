cask "openstats" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "0.7.2"
  sha256 arm:   "ed60d30d96002883ea435e5621dc8d21474de4c0a881944b69e11e0ef5c49778",
         intel: "fc0fcf899a64166d534c7ae9e12ee80153eebf70eb932c89398e63f24828f1ee"

  url "https://getopenstats.com/download/OpenStats-#{version}-#{arch}.dmg"
  name "OpenStats"
  desc "Menu bar system monitor with fan control, keep-awake and cleanup"
  homepage "https://getopenstats.com/"

  # 新版本以官网的在线升级清单为准
  livecheck do
    url "https://getopenstats.com/download/appcast.json"
    strategy :json do |json|
      json["version"]
    end
  end

  # 应用内置在线升级，brew upgrade 默认不再重复升级
  auto_updates true
  depends_on macos: :sonoma

  app "OpenStats.app"

  # 卸载前退出应用，并停掉可选的特权辅助工具（没装过就跳过）
  uninstall launchctl: "com.openstats.helper",
            quit:      "com.openstats.app"

  zap trash: [
    "~/Library/Application Support/OpenStats",
    "~/Library/Caches/com.openstats.app",
    "~/Library/Containers/com.openstats.app.widget",
    "~/Library/Logs/OpenStats",
    "~/Library/Preferences/com.openstats.app.plist",
  ]
end
