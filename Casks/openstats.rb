cask "openstats" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "0.6.0"
  sha256 arm:   "15064d19c6901619df8795a52d6d797dd58966585424ad7400445f4c6f117044",
         intel: "c5b178b634271a4b8d894cb758b0fe8d56a1c12ba31a111d4891497dc5662b92"

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
