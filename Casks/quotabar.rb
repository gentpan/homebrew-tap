cask "quotabar" do
  version "0.4.0"
  sha256 "c93b0105abe2f267fa87ed6f751c5f9a0dd787357df34d9645ef7342a04f1f3c"

  url "https://github.com/gentpan/quotabar/releases/download/v#{version}/QuotaBar-#{version}.zip"
  name "QuotaBar"
  desc "Menu-bar meter for AI coding provider quotas"
  homepage "https://github.com/gentpan/quotabar"

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
