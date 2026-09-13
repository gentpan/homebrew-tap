cask "openstats" do
  version "0.2.0"
  sha256 "8459f45e038c6ae614690a8b8e7279bb440f780bfafa2c764a47227cd1e4ddfd"

  url "https://getopenstats.com/download/OpenStats-#{version}.dmg"
  name "OpenStats"
  desc "Menu bar system monitor with fan control, keep-awake and cleanup"
  homepage "https://getopenstats.com"

  depends_on macos: ">= :sonoma"

  app "OpenStats.app"

  zap trash: [
    "~/Library/Logs/OpenStats",
    "~/Library/Preferences/com.openstats.app.plist",
  ]
end
