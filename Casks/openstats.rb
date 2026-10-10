cask "openstats" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "0.6.4"
  sha256 arm:   "d155128f1bba329d4ec959c5bdd6989db7d860890c235f86d5d21e124aae6cbc",
         intel: "7fa99043e64bcbcd8aee5613426451b6c0955b3513764c65503d5eefec6af604"

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
