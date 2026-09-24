cask "quotabar" do
  version "0.5.19"
  sha256 "edf77e26621698db1e94f95af90fd4725d7bd7c90586d90bc6db0847021c245f"

  url "https://github.com/QuotaBar/QuotaBar/releases/download/v#{version}/QuotaBar-#{version}.zip"
  name "QuotaBar"
  desc "Menu-bar meter for AI coding provider quotas"
  homepage "https://github.com/QuotaBar/QuotaBar"

  depends_on macos: :sonoma

  app "QuotaBar.app"

  # Preferences and the trend log. The manually entered provider credentials
  # live in the login keychain and are deliberately left alone — zap cannot
  # remove keychain items, and silently deleting a user's API keys would be
  # worse than leaving them.
  zap trash: [
    "~/.config/quotabar",
  ]
end
