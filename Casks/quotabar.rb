cask "quotabar" do
  version "0.5.11"
  sha256 "71f5968b81f8b75bca092d832015f34789402150289f1543cd0b1416bf2d2789"

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
