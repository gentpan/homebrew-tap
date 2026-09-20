cask "openstats" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "0.6.2"
  sha256 arm:   "79f04200a4b25f7a65737a7c5dd02f459dffe097982834632b6c447157cef82b",
         intel: "9a04205456a08793378113cf781c9fd545cc5cf2d44fcbb895dbf464a4856830"

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
